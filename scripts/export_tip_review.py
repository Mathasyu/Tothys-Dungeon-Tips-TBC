#!/usr/bin/env python3

from __future__ import annotations

import json
import re
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DB_PATH = ROOT / "Tothys-Dungeon-Tips-TBC" / "Tothys-Database.lua"
OUTPUT_PATH = ROOT / "docs" / "TIP_TRANSLATION_REVIEW.json"


@dataclass
class TipEntry:
    tip_id: str
    tip_type: str
    text: str
    weight: int


TIP_RE = re.compile(
    r'\{\s*"(?P<tip_id>[^"]*)"\s*,\s*"(?P<tip_type>[^"]*)"\s*,\s*"(?P<text>(?:[^"\\]|\\.)*)"\s*,\s*(?P<weight>-?\d+)\s*\}',
    re.S,
)
INSTANCE_START_RE = re.compile(r"(?m)^\t\t\t(?P<key>[a-z0-9_]+)\s*=\s*\{")
NPC_GROUP_INSTANCE_RE = re.compile(r"(?m)^ {4}(?P<key>[a-z0-9_]+)\s*=\s*\{")
TOP_ASSIGN_RE = re.compile(r"(?m)^tipsMap_(?P<locale>enUS|deDE)\[(?P<npc_id>\d+)\]\s*=\s*\{")
TOP_LEVEL_ENTRY_RE = re.compile(r"(?m)^\s*\[(?P<npc_id>\d+)\]\s*=\s*\{")


def decode_lua_string(value: str) -> str:
    return (
        value.replace("\\\\", "\\")
        .replace('\\"', '"')
        .replace("\\'", "'")
        .replace("\\n", "\n")
        .replace("\\t", "\t")
    )


def find_matching_brace(text: str, brace_start: int) -> int:
    depth = 0
    for pos in range(brace_start, len(text)):
        char = text[pos]
        if char == "{":
            depth += 1
        elif char == "}":
            depth -= 1
            if depth == 0:
                return pos + 1
    raise ValueError("Unmatched brace in Lua block")


def parse_tip_entries(table_text: str) -> list[TipEntry]:
    entries: list[TipEntry] = []
    for match in TIP_RE.finditer(table_text):
        entries.append(
            TipEntry(
                tip_id=match.group("tip_id"),
                tip_type=match.group("tip_type"),
                text=decode_lua_string(match.group("text")),
                weight=int(match.group("weight")),
            )
        )
    return entries


def extract_section(text: str, start_marker: str, end_marker: str) -> str:
    start = text.find(start_marker)
    if start == -1:
        raise ValueError(f"Marker not found: {start_marker}")
    end = text.find(end_marker, start)
    if end == -1:
        raise ValueError(f"Marker not found: {end_marker}")
    return text[start:end]


def extract_tip_maps(db_text: str) -> tuple[dict[int, list[TipEntry]], dict[int, list[TipEntry]]]:
    sections: dict[str, dict[int, list[TipEntry]]] = {"enUS": {}, "deDE": {}}

    en_section = extract_section(db_text, "tipsMap_enUS = {", "tipsMap_deDE = tipsMap_deDE or {}")
    for match in TOP_LEVEL_ENTRY_RE.finditer(en_section):
        npc_id = int(match.group("npc_id"))
        brace_start = en_section.find("{", match.start())
        brace_end = find_matching_brace(en_section, brace_start)
        table_text = en_section[brace_start:brace_end]
        sections["enUS"][npc_id] = parse_tip_entries(table_text)

    for match in TOP_ASSIGN_RE.finditer(db_text):
        locale = match.group("locale")
        npc_id = int(match.group("npc_id"))
        brace_start = db_text.find("{", match.start())
        brace_end = find_matching_brace(db_text, brace_start)
        table_text = db_text[brace_start:brace_end]
        sections[locale][npc_id] = parse_tip_entries(table_text)
    return sections["enUS"], sections["deDE"]


def parse_name_block(block_text: str) -> tuple[str, str]:
    match = re.search(
        r'name\s*=\s*\{\s*enUS\s*=\s*"(?P<en>(?:[^"\\]|\\.)*)"\s*,\s*deDE\s*=\s*"(?P<de>(?:[^"\\]|\\.)*)"\s*,?\s*\}',
        block_text,
        re.S,
    )
    if not match:
        return "", ""
    return decode_lua_string(match.group("en")), decode_lua_string(match.group("de"))


def parse_npc_names(block_text: str) -> dict[int, tuple[str, str]]:
    result: dict[int, tuple[str, str]] = {}
    match = re.search(r"npcNames\s*=\s*\{(?P<body>.*?)\n\t\t\t\t\},", block_text, re.S)
    if not match:
        return result
    body = match.group("body")
    for npc_match in re.finditer(
        r"\[(?P<id>\d+)\]\s*=\s*\{\s*enUS\s*=\s*\"(?P<en>(?:[^\"\\]|\\.)*)\"\s*,\s*deDE\s*=\s*\"(?P<de>(?:[^\"\\]|\\.)*)\"\s*\}",
        body,
    ):
        npc_id = int(npc_match.group("id"))
        result[npc_id] = (
            decode_lua_string(npc_match.group("en")),
            decode_lua_string(npc_match.group("de")),
        )
    return result


def parse_npc_ids(block_text: str) -> list[int]:
    match = re.search(r"npcIDs\s*=\s*\{(?P<body>.*?)\n\t\t\t\t\},", block_text, re.S)
    if not match:
        return []
    return [int(value) for value in re.findall(r"\b\d+\b", match.group("body"))]


def parse_instances(db_text: str) -> dict[int, dict]:
    instances: dict[int, dict] = {}
    catalog_start = db_text.find("addon.contentCatalog = addon.contentCatalog or {")
    groups_start = db_text.find("addon.npcGroups = addon.npcGroups or {", catalog_start)
    catalog_text = db_text[catalog_start:groups_start]

    expansion_key = "tbc"
    expansion_name_en = "The Burning Crusade"
    expansion_name_de = "The Burning Crusade"
    for match in INSTANCE_START_RE.finditer(catalog_text):
        instance_key = match.group("key")
        brace_start = catalog_text.find("{", match.start())
        brace_end = find_matching_brace(catalog_text, brace_start)
        block_text = catalog_text[match.start():brace_end]

        order_match = re.search(r"order\s*=\s*(\d+)", block_text)
        type_match = re.search(r'type\s*=\s*"([^"]+)"', block_text)
        en_name, de_name = parse_name_block(block_text)
        npc_names = parse_npc_names(block_text)
        npc_ids = parse_npc_ids(block_text)

        for npc_id in npc_ids:
            npc_en, npc_de = npc_names.get(npc_id, ("", ""))
            instances[npc_id] = {
                "expansion_key": expansion_key,
                "expansion_name_enUS": expansion_name_en,
                "expansion_name_deDE": expansion_name_de,
                "instance_key": instance_key,
                "instance_order": int(order_match.group(1)) if order_match else 9999,
                "instance_type": type_match.group(1) if type_match else "",
                "instance_name_enUS": en_name,
                "instance_name_deDE": de_name,
                "npc_name_enUS": npc_en,
                "npc_name_deDE": npc_de,
            }
    return instances


def parse_npc_groups(db_text: str) -> dict[tuple[str, int], str]:
    result: dict[tuple[str, int], str] = {}
    groups_start = db_text.find("addon.npcGroups = addon.npcGroups or {")
    if groups_start == -1:
        return result
    groups_text = db_text[groups_start:]
    for match in NPC_GROUP_INSTANCE_RE.finditer(groups_text):
        instance_key = match.group("key")
        brace_start = groups_text.find("{", match.start())
        brace_end = find_matching_brace(groups_text, brace_start)
        block_text = groups_text[brace_start:brace_end]
        for npc_match in re.finditer(r"\[(\d+)\]\s*=\s*\"([a-z_]+)\"", block_text):
            result[(instance_key, int(npc_match.group(1)))] = npc_match.group(2)
    return result


def load_existing_checked() -> dict[tuple[int, str], bool]:
    if not OUTPUT_PATH.exists():
        return {}
    try:
        payload = json.loads(OUTPUT_PATH.read_text(encoding="utf-8"))
    except Exception:
        return {}

    checked: dict[tuple[int, str], bool] = {}
    for entry in payload.get("entries", []):
        npc_id = entry.get("npc_id")
        for tip in entry.get("tips", []):
            tip_id = tip.get("tip_id")
            if npc_id is None or not tip_id:
                continue
            checked[(int(npc_id), tip_id)] = bool(tip.get("checked", False))
    return checked


def build_review_payload() -> dict:
    db_text = DB_PATH.read_text(encoding="utf-8")
    tips_en, tips_de = extract_tip_maps(db_text)
    instance_map = parse_instances(db_text)
    npc_groups = parse_npc_groups(db_text)
    checked_map = load_existing_checked()

    entries = []
    npc_ids = sorted(set(tips_en) | set(tips_de))
    for npc_id in npc_ids:
        en_tips = tips_en.get(npc_id, [])
        de_tips = tips_de.get(npc_id, [])
        if not en_tips and not de_tips:
            continue

        meta = instance_map.get(
            npc_id,
            {
                "expansion_key": "uncatalogued",
                "expansion_name_enUS": "Uncatalogued",
                "expansion_name_deDE": "Unkategorisiert",
                "instance_key": "uncatalogued",
                "instance_order": 9999,
                "instance_type": "Unknown",
                "instance_name_enUS": "Uncatalogued",
                "instance_name_deDE": "Unkategorisiert",
                "npc_name_enUS": "",
                "npc_name_deDE": "",
            },
        )
        npc_group = npc_groups.get((meta["instance_key"], npc_id), "other")

        paired_tips = []
        for en_tip, de_tip in zip(en_tips, de_tips):
            paired_tips.append(
                {
                    "tip_id": en_tip.tip_id,
                    "type": en_tip.tip_type,
                    "weight": en_tip.weight,
                    "checked": checked_map.get((npc_id, en_tip.tip_id), False),
                    "enUS": en_tip.text,
                    "deDE": de_tip.text,
                }
            )

        entries.append(
            {
                **meta,
                "npc_id": npc_id,
                "npc_group": npc_group,
                "tips": paired_tips,
            }
        )

    def sort_key(entry: dict) -> tuple:
        group_order = 0 if entry["npc_group"] == "boss" else 1
        return (
            entry["expansion_name_enUS"],
            entry["instance_order"],
            entry["instance_name_enUS"],
            group_order,
            entry["npc_id"],
        )

    entries.sort(key=sort_key)
    return {
        "meta": {
            "source": str(DB_PATH.relative_to(ROOT)),
            "generated_from": "scripts/export_tip_review.py",
            "checked_field": "Per-tip review flag preserved across regenerations by npc_id + tip_id.",
            "sorting": "Expansion -> instance order -> bosses first -> npc_id",
        },
        "entries": entries,
    }


def main() -> int:
    payload = build_review_payload()
    OUTPUT_PATH.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"Wrote tip review export to {OUTPUT_PATH}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
