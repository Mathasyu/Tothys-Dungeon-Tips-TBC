# Translation Audit

This report records the current multilingual status before any translation fixes are applied.

## Scope

- Branch checked: `feature/multilanguage`
- Database file: `Tothys-Dungeon-Tips-TBC/Tothys-Database.lua`
- Config file: `Tothys-Dungeon-Tips-TBC/Tothys-Conf.lua`

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

- Fully identical explicit `deDE` overrides (same texts as `enUS`): `126389, 99999, 17711, 18728, 23863, 24239, 23574, 23576, 23577, 23578, 23542, 23580, 23581, 23582, 23584, 23586, 23596, 23597, 23774, 23834, 23889, 24043, 24047, 24059, 24064, 24065, 24138, 24175, 24179, 24180, 24217, 24374, 24530, 24549, 21216, 21217, 21215, 21214, 21213, 21212, 21964, 21965, 21966, 21218, 21220, 21221, 21224, 21225, 21226, 21227, 21228, 21229, 21230, 21231, 21232, 21246, 21251, 21253, 21263, 21298, 21299, 21301, 21339, 21508, 21806, 21857, 21863, 21865, 21873, 21875, 21920, 21958, 22009, 22035, 22036, 22055, 22056, 22119, 22120, 22238, 22250, 22347, 22352, 22820, 19516, 19514, 18805, 19622, 20060, 20062, 20063, 20064, 21268, 21269, 21270, 21271, 21272, 21273, 21274, 18806, 18925, 19551, 20031, 20032, 20033, 20034, 20035, 20036, 20037, 20038, 20039, 20040, 20041, 20042, 20043, 20044, 20045, 20046, 20047, 20048, 20049, 20050, 20052, 21362, 21364, 17767, 17808, 17888, 17842, 17968, 17818, 17864, 17895, 17897, 17898, 17899, 17902, 17903, 17905, 17906, 17907, 17908, 17916, 22887, 22898, 22841, 22871, 22948, 23418, 23419, 23420, 22947, 22949, 22950, 22951, 22952, 22917, 22844, 22845, 22846, 22847, 22848, 22849, 22853, 22855, 22869, 22873, 22874, 22875, 22876, 22877, 22878, 22879, 22880, 22881, 22882, 22883, 22884, 22885, 22929, 22939, 22945, 22946, 22953, 22954, 22955, 22956, 22957, 22959, 22960, 22962, 22963, 22964, 22965, 22996, 22997, 23018, 23028, 23030, 23047, 23049, 23083, 23109, 23111, 23147, 23172, 23196, 23215, 23216, 23222, 23223, 23232, 23235, 23236, 23237, 23239, 23318, 23319, 23330, 23337, 23339, 23371, 23374, 23375, 23389, 23394, 23397, 23398, 23399, 23400, 23401, 23402, 23403, 23421, 23436, 23469, 23498, 23523, 23524, 24850, 24892, 24882, 25038, 25166, 25165, 25741, 25840, 25315, 25268, 25363, 25367, 25368, 25369, 25370, 25371, 25372, 25373, 25483, 25484, 25485, 25486, 25502, 25506, 25507, 25508, 25509, 25588, 25591, 25592, 25593, 25595, 25597, 25598, 25599, 25708, 25744, 25772, 25798, 25799, 25824, 25837, 25851, 25867, 25948, 26101, 17398, 17399, 17401, 17770, 18105, 17826, 17827, 17882, 18107, 22299, 17723, 17724, 17725, 17726, 17727, 17728, 17729, 17730, 17731, 17732, 17734, 17735, 17771, 17871, 17990, 19632, 20465, 17797, 17796, 17798, 17917, 17951, 17954, 17721, 17722, 17800, 17801, 17802, 17803, 17805, 17799, 21338, 21694, 21695, 21696, 22891, 18341, 18343, 18344, 22930, 18431, 18430, 18309, 18311, 18312, 18313, 18314, 18315, 18317, 18331, 18394, 18429, 19306, 19307, 18636, 18637, 18638, 18639, 18640, 19166, 19167, 19168, 19231, 19510, 19712, 19713, 19716, 19735, 20059, 20478, 20988, 20990, 17976, 17975, 17978, 17980, 17977, 20078, 20083, 19953, 19958, 19962, 19964, 19969, 19919, 19920, 19949, 17993, 17994, 18155, 18404, 18405, 18419, 18420, 18478, 18499, 18521, 18524, 18558, 18326, 21891, 15608, 17023, 17083, 17420, 17461, 17578, 17669, 17693, 18641, 18797, 22890, 17848, 17862, 18096, 18725, 18786, 17814, 17815, 17819, 17820, 17833, 17840, 17846, 17860, 18092, 18093, 18094, 18170, 18171, 18172, 18673, 18764, 18765, 18934, 26650, 28132, 28163, 17952, 18982, 19557, 19598, 21303, 21395, 24723, 24744, 24560, 15548, 16174, 16175, 16411, 16468, 16481, 17261, 17267, 17283, 24664, 24552, 24553, 24554, 24555, 24556, 24557, 24558, 24559, 24561, 24656, 24674, 24675, 24683, 24684, 24685, 24686, 24687, 24688, 24689, 24690, 24696, 24697, 24698, 24722, 24745, 24761, 24762, 24777, 24781, 24815`
- Partially translated overrides (some lines still identical to `enUS`): `18472 (1/7), 16807 (1/9), 15551 (1/2), 16460 (1/4)`

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

1. Fix the structural mismatches before translating further.
2. Work through untranslated `tipsMap_deDE` entries in controlled batches.
3. Review identical `npcNames` values and confirm which ones are real proper names versus placeholders.
4. Remove the visible `TEST:` marker from `instanceContent.auchenai_crypts` once the migration is considered stable.

## Important note

- This report does **not** change any translations. It only documents the current state so the next fixes can be reviewed first.
