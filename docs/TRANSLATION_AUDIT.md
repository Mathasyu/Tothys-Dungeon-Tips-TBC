# Translation Audit

This report records the current multilingual status before any translation fixes are applied.

## Scope

- Branch checked: `feature/multilanguage`
- Database file: `Tothys-Dungeon-Tips-TBC/Tothys-Database.lua`
- Config file: `Tothys-Dungeon-Tips-TBC/Tothys-Conf.lua`
- Review tooling:
  - `scripts/export_tip_review.py`
  - `docs/TIP_TRANSLATION_REVIEW.json`
  - exported paired `enUS` / `deDE` tip lines with a per-tip `checked` flag

## Summary

- `tipsMap_enUS` top-level NPC entries: **797**
- `tipsMap_deDE` entries with an explicit German-side counterpart: **797** (100.0%)
- `tipsMap_enUS` entries still missing any explicit `deDE` counterpart: **0**
- Duplicate explicit `tipsMap_deDE` assignments: **0**
- Structural `enUS`/`deDE` tip mismatches: **0**
- Browser locale key gaps (`browserLocaleStrings`): **0** missing in `deDE`, **0** extra in `deDE`
- Localized `npcNames` pairs found: **793**
- `npcNames` where `deDE` still equals `enUS`: **48**
- Localized `instanceContent` info entries found: **75**
- Localized `instanceContent` detail fields found: **100**

## Findings

### 1. German tip coverage

- `0` NPC entries are still missing an explicit `deDE` counterpart in the file.
- Example missing counterpart IDs from the top of the table: `none`

### 2. Structural safety of existing German tip overrides

- `0` suspicious structural mismatch(es) were found while comparing explicit `deDE` overrides against `enUS`.

- No structural mismatch was found in `tip_id`, `type`, and `weight` for the parsed explicit overrides.

### 3. Duplicate German overrides

- Duplicate explicit `tipsMap_deDE` assignments exist for these NPC IDs: `none`
- These should be reviewed before editing, because only the last assignment wins at runtime.

### 4. Overrides that are still effectively English

- Fully identical explicit `deDE` overrides with non-empty English text: `none`
- Fully identical explicit `deDE` overrides with empty English text: **360**
- Partially translated overrides (some lines still identical to `enUS`): `none`

### 5. Browser UI locale strings

- Missing `deDE` browser locale keys: `none`
- Extra `deDE` browser locale keys: `none`

### 6. NPC and instance labels

- `npcNames` still equal in both languages for `48` IDs. That is not automatically wrong, but it usually means the German name is still a placeholder or an unchanged proper name.
- Example NPC IDs with identical names: `17536, 17537, 17380, 18373, 23035, 18708, 15687, 16812, 17533, 17534, 17535, 17548, 19873, 19874, 19876, 17257, 23576, 23577, 17942, 18341, 18343, 22930, 18725, 18786, 28132, 28163, 15608, 17880, 17881, 17980`
- Instance names that are still identical in both languages: `none`

### 7. Instance content

- `instanceContent` appears localized structurally, with `75` localized info entries and `100` localized detail fields found.

## Progress summary

- Done: explicit `deDE` counterparts for all `tipsMap_enUS` entries: **yes**
- Done: structural parity between `tipsMap_enUS` and `tipsMap_deDE`: **yes**
- Done: duplicate explicit `tipsMap_deDE` assignments removed: **yes**
- Done: non-empty explicit `deDE` carry-over text translated: **yes**
- Open: fully identical explicit `deDE` overrides with non-empty English text still left to translate: **0**
- Open: partially translated overrides still left to finish: **0**
- Open: fully identical explicit `deDE` overrides with empty English text: **360**
- Open: browser locale key drift: **0**
- Open: visible `TEST:` markers in shipped instance content: **0**

## Recommended next steps

1. Done: Fix the structural mismatches before translating further.
2. Done: Work through untranslated `tipsMap_deDE` entries in controlled batches.
3. Done: Review identical `npcNames` values and confirm which ones are real proper names versus placeholders.
4. Open: Review shipped entries where `enUS` and `deDE` are both still empty placeholders if real content is added later.
5. Done: Remove the visible `TEST:` marker from `instanceContent.auchenai_crypts` once the migration is considered stable.

## Important note

- This report does **not** change any translations. It only documents the current state so the next fixes can be reviewed first.
- Tip-by-tip language review is now intended to happen against `docs/TIP_TRANSLATION_REVIEW.json`, not by manually hunting through `Tothys-Database.lua`.
