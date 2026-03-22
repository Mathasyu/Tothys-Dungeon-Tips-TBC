# Legacy Reference

## Purpose

This file documents the legacy data shape and comparison rules so we can safely migrate content without losing the original intent of the shipped addon data.

It is not meant to duplicate the full database.
The full historical source of truth remains:

- the git history
- existing commits
- the untouched legacy entries still present in `Tothys-Dungeon-Tips-TBC/Tothys-Database.lua`

## Legacy tip format

The original shipped tip format is:

```lua
{"Type", "Text"}
```

Example:

```lua
[16151] = {
  {"Important", "Make sure that the trash leading up to Attumen has been cleared."},
  {"HEALER", "Each tank should have its own dedicated healer."},
}
```

Properties of the legacy format:

- no stable `tip_id`
- no explicit `weight`
- ordering is implied by list position
- multiple entries of the same type are common

## New format

The target format is:

```lua
{"tip_id", "Type", "Text", weight}
```

Example:

```lua
{"attumen_001", "Important", "Make sure that the trash leading up to Attumen has been cleared.", 30}
{"attumen_002", "HEALER", "Each tank should have its own dedicated healer.", 20}
```

## Migration rules

When converting a legacy block to the new format:

1. Preserve the meaning of each entry.
2. Preserve the relative order unless there is a deliberate editorial reason to change it.
3. Assign stable `tip_id` values that can survive later text edits.
4. Assign coarse weights like `30`, `20`, `10`.
5. Keep the old text as close as possible unless the change is intentional.

## Comparison checklist

When reviewing a migrated block, compare:

- same NPC or instance target
- same number of meaningful entries
- same tactical intent
- same rough top-to-bottom order
- no accidental loss of role-specific or class-specific notes

## Known legacy categories

These can still exist in older data and should not be treated as migration bugs by default:

- `Legion`
- `Fluff`
- `Blank`

They are legacy-compatible, but not preferred for new authored content.

## Current recommendation

For regression checking, use this combination:

- compare against git history for the original block
- consult this file for the migration rules
- consult `docs/DATA_MODEL.md` for the new target structure

This gives us a stable reference without bloating the docs with a full copy of the database.
