# Translation Audit

This report records the current multilingual status before any translation fixes are applied.

## Scope

- Branch checked: `feature/multilanguage`
- Database file: `Tothys-Dungeon-Tips-TBC/Tothys-Database.lua`
- Config file: `Tothys-Dungeon-Tips-TBC/Tothys-Conf.lua`

## Summary

- `tipsMap_enUS` top-level NPC entries: **797**
- Explicit `tipsMap_deDE` translated/overridden NPC entries: **402** (50.4%)
- `tipsMap_deDE` entries still falling back to English because no explicit German override exists: **396**
- Duplicate explicit `tipsMap_deDE` assignments: **5**
- Structural `enUS`/`deDE` tip mismatches: **24**
- Browser locale key gaps (`browserLocaleStrings`): **0** missing in `deDE`, **0** extra in `deDE`
- Localized `npcNames` pairs found: **793**
- `npcNames` where `deDE` still equals `enUS`: **48**
- Localized `instanceContent` info entries found: **75**
- Localized `instanceContent` detail fields found: **100**

## Findings

### 1. German tip coverage

- The German tip map does **not** appear fully translated yet. `396` NPC entries still rely on the deep-copy fallback from `tipsMap_enUS`.
- Example untranslated NPC IDs from the top of the table: `17398, 17399, 17401, 17711, 17721, 17722, 17723, 17724, 17725, 17726, 17727, 17728, 17729, 17730, 17731, 17732, 17734, 17735, 17767, 17770`

### 2. Structural safety of existing German tip overrides

- `24` suspicious structural mismatch(es) were found while comparing explicit `deDE` overrides against `enUS`.

Details:
- `tipsMap_deDE[18371]` tip 2 does not match `enUS` metadata (`tip_id`, `type`, or `weight`).
- `tipsMap_deDE[18373]` tip 2 does not match `enUS` metadata (`tip_id`, `type`, or `weight`).
- `tipsMap_deDE[18472]` tip 2 does not match `enUS` metadata (`tip_id`, `type`, or `weight`).
- `tipsMap_deDE[18473]` tip 3 does not match `enUS` metadata (`tip_id`, `type`, or `weight`).
- `tipsMap_deDE[18731]` tip 2 does not match `enUS` metadata (`tip_id`, `type`, or `weight`).
- `tipsMap_deDE[18667]` has 4 tips, but `tipsMap_enUS[18667]` has 7.
- `tipsMap_deDE[18732]` tip 2 does not match `enUS` metadata (`tip_id`, `type`, or `weight`).
- `tipsMap_deDE[18708]` has 4 tips, but `tipsMap_enUS[18708]` has 7.
- `tipsMap_deDE[17833]` has 1 tips, but `tipsMap_enUS[17833]` has 4.
- `tipsMap_deDE[17860]` has 1 tips, but `tipsMap_enUS[17860]` has 4.
- `tipsMap_deDE[18093]` has 1 tips, but `tipsMap_enUS[18093]` has 2.
- `tipsMap_deDE[18095]` exists explicitly, but no matching `tipsMap_enUS[18095]` entry was found.
- `tipsMap_deDE[18170]` tip 1 does not match `enUS` metadata (`tip_id`, `type`, or `weight`).
- `tipsMap_deDE[17414]` has 1 tips, but `tipsMap_enUS[17414]` has 7.
- `tipsMap_deDE[17491]` has 4 tips, but `tipsMap_enUS[17491]` has 3.
- `tipsMap_deDE[17816]` tip 1 does not match `enUS` metadata (`tip_id`, `type`, or `weight`).
- `tipsMap_deDE[17938]` has 1 tips, but `tipsMap_enUS[17938]` has 2.
- `tipsMap_deDE[17940]` tip 1 does not match `enUS` metadata (`tip_id`, `type`, or `weight`).
- `tipsMap_deDE[17957]` has 1 tips, but `tipsMap_enUS[17957]` has 3.
- `tipsMap_deDE[17958]` has 1 tips, but `tipsMap_enUS[17958]` has 2.

### 3. Duplicate German overrides

- Duplicate explicit `tipsMap_deDE` assignments exist for these NPC IDs: `17377, 17380, 17381, 17429, 17839`
- These should be reviewed before editing, because only the last assignment wins at runtime.

### 4. Overrides that are still effectively English

- Fully identical explicit `deDE` overrides (same texts as `enUS`): `18478, 18499, 18521, 18524, 18558, 18326, 21891, 26650, 15608, 17023, 17083, 17420, 17461, 17578, 17669, 17693, 18641, 18797, 22890, 17952, 18982, 19557, 19598, 21303, 21395, 24723, 24744, 24560, 15548, 16174, 16175, 16411, 16468, 16481, 17261, 17267, 17283, 24664, 24552, 24553, 24554, 24555, 24556, 24557, 24558, 24559, 24561, 24656, 24674, 24675, 24683, 24684, 24685, 24686, 24687, 24688, 24689, 24690, 24696, 24697, 24698, 24722, 24745, 24761, 24762, 24777, 24781, 24815`
- Partially translated overrides (some lines still identical to `enUS`): `16807 (1/9), 15551 (1/2), 16460 (1/4)`

### 5. Browser UI locale strings

- Missing `deDE` browser locale keys: `none`
- Extra `deDE` browser locale keys: `none`

### 6. NPC and instance labels

- `npcNames` still equal in both languages for `48` IDs. That is not automatically wrong, but it usually means the German name is still a placeholder or an unchanged proper name.
- Example NPC IDs with identical names: `17536, 17537, 17380, 18373, 23035, 18708, 15687, 16812, 17533, 17534, 17535, 17548, 19873, 19874, 19876, 17257, 23576, 23577, 17942, 18341, 18343, 22930, 18725, 18786, 28132, 28163, 15608, 17880, 17881, 17980`
- Instance names that are still identical in both languages: `none`

### 7. Instance content

- `instanceContent` appears localized structurally, with `75` localized info entries and `100` localized detail fields found.

Additional notes:
- `auchenai_crypts` contains a visible `TEST:` marker in localized instance content.

## Recommended next steps

1. Review and clean the duplicate `tipsMap_deDE` assignments first.
2. Fix the structural mismatches before translating further.
3. Work through untranslated `tipsMap_deDE` entries in controlled batches.
4. Review identical `npcNames` values and confirm which ones are real proper names versus placeholders.
5. Remove the visible `TEST:` marker from `instanceContent.auchenai_crypts` once the migration is considered stable.

## Important note

- This report does **not** change any translations. It only documents the current state so the next fixes can be reviewed first.
