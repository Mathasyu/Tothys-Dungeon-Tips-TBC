#!/usr/bin/env python3

from __future__ import annotations

import re
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DB_PATH = ROOT / "Tothys-Dungeon-Tips-TBC" / "Tothys-Database.lua"
CONF_PATH = ROOT / "Tothys-Dungeon-Tips-TBC" / "Tothys-Conf.lua"
REPORT_PATH = ROOT / "docs" / "TRANSLATION_AUDIT.md"


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
NPC_NAME_RE = re.compile(
    r'^\s*\[(?P<id>\d+)\]\s*=\s*\{\s*enUS\s*=\s*(?P<en>".*?"|\'.*?\')\s*,\s*deDE\s*=\s*(?P<de>".*?"|\'.*?\')\s*\},$',
    re.M,
)
INSTANCE_NAME_RE = re.compile(
    r'name\s*=\s*\{\s*enUS\s*=\s*(?P<en>".*?"|\'.*?\')\s*,\s*deDE\s*=\s*(?P<de>".*?"|\'.*?\')\s*\}',
    re.S,
)
LOCALE_BUCKET_RE = re.compile(r"local browserLocaleStrings = \{(.*?)\n\}", re.S)
LOCALE_RE = re.compile(r"\n\t(?P<locale>enUS|deDE)\s*=\s*\{(.*?)\n\t\}", re.S)
LOCALE_KEY_RE = re.compile(r'^\s*(?P<key>[a-zA-Z0-9_]+)\s*=\s*', re.M)
INSTANCE_CONTENT_RE = re.compile(
    r"addon\.instanceContent\.(?P<key>[a-z0-9_]+)\s*=\s*addon\.instanceContent\.(?P=key)\s+or\s+\{",
    re.M,
)
DETAIL_LOCALE_RE = re.compile(
    r'(?P<field>travel|attunement|notes|lore)\s*=\s*\{.*?enUS\s*=.*?deDE\s*=.*?\}',
    re.S,
)
INFO_TEXT_RE = re.compile(r'text\s*=\s*\{.*?enUS\s*=.*?deDE\s*=.*?\}', re.S)


def unquote(value: str) -> str:
    if value.startswith('"') and value.endswith('"'):
        return value[1:-1].replace('\\"', '"').replace("\\\\", "\\")
    if value.startswith("'") and value.endswith("'"):
        return value[1:-1].replace("\\'", "'").replace("\\\\", "\\")
    return value


def extract_section(text: str, start_marker: str, end_marker: str) -> str:
    start = text.find(start_marker)
    if start == -1:
        raise ValueError(f"Marker not found: {start_marker}")

    end = text.find(end_marker, start)
    if end == -1:
        raise ValueError(f"Marker not found: {end_marker}")

    return text[start:end]


def extract_top_level_assignments(block_text: str) -> dict[int, str]:
    matches = list(re.finditer(r"(?m)^\s*\[(\d+)\]\s*=\s*\{", block_text))
    assignments: dict[int, str] = {}

    for idx, match in enumerate(matches):
        npc_id = int(match.group(1))
        brace_start = block_text.find("{", match.start())
        depth = 0
        end_index = None
        for pos in range(brace_start, len(block_text)):
            char = block_text[pos]
            if char == "{":
                depth += 1
            elif char == "}":
                depth -= 1
                if depth == 0:
                    end_index = pos + 1
                    break
        if end_index is None:
            continue
        assignments[npc_id] = block_text[brace_start:end_index]

    return assignments


def extract_de_assignments(full_text: str) -> tuple[dict[int, list[str]], dict[int, int]]:
    direct: dict[int, list[str]] = defaultdict(list)
    for match in re.finditer(r"(?m)^tipsMap_deDE\[(\d+)\]\s*=\s*\{", full_text):
        npc_id = int(match.group(1))
        brace_start = full_text.find("{", match.start())
        depth = 0
        end_index = None
        for pos in range(brace_start, len(full_text)):
            char = full_text[pos]
            if char == "{":
                depth += 1
            elif char == "}":
                depth -= 1
                if depth == 0:
                    end_index = pos + 1
                    break
        if end_index is None:
            continue
        direct[npc_id].append(full_text[brace_start:end_index])

    clone_map: dict[int, int] = {}
    for match in re.finditer(
        r"(?m)^tipsMap_deDE\[(\d+)\]\s*=\s*cloneTableDeep\(tipsMap_(?:deDE|enUS)\[(\d+)\]\)",
        full_text,
    ):
        clone_map[int(match.group(1))] = int(match.group(2))

    return direct, clone_map


def parse_tip_entries(table_text: str) -> list[TipEntry]:
    return [
        TipEntry(
            tip_id=match.group("tip_id"),
            tip_type=match.group("tip_type"),
            text=match.group("text"),
            weight=int(match.group("weight")),
        )
        for match in TIP_RE.finditer(table_text)
    ]


def collect_browser_locale_stats(conf_text: str) -> dict[str, set[str]]:
    bucket_match = LOCALE_BUCKET_RE.search(conf_text)
    if not bucket_match:
        return {}

    bucket_text = bucket_match.group(1)
    stats: dict[str, set[str]] = {}
    for locale_match in LOCALE_RE.finditer(bucket_text):
        locale = locale_match.group("locale")
        keys = set(LOCALE_KEY_RE.findall(locale_match.group(2)))
        stats[locale] = keys
    return stats


def collect_instance_content_stats(db_text: str) -> tuple[int, int, list[str]]:
    instance_keys = list(INSTANCE_CONTENT_RE.finditer(db_text))
    localized_detail_fields = 0
    localized_info_entries = 0
    findings: list[str] = []

    for idx, match in enumerate(instance_keys):
        block_start = match.start()
        block_end = instance_keys[idx + 1].start() if idx + 1 < len(instance_keys) else db_text.find("tipsMap_enUS =", block_start)
        block_text = db_text[block_start:block_end]
        instance_key = match.group("key")

        localized_detail_fields += len(DETAIL_LOCALE_RE.findall(block_text))
        localized_info_entries += len(INFO_TEXT_RE.findall(block_text))

        if "TEST:" in block_text:
            findings.append(f"`{instance_key}` contains a visible `TEST:` marker in localized instance content.")

    return localized_detail_fields, localized_info_entries, findings


def build_report() -> str:
    db_text = DB_PATH.read_text(encoding="utf-8")
    conf_text = CONF_PATH.read_text(encoding="utf-8")

    en_section = extract_section(db_text, "tipsMap_enUS = {", "tipsMap_deDE = tipsMap_deDE or {}")
    de_section = db_text[db_text.find("tipsMap_deDE = tipsMap_deDE or {}") :]

    en_assignments = extract_top_level_assignments(en_section)
    de_direct_assignments, de_clone_assignments = extract_de_assignments(de_section)

    en_entries = {npc_id: parse_tip_entries(block) for npc_id, block in en_assignments.items() if npc_id != 0}
    latest_de_entries = {
        npc_id: parse_tip_entries(blocks[-1])
        for npc_id, blocks in de_direct_assignments.items()
    }

    de_override_ids = set(latest_de_entries) | set(de_clone_assignments)
    untranslated_ids = sorted(set(en_entries) - de_override_ids)
    duplicate_override_ids = sorted(npc_id for npc_id, blocks in de_direct_assignments.items() if len(blocks) > 1)

    identical_override_ids: list[int] = []
    partial_same_text_ids: list[tuple[int, int, int]] = []
    structural_mismatches: list[str] = []

    for npc_id, de_tips in latest_de_entries.items():
        en_tips = en_entries.get(npc_id)
        if not en_tips:
            structural_mismatches.append(
                f"`tipsMap_deDE[{npc_id}]` exists explicitly, but no matching `tipsMap_enUS[{npc_id}]` entry was found."
            )
            continue

        if len(en_tips) != len(de_tips):
            structural_mismatches.append(
                f"`tipsMap_deDE[{npc_id}]` has {len(de_tips)} tips, but `tipsMap_enUS[{npc_id}]` has {len(en_tips)}."
            )
            continue

        same_texts = 0
        all_same = True
        for index, (en_tip, de_tip) in enumerate(zip(en_tips, de_tips), start=1):
            if (
                en_tip.tip_id != de_tip.tip_id
                or en_tip.tip_type != de_tip.tip_type
                or en_tip.weight != de_tip.weight
            ):
                structural_mismatches.append(
                    f"`tipsMap_deDE[{npc_id}]` tip {index} does not match `enUS` metadata (`tip_id`, `type`, or `weight`)."
                )
                all_same = False
                break

            if en_tip.text == de_tip.text:
                same_texts += 1
            else:
                all_same = False

        if all_same:
            identical_override_ids.append(npc_id)
        elif same_texts:
            partial_same_text_ids.append((npc_id, same_texts, len(en_tips)))

    browser_locale_stats = collect_browser_locale_stats(conf_text)
    en_browser_keys = browser_locale_stats.get("enUS", set())
    de_browser_keys = browser_locale_stats.get("deDE", set())
    browser_missing_in_de = sorted(en_browser_keys - de_browser_keys)
    browser_extra_in_de = sorted(de_browser_keys - en_browser_keys)

    npc_name_matches = list(NPC_NAME_RE.finditer(db_text))
    total_npc_name_pairs = len(npc_name_matches)
    identical_npc_name_pairs = [
        int(match.group("id"))
        for match in npc_name_matches
        if unquote(match.group("en")) == unquote(match.group("de"))
    ]

    instance_name_matches = list(INSTANCE_NAME_RE.finditer(db_text))
    identical_instance_names = [
        unquote(match.group("en"))
        for match in instance_name_matches
        if unquote(match.group("en")) == unquote(match.group("de"))
    ]

    localized_detail_fields, localized_info_entries, instance_content_findings = collect_instance_content_stats(db_text)

    old_hillsbrad_shift_signals: list[str] = []
    for npc_id in [17833, 17839, 17860, 18092, 18093, 18094]:
        de_tips = latest_de_entries.get(npc_id)
        en_tips = en_entries.get(npc_id)
        if not de_tips or not en_tips:
            continue

        de_prefix = de_tips[0].tip_id.split("_", 1)[0] if de_tips[0].tip_id else ""
        en_prefix = en_tips[0].tip_id.split("_", 1)[0] if en_tips[0].tip_id else ""
        if de_prefix != en_prefix:
            old_hillsbrad_shift_signals.append(
                f"`{npc_id}` uses German tip prefix `{de_prefix}` but English prefix `{en_prefix}`."
            )

    translated_override_count = len(de_override_ids)
    total_en_count = len(en_entries)
    translated_percent = (translated_override_count / total_en_count * 100) if total_en_count else 0.0

    report_lines = [
        "# Translation Audit",
        "",
        "This report records the current multilingual status before any translation fixes are applied.",
        "",
        "## Scope",
        "",
        "- Branch checked: `feature/multilanguage`",
        f"- Database file: `Tothys-Dungeon-Tips-TBC/Tothys-Database.lua`",
        f"- Config file: `Tothys-Dungeon-Tips-TBC/Tothys-Conf.lua`",
        "",
        "## Summary",
        "",
        f"- `tipsMap_enUS` top-level NPC entries: **{total_en_count}**",
        f"- `tipsMap_deDE` entries with an explicit German-side counterpart: **{translated_override_count}** ({translated_percent:.1f}%)",
        f"- `tipsMap_enUS` entries still missing any explicit `deDE` counterpart: **{len(untranslated_ids)}**",
        f"- Duplicate explicit `tipsMap_deDE` assignments: **{len(duplicate_override_ids)}**",
        f"- Structural `enUS`/`deDE` tip mismatches: **{len(structural_mismatches)}**",
        f"- Browser locale key gaps (`browserLocaleStrings`): **{len(browser_missing_in_de)}** missing in `deDE`, **{len(browser_extra_in_de)}** extra in `deDE`",
        f"- Localized `npcNames` pairs found: **{total_npc_name_pairs}**",
        f"- `npcNames` where `deDE` still equals `enUS`: **{len(identical_npc_name_pairs)}**",
        f"- Localized `instanceContent` info entries found: **{localized_info_entries}**",
        f"- Localized `instanceContent` detail fields found: **{localized_detail_fields}**",
        "",
        "## Findings",
        "",
        "### 1. German tip coverage",
        "",
        f"- `{len(untranslated_ids)}` NPC entries are still missing an explicit `deDE` counterpart in the file.",
        f"- Example missing counterpart IDs from the top of the table: `{', '.join(str(value) for value in untranslated_ids[:20]) if untranslated_ids else 'none'}`",
        "",
        "### 2. Structural safety of existing German tip overrides",
        "",
        f"- `{len(structural_mismatches)}` suspicious structural mismatch(es) were found while comparing explicit `deDE` overrides against `enUS`.",
    ]

    if structural_mismatches:
        report_lines.extend(["", "Details:"])
        report_lines.extend([f"- {entry}" for entry in structural_mismatches[:20]])
    else:
        report_lines.extend(["", "- No structural mismatch was found in `tip_id`, `type`, and `weight` for the parsed explicit overrides."])

    report_lines.extend(
        [
            "",
            "### 3. Duplicate German overrides",
            "",
            f"- Duplicate explicit `tipsMap_deDE` assignments exist for these NPC IDs: `{', '.join(str(value) for value in duplicate_override_ids) if duplicate_override_ids else 'none'}`",
            "- These should be reviewed before editing, because only the last assignment wins at runtime.",
            "",
            "### 4. Overrides that are still effectively English",
            "",
            f"- Fully identical explicit `deDE` overrides (same texts as `enUS`): `{', '.join(str(value) for value in identical_override_ids) if identical_override_ids else 'none'}`",
            f"- Partially translated overrides (some lines still identical to `enUS`): `{', '.join(f'{npc_id} ({same}/{total})' for npc_id, same, total in partial_same_text_ids[:20]) if partial_same_text_ids else 'none'}`",
            "",
            "### 5. Browser UI locale strings",
            "",
            f"- Missing `deDE` browser locale keys: `{', '.join(browser_missing_in_de) if browser_missing_in_de else 'none'}`",
            f"- Extra `deDE` browser locale keys: `{', '.join(browser_extra_in_de) if browser_extra_in_de else 'none'}`",
            "",
            "### 6. NPC and instance labels",
            "",
            f"- `npcNames` still equal in both languages for `{len(identical_npc_name_pairs)}` IDs. That is not automatically wrong, but it usually means the German name is still a placeholder or an unchanged proper name.",
            f"- Example NPC IDs with identical names: `{', '.join(str(value) for value in identical_npc_name_pairs[:30]) if identical_npc_name_pairs else 'none'}`",
            f"- Instance names that are still identical in both languages: `{', '.join(identical_instance_names[:30]) if identical_instance_names else 'none'}`",
            "",
            "### 7. Instance content",
            "",
            f"- `instanceContent` appears localized structurally, with `{localized_info_entries}` localized info entries and `{localized_detail_fields}` localized detail fields found.",
        ]
    )

    if old_hillsbrad_shift_signals:
        report_lines.extend(
            [
                "",
                "### 3a. Old Hillsbrad / Black Morass drift suspicion",
                "",
                "- The German block around the Old Hillsbrad trash IDs still looks suspicious and should be reviewed as one grouped section.",
                "",
                "Signals seen in the current file:",
            ]
        )
        report_lines.extend([f"- {entry}" for entry in old_hillsbrad_shift_signals])

    if instance_content_findings:
        report_lines.extend(["", "Additional notes:"])
        report_lines.extend([f"- {entry}" for entry in instance_content_findings])

    report_lines.extend(
        [
            "",
            "## Recommended next steps",
            "",
            "1. Fix the structural mismatches before translating further.",
            "2. Work through untranslated `tipsMap_deDE` entries in controlled batches.",
            "3. Review identical `npcNames` values and confirm which ones are real proper names versus placeholders.",
            "4. Remove the visible `TEST:` marker from `instanceContent.auchenai_crypts` once the migration is considered stable.",
            "",
            "## Important note",
            "",
            "- This report does **not** change any translations. It only documents the current state so the next fixes can be reviewed first.",
            "",
        ]
    )

    return "\n".join(report_lines)


def main() -> int:
    report = build_report()
    REPORT_PATH.write_text(report, encoding="utf-8")
    print(f"Wrote translation audit to {REPORT_PATH}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
