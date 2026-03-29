#!/usr/bin/env python3

from __future__ import annotations

import json
import re
from pathlib import Path

from export_tip_review import (
    DB_PATH,
    ROOT,
    decode_lua_string,
    extract_tip_maps,
    find_matching_brace,
    parse_name_block,
    parse_npc_groups,
    parse_npc_ids,
    parse_npc_names,
)


OUTPUT_PATH = ROOT / "docs" / "NORMALIZED_CONTENT_MODEL.json"
REWRITE_OUTPUT_PATH = ROOT / "docs_rewrite" / "NORMALIZED_CONTENT_MODEL.json"
LUA_OUTPUT_PATH = ROOT / "Tothys-Dungeon-Tools-TBC" / "Tothys-Database.lua"
CATALOG_MARKER = "addon.contentCatalog = addon.contentCatalog or {"
INSTANCE_CONTENT_MARKER = "addon.instanceContent = addon.instanceContent or {}"
TIPS_EN_MARKER = "tipsMap_enUS = {"

EXPANSION_RE = re.compile(r"(?m)^\t(?P<key>[a-z0-9_]+)\s*=\s*\{")
INSTANCE_RE = re.compile(r"(?m)^\t\t\t(?P<key>[a-z0-9_]+)\s*=\s*\{")
TIP_ENTRY_RE = re.compile(
    r'id\s*=\s*"(?P<id>[^"]+)"\s*,\s*type\s*=\s*"(?P<type>[^"]+)"\s*,\s*weight\s*=\s*(?P<weight>\d+)\s*,\s*text\s*=\s*\{\s*enUS\s*=\s*"(?P<en>(?:[^"\\]|\\.)*)"\s*,\s*deDE\s*=\s*"(?P<de>(?:[^"\\]|\\.)*)"\s*,?\s*\}',
    re.S,
)
DETAIL_RE = re.compile(
    r'(?P<field>travel|attunement|notes|lore)\s*=\s*\{\s*enUS\s*=\s*"(?P<en>(?:[^"\\]|\\.)*)"\s*,\s*deDE\s*=\s*"(?P<de>(?:[^"\\]|\\.)*)"\s*,?\s*\}',
    re.S,
)


def parse_expansions_and_instances(db_text: str) -> tuple[dict, dict, dict]:
    catalog_start = db_text.find(CATALOG_MARKER)
    tips_start = db_text.find(INSTANCE_CONTENT_MARKER, catalog_start)
    catalog_text = db_text[catalog_start:tips_start]

    expansions: dict[str, dict] = {}
    instances: dict[str, dict] = {}
    instance_npcs: dict[str, dict[str, list[int]]] = {}

    npc_groups = parse_npc_groups(db_text)

    for exp_match in EXPANSION_RE.finditer(catalog_text):
        expansion_key = exp_match.group("key")
        brace_start = catalog_text.find("{", exp_match.start())
        brace_end = find_matching_brace(catalog_text, brace_start)
        expansion_text = catalog_text[exp_match.start():brace_end]

        order_match = re.search(r"order\s*=\s*(\d+)", expansion_text)
        name_en, name_de = parse_name_block(expansion_text)
        expansions[expansion_key] = {
            "key": expansion_key,
            "order": int(order_match.group(1)) if order_match else 9999,
            "name": {
                "enUS": name_en,
                "deDE": name_de,
            },
        }

        instances_match = re.search(r"instances\s*=\s*\{(?P<body>.*)\n\t\t\},", expansion_text, re.S)
        if not instances_match:
            continue
        instances_text = instances_match.group("body")

        for inst_match in INSTANCE_RE.finditer(instances_text):
            instance_key = inst_match.group("key")
            inst_brace_start = instances_text.find("{", inst_match.start())
            inst_brace_end = find_matching_brace(instances_text, inst_brace_start)
            instance_text = instances_text[inst_match.start():inst_brace_end]

            inst_order_match = re.search(r"order\s*=\s*(\d+)", instance_text)
            inst_type_match = re.search(r'type\s*=\s*"([^"]+)"', instance_text)
            map_ids_match = re.search(r"mapIDs\s*=\s*\{(?P<body>.*?)\}", instance_text, re.S)
            npc_names = parse_npc_names(instance_text)
            npc_ids = parse_npc_ids(instance_text)
            inst_name_en, inst_name_de = parse_name_block(instance_text)

            instances[instance_key] = {
                "key": instance_key,
                "expansion": expansion_key,
                "order": int(inst_order_match.group(1)) if inst_order_match else 9999,
                "type": inst_type_match.group(1) if inst_type_match else "",
                "mapIDs": [int(v) for v in re.findall(r"\b\d+\b", map_ids_match.group("body"))] if map_ids_match else [],
                "name": {
                    "enUS": inst_name_en,
                    "deDE": inst_name_de,
                },
            }
            bosses: list[int] = []
            others: list[int] = []
            for npc_id in npc_ids:
                if npc_groups.get((instance_key, npc_id)) == "boss":
                    bosses.append(npc_id)
                else:
                    others.append(npc_id)
            instance_npcs[instance_key] = {
                "bosses": bosses,
                "others": others,
                "names": {
                    str(npc_id): {
                        "enUS": npc_names.get(npc_id, ("", ""))[0],
                        "deDE": npc_names.get(npc_id, ("", ""))[1],
                    }
                    for npc_id in npc_ids
                },
            }

    expansions = dict(sorted(expansions.items(), key=lambda item: item[1]["order"]))
    return expansions, instances, instance_npcs


def parse_instance_content(db_text: str) -> tuple[dict[str, dict], dict[str, dict]]:
    instance_start = db_text.find(INSTANCE_CONTENT_MARKER)
    tips_start = db_text.find(TIPS_EN_MARKER, instance_start)
    section = db_text[instance_start:tips_start]

    marker_re = re.compile(r"(?m)^addon\.instanceContent\.(?P<key>[a-z0-9_]+)\s*=\s*addon\.instanceContent\.(?P=key)\s+or\s+\{")
    instance_tips: dict[str, dict] = {}
    instance_details: dict[str, dict] = {}

    for match in marker_re.finditer(section):
        instance_key = match.group("key")
        brace_start = section.find("{", match.start())
        brace_end = find_matching_brace(section, brace_start)
        block_text = section[brace_start:brace_end]

        info_match = re.search(r"info\s*=\s*\{(?P<body>.*?)\n\t\},\n\tdetails", block_text, re.S)
        tips: dict[str, dict] = {}
        if info_match:
            for tip_match in TIP_ENTRY_RE.finditer(info_match.group("body")):
                legacy_id = tip_match.group("id")
                local_id = legacy_id.rsplit("_", 1)[-1] if "_" in legacy_id else legacy_id
                tips[local_id] = {
                    "id": local_id,
                    "legacy_id": legacy_id,
                    "type": tip_match.group("type"),
                    "weight": int(tip_match.group("weight")),
                    "text": {
                        "enUS": decode_lua_string(tip_match.group("en")),
                        "deDE": decode_lua_string(tip_match.group("de")),
                    },
                }
        instance_tips[instance_key] = tips

        details: dict[str, dict] = {}
        details_match = re.search(r"details\s*=\s*\{(?P<body>.*)\n\t\}\n\}", block_text, re.S)
        if details_match:
            for detail_match in DETAIL_RE.finditer(details_match.group("body")):
                details[detail_match.group("field")] = {
                    "enUS": decode_lua_string(detail_match.group("en")),
                    "deDE": decode_lua_string(detail_match.group("de")),
                }
        instance_details[instance_key] = details

    return instance_tips, instance_details


def build_npcs(instance_npcs: dict) -> dict[str, dict]:
    npcs: dict[str, dict] = {}
    for instance_key, info in instance_npcs.items():
        for npc_id_str, names in info["names"].items():
            entry = npcs.setdefault(
                npc_id_str,
                {
                    "id": int(npc_id_str),
                    "name": {
                        "enUS": names["enUS"],
                        "deDE": names["deDE"],
                    },
                    "instances": [],
                },
            )
            if instance_key not in entry["instances"]:
                entry["instances"].append(instance_key)
    return npcs


def build_tips(instance_npcs: dict, tips_en: dict, tips_de: dict) -> dict[str, dict]:
    result: dict[str, dict] = {}
    for instance_key, info in instance_npcs.items():
        npc_block: dict[str, dict] = {}
        for npc_id in info["bosses"] + info["others"]:
            en_entries = tips_en.get(npc_id, [])
            de_entries = tips_de.get(npc_id, [])
            if not en_entries or not de_entries:
                continue

            normalized_entries: dict[str, dict] = {}
            for index, (en_tip, de_tip) in enumerate(zip(en_entries, de_entries), start=1):
                legacy_id = en_tip.tip_id
                local_id = legacy_id.rsplit("_", 1)[-1] if "_" in legacy_id else f"{index:02d}"
                normalized_entries[local_id] = {
                    "id": local_id,
                    "legacy_id": legacy_id,
                    "legacy_npc_name": {
                        "enUS": info["names"][str(npc_id)]["enUS"],
                    },
                    "type": en_tip.tip_type,
                    "weight": en_tip.weight,
                    "text": {
                        "enUS": en_tip.text,
                        "deDE": de_tip.text,
                    },
                }
            npc_block[str(npc_id)] = normalized_entries
        result[instance_key] = npc_block
    return result


def build_payload() -> dict:
    db_text = DB_PATH.read_text(encoding="utf-8")
    expansions, instances, instance_npcs = parse_expansions_and_instances(db_text)
    tips_en, tips_de = extract_tip_maps(db_text)
    instance_tips, instance_details = parse_instance_content(db_text)
    npcs = build_npcs(instance_npcs)
    tips = build_tips(instance_npcs, tips_en, tips_de)

    return {
        "meta": {
            "source": str(DB_PATH.relative_to(ROOT)),
            "generated_from": "scripts/export_normalized_model.py",
            "notes": [
                "Generated migration target from current shipped DB.",
                "Top-level variable names are generic and locale-agnostic.",
                "Tip ids are local within instance/npc scope and retain legacy_id for reversibility.",
                "NPC combat tips retain the legacy English NPC name for translation and review work.",
            ],
        },
        "expansions": expansions,
        "instances": instances,
        "instanceNpcs": instance_npcs,
        "npcs": npcs,
        "tips": tips,
        "instanceTips": instance_tips,
        "instanceDetails": instance_details,
    }


def to_lua(value, indent: int = 0) -> str:
    pad = " " * indent
    next_pad = " " * (indent + 2)

    if value is None:
        return "nil"
    if value is True:
        return "true"
    if value is False:
        return "false"
    if isinstance(value, str):
        escaped = value.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n")
        return f'"{escaped}"'
    if isinstance(value, (int, float)):
        return str(value)
    if isinstance(value, list):
        if not value:
            return "{}"
        parts = ["{"]
        for item in value:
            parts.append(f"{next_pad}{to_lua(item, indent + 2)},")
        parts.append(f"{pad}}}")
        return "\n".join(parts)
    if isinstance(value, dict):
        if not value:
            return "{}"
        parts = ["{"]
        for key, item in value.items():
            if isinstance(key, int):
                lua_key = f"[{key}]"
            elif isinstance(key, str) and key.isidentifier():
                lua_key = key
            else:
                lua_key = f"[{to_lua(key)}]"
            parts.append(f"{next_pad}{lua_key} = {to_lua(item, indent + 2)},")
        parts.append(f"{pad}}}")
        return "\n".join(parts)
    raise TypeError(f"Unsupported value type: {type(value)!r}")


def write_lua_runtime(payload: dict) -> None:
    lua_table = to_lua(payload, 0)
    content = """--[[
Tothys Dungeon Tools TBC
Runtime database

This file is generated by scripts/export_normalized_model.py.
Do not edit it manually.
]]

local _, addon = ...

addon.db = %s
""" % lua_table
    LUA_OUTPUT_PATH.write_text(content, encoding="utf-8")


def main() -> int:
    payload = build_payload()
    OUTPUT_PATH.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    REWRITE_OUTPUT_PATH.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    write_lua_runtime(payload)
    print(f"Wrote normalized content model to {OUTPUT_PATH}")
    print(f"Wrote normalized content model to {REWRITE_OUTPUT_PATH}")
    print(f"Wrote normalized runtime database to {LUA_OUTPUT_PATH}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
