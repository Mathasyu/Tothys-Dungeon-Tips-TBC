#!/usr/bin/env python3

from __future__ import annotations

import argparse
import re
from pathlib import Path


ROOT = Path("/mnt/p/Projekte/WoW/QE Dungeon Tips/Codebase")
CURRENT_DB = ROOT / "Tothys-Database.lua"
LEGACY_DB = ROOT / "docs" / "legacy-Tothys-Database.lua"


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def extract_table_block(text: str, marker: str) -> str:
    start = text.find(marker)
    if start == -1:
        raise ValueError(f"Marker not found: {marker}")

    brace_start = text.find("{", start)
    if brace_start == -1:
        raise ValueError(f"Opening brace not found after marker: {marker}")

    depth = 0
    for index in range(brace_start, len(text)):
        char = text[index]
        if char == "{":
            depth += 1
        elif char == "}":
            depth -= 1
            if depth == 0:
                return text[brace_start : index + 1]

    raise ValueError(f"Unclosed table for marker: {marker}")


def extract_tip_ids_from_table(table_text: str) -> set[int]:
    return {int(match) for match in re.findall(r"\[(\d+)\]\s*=", table_text)}


def extract_catalog_npc_ids(content_catalog_text: str) -> set[int]:
    ids: set[int] = set()
    for block in re.finditer(r"npcIDs\s*=\s*{(.*?)}\s*,", content_catalog_text, re.DOTALL):
        ids.update(int(match) for match in re.findall(r"\b\d+\b", block.group(1)))
    return ids


def format_id_list(ids: set[int], limit: int) -> str:
    ordered = sorted(ids)
    if not ordered:
        return "none"

    if len(ordered) <= limit:
        return ", ".join(str(value) for value in ordered)

    visible = ", ".join(str(value) for value in ordered[:limit])
    return f"{visible}, ... ({len(ordered) - limit} more)"


def main() -> int:
    parser = argparse.ArgumentParser(
        description=(
            "Verify current shipped DB and content catalog IDs against the legacy DB snapshot."
        )
    )
    parser.add_argument(
        "--limit",
        type=int,
        default=50,
        help="Maximum number of IDs to print per mismatch bucket.",
    )
    args = parser.parse_args()

    current_text = read_text(CURRENT_DB)
    legacy_text = read_text(LEGACY_DB)

    current_catalog_text = extract_table_block(current_text, "addon.contentCatalog = addon.contentCatalog or")
    current_tips_text = extract_table_block(current_text, "tipsMap_enUS =")
    legacy_tips_text = extract_table_block(legacy_text, "tipsMap =")

    current_tip_ids = extract_tip_ids_from_table(current_tips_text)
    legacy_tip_ids = extract_tip_ids_from_table(legacy_tips_text)
    catalog_npc_ids = extract_catalog_npc_ids(current_catalog_text)

    legacy_missing_in_current = legacy_tip_ids - current_tip_ids
    current_missing_in_legacy = current_tip_ids - legacy_tip_ids
    catalog_missing_in_legacy = catalog_npc_ids - legacy_tip_ids
    catalog_missing_in_current = catalog_npc_ids - current_tip_ids
    current_missing_in_catalog = current_tip_ids - catalog_npc_ids

    print("KDT DB ID verification")
    print(f"legacy tip IDs:   {len(legacy_tip_ids)}")
    print(f"current tip IDs:  {len(current_tip_ids)}")
    print(f"catalog npc IDs:  {len(catalog_npc_ids)}")
    print()

    print(f"Legacy IDs missing in current DB: {len(legacy_missing_in_current)}")
    print(format_id_list(legacy_missing_in_current, args.limit))
    print()

    print(f"Current DB IDs missing in legacy DB: {len(current_missing_in_legacy)}")
    print(format_id_list(current_missing_in_legacy, args.limit))
    print()

    print(f"Catalog NPC IDs missing in legacy DB: {len(catalog_missing_in_legacy)}")
    print(format_id_list(catalog_missing_in_legacy, args.limit))
    print()

    print(f"Catalog NPC IDs without current tip entry: {len(catalog_missing_in_current)}")
    print(format_id_list(catalog_missing_in_current, args.limit))
    print()

    print(f"Current tip IDs missing in catalog: {len(current_missing_in_catalog)}")
    print(format_id_list(current_missing_in_catalog, args.limit))

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
