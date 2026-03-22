from __future__ import annotations

import argparse
import csv
import re
from pathlib import Path


ENTRY_RE = re.compile(
    r"^(?P<indent>\s*)\[(?P<id>\d+)\] = \{ enUS = (?P<en>(?:'.*?'|\".*?\")), deDE = (?P<de>(?:'.*?'|\".*?\")), status = '(?P<status>todo|translated)', checked = (?P<checked>true|false) \},$"
)
DB_NPC_NAME_RE = re.compile(
    r"^(?P<indent>\s*)\[(?P<id>\d+)\] = \{ enUS = (?P<en>(?:\".*?\")|(?:'.*?')), deDE = (?P<de>(?:\".*?\")|(?:'.*?')) \},$"
)
INSTANCE_RE = re.compile(r"^\s*(?P<name>[a-z0-9_]+) = \{$")
QUESTIEDB_ID_RE = re.compile(r"^\[(?P<id>\d+)\] = \{$")

QUESTIEDB_LOCALE_ORDER = [
    "ptBR",
    "ruRU",
    "deDE",
    "koKR",
    "esES",
    "esMX",
    "frFR",
    "zhCN",
    "zhTW",
]


def unquote(value: str) -> str:
    if value.startswith("'") and value.endswith("'"):
        return value[1:-1].replace("\\'", "'").replace("\\\\", "\\")
    if value.startswith('"') and value.endswith('"'):
        return value[1:-1].replace('\\"', '"').replace("\\\\", "\\")
    return value


def quote_single(value: str) -> str:
    return "'" + value.replace("\\", "\\\\").replace("'", "\\'") + "'"


def extract_questiedb_tbc_de_npc_names(input_path: Path) -> dict[str, str]:
    entries: dict[str, str] = {}
    lines = input_path.read_text(encoding="utf-8").splitlines()
    current_id: str | None = None
    expect_name = False

    for raw_line in lines:
        line = raw_line.strip()
        id_match = QUESTIEDB_ID_RE.match(line)
        if id_match:
            current_id = id_match.group("id")
            expect_name = True
            continue

        if not current_id or not expect_name:
            continue

        if line.startswith("'") and line.endswith("',"):
            packed = line[1:-2]
            values = packed.split("‡")
            locale_values = {
                locale: values[index] if index < len(values) else ""
                for index, locale in enumerate(QUESTIEDB_LOCALE_ORDER)
            }
            de_name = locale_values.get("deDE", "").strip()
            if de_name:
                entries[current_id] = de_name
            expect_name = False

    return entries


def export_review(input_path: Path, output_path: Path, unresolved_only: bool) -> None:
    rows = []
    current_instance = ""
    for line in input_path.read_text(encoding="utf-8").splitlines():
        stripped = line.strip()
        instance_match = INSTANCE_RE.match(line)
        if instance_match and not stripped.startswith("instances"):
            current_instance = instance_match.group("name")

        entry_match = ENTRY_RE.match(line)
        if not entry_match:
            continue

        status = entry_match.group("status")
        checked = entry_match.group("checked") == "true"
        if unresolved_only and status == "translated":
            continue

        npc_id = entry_match.group("id")
        rows.append(
            {
                "instance": current_instance,
                "npc_id": npc_id,
                "enUS": unquote(entry_match.group("en")),
                "deDE": unquote(entry_match.group("de")),
                "status": status,
                "checked": "true" if checked else "false",
                "wowhead_en": f"https://www.wowhead.com/tbc/npc={npc_id}",
                "wowhead_de": f"https://www.wowhead.com/tbc/de/npc={npc_id}",
                "notes": "",
            }
        )

    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(
            handle,
            fieldnames=[
                "instance",
                "npc_id",
                "enUS",
                "deDE",
                "status",
                "checked",
                "wowhead_en",
                "wowhead_de",
                "notes",
            ],
        )
        writer.writeheader()
        writer.writerows(rows)


def import_review(input_path: Path, review_csv: Path) -> None:
    updates = {}
    with review_csv.open("r", encoding="utf-8", newline="") as handle:
        for row in csv.DictReader(handle):
            npc_id = row.get("npc_id", "").strip()
            if not npc_id:
                continue
            updates[npc_id] = {
                "deDE": row.get("deDE", "").strip(),
                "status": row.get("status", "todo").strip() or "todo",
            }

    out_lines = []
    for line in input_path.read_text(encoding="utf-8").splitlines():
        entry_match = ENTRY_RE.match(line)
        if not entry_match or entry_match.group("id") not in updates:
            out_lines.append(line)
            continue

        update = updates[entry_match.group("id")]
        de_de = update["deDE"] or unquote(entry_match.group("de"))
        status = update["status"] if update["status"] in {"todo", "translated"} else "todo"

        # `checked` stays untouched on import. The review workflow only updates
        # translated text and status so we never silently mark entries as verified.
        out_lines.append(
            f"{entry_match.group('indent')}[{entry_match.group('id')}] = {{ enUS = {entry_match.group('en')}, deDE = {quote_single(de_de)}, status = '{status}', checked = {entry_match.group('checked')} }},"
        )

    input_path.write_text("\n".join(out_lines) + "\n", encoding="utf-8")


def import_questiedb_tbc(
    input_path: Path,
    questiedb_input: Path,
    output_csv: Path | None = None,
) -> tuple[int, int]:
    questie_map = extract_questiedb_tbc_de_npc_names(questiedb_input)

    if output_csv:
        output_csv.parent.mkdir(parents=True, exist_ok=True)
        with output_csv.open("w", encoding="utf-8", newline="") as handle:
            writer = csv.DictWriter(handle, fieldnames=["npc_id", "deDE"])
            writer.writeheader()
            for npc_id in sorted(questie_map, key=lambda value: int(value)):
                writer.writerow({"npc_id": npc_id, "deDE": questie_map[npc_id]})

    updated = 0
    matched = 0
    out_lines = []
    for line in input_path.read_text(encoding="utf-8").splitlines():
        entry_match = ENTRY_RE.match(line)
        if not entry_match:
            out_lines.append(line)
            continue

        npc_id = entry_match.group("id")
        if npc_id not in questie_map:
            out_lines.append(line)
            continue

        matched += 1
        de_de = questie_map[npc_id]
        old_de = unquote(entry_match.group("de"))
        old_status = entry_match.group("status")
        new_status = "translated"

        if old_de != de_de or old_status != new_status:
            updated += 1

        out_lines.append(
            f"{entry_match.group('indent')}[{npc_id}] = {{ enUS = {entry_match.group('en')}, deDE = {quote_single(de_de)}, status = '{new_status}', checked = {entry_match.group('checked')} }},"
        )

    input_path.write_text("\n".join(out_lines) + "\n", encoding="utf-8")
    return matched, updated


def apply_translation_workspace_to_database(
    workspace_path: Path,
    database_path: Path,
) -> tuple[int, int]:
    workspace_map = {}
    for line in workspace_path.read_text(encoding="utf-8").splitlines():
        entry_match = ENTRY_RE.match(line)
        if not entry_match:
            continue
        workspace_map[entry_match.group("id")] = unquote(entry_match.group("de"))

    matched = 0
    updated = 0
    out_lines = []
    for line in database_path.read_text(encoding="utf-8").splitlines():
        entry_match = DB_NPC_NAME_RE.match(line)
        if not entry_match:
            out_lines.append(line)
            continue

        npc_id = entry_match.group("id")
        if npc_id not in workspace_map:
            out_lines.append(line)
            continue

        matched += 1
        new_de = workspace_map[npc_id]
        old_de = unquote(entry_match.group("de"))
        if old_de != new_de:
            updated += 1
        escaped_de = new_de.replace("\\", "\\\\").replace('"', '\\"')

        out_lines.append(
            f'{entry_match.group("indent")}[{npc_id}] = {{ enUS = {entry_match.group("en")}, deDE = "{escaped_de}" }},'
        )

    database_path.write_text("\n".join(out_lines) + "\n", encoding="utf-8")
    return matched, updated


def main() -> None:
    parser = argparse.ArgumentParser(description="Export or import NPC name review data.")
    subparsers = parser.add_subparsers(dest="command", required=True)

    export_parser = subparsers.add_parser("export", help="Export review CSV from NPC_NAME_TRANSLATIONS.lua")
    export_parser.add_argument("--input", default="Codebase/docs/NPC_NAME_TRANSLATIONS.lua")
    export_parser.add_argument("--output", default="Codebase/docs/NPC_NAME_TRANSLATIONS_REVIEW.csv")
    export_parser.add_argument("--all", action="store_true", help="Export all rows instead of only unresolved rows")

    import_parser = subparsers.add_parser("import", help="Import reviewed CSV back into NPC_NAME_TRANSLATIONS.lua")
    import_parser.add_argument("--input", default="Codebase/docs/NPC_NAME_TRANSLATIONS.lua")
    import_parser.add_argument("--review", default="Codebase/docs/NPC_NAME_TRANSLATIONS_REVIEW.csv")

    questie_parser = subparsers.add_parser(
        "import-questiedb-tbc",
        help="Import deDE NPC names from QuestieDB TBC l10n into NPC_NAME_TRANSLATIONS.lua",
    )
    questie_parser.add_argument("--input", default="Codebase/docs/NPC_NAME_TRANSLATIONS.lua")
    questie_parser.add_argument(
        "--questiedb",
        default="QuestieDB/Database/l10n/Tbc/l10nNpcData.lua-table",
    )
    questie_parser.add_argument(
        "--mapping-output",
        default="Codebase/docs/QUESTIEDB_TBC_NPC_DE.csv",
    )

    apply_db_parser = subparsers.add_parser(
        "apply-to-database",
        help="Apply workspace deDE NPC names into Tothys-Database.lua npcNames entries",
    )
    apply_db_parser.add_argument("--workspace", default="Codebase/docs/NPC_NAME_TRANSLATIONS.lua")
    apply_db_parser.add_argument("--database", default="Codebase/Tothys-Dungeon-Tips-TBC/Tothys-Database.lua")

    args = parser.parse_args()
    if args.command == "export":
        export_review(Path(args.input), Path(args.output), unresolved_only=not args.all)
    elif args.command == "import":
        import_review(Path(args.input), Path(args.review))
    elif args.command == "import-questiedb-tbc":
        matched, updated = import_questiedb_tbc(
            Path(args.input),
            Path(args.questiedb),
            Path(args.mapping_output),
        )
        print(f"matched={matched} updated={updated}")
    else:
        matched, updated = apply_translation_workspace_to_database(
            Path(args.workspace),
            Path(args.database),
        )
        print(f"matched={matched} updated={updated}")


if __name__ == "__main__":
    main()
