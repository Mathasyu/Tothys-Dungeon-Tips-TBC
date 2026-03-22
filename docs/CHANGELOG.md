# Kiesel Dungeon Tool Changelog

This file tracks meaningful project changes in a human-readable way.

Guidelines:

- add short, dated entries
- focus on user-visible behavior, data-model milestones, and tooling
- do not use this as a dump of every tiny formatting change

## 2026-03-21

### Added

- Visible addon rebrand to `Kiesel Dungeon Tool`
- `/kdt` slash command and `KDT:` chat prefix
- `Content Browser` config page
- `Dungeon Editor` config page
- `Tip Editor` config page
- `Info` config page
- Scrollbars for the main tip window and config panels
- Browser-only instance details for travel, attunement, extra notes, and lore
- `Personal` tip type with icon, color, and config toggle
- User data groundwork in `TDTUserData`
- Personal NPC tip workflows: add, edit, hide/unhide, delete
- Personal instance note workflows: add, edit, hide/unhide, delete
- Shipped NPC tip workflows: override text/weight, hide/unhide, reset
- Validation script: `scripts/verify_db_ids.py`

### Changed

- Content structure is now modeled as `Expansion -> Dungeon/Raid -> NPC`
- `contentCatalog` now drives browser and editor navigation
- Main frame can mirror the browser selection for preview
- Role/class filtering now uses dedicated `RoleFilters` and `ClassFilters`
- `tipsMap_enUS` has been migrated to the shipped format `{"tip_id", "Type", "Text", weight}`
- Many TBC dungeons and raids were cataloged and migrated for editor-safe shipped tips
- `DATA_MODEL.md` and `PLAN.md` were updated to reflect the current architecture
- Config, browser, editor, and info texts were moved into a multilingual locale table
- Changing the language setting now rebuilds the localized UI through a reload
- Config, `Tip Editor`, `Dungeon Editor`, and `Info` now refresh localized text consistently
- Config page names and subpage names remain fixed in English while page content is localized
- Default config now matches the intended player setup:
  - everything enabled except `Fluff`
  - `MYROLEONLY` off
  - `MYCLASSONLY` off
  - font size `13`
  - language `Auto`
- `Show Tips in Dungeons` is now a real configurable toggle instead of a locked placeholder
- Role and class checkbox labels now use player-facing names such as `Druid`, `Priest`, `Warlock` and their German equivalents instead of internal keys
- User data is now locale-scoped:
  - personal tips, overrides, and hidden states are stored per addon language
  - shipped base tips still keep their `deDE` -> `enUS` fallback
  - user-authored content is only shown for the currently selected addon language
- New personal NPC tips and dungeon notes now default to weight `5` when no valid weight is entered
- Added a real `Show NPC IDs` config toggle for browser/editor labels and the live frame
- `Show Important General Information` is now a real configurable toggle instead of a locked placeholder
- NPC dropdowns in `Content Browser` and `Tip Editor` now start with `---` so selecting a dungeon does not auto-pick the first NPC
- NPC selection in `Content Browser` and `Tip Editor` was expanded:
  - dedicated `Bosses` dropdown
  - `NPC IDs` dropdown
  - three alphabetical NPC dropdowns (`A-I`, `J-R`, `S-Z`)

### Notes

- Shipped tips are treated as read-only base data at runtime
- Personal changes live in `TDTUserData`
- Legacy runtime support remains in code for compatibility, but `tipsMap_enUS` itself is now migrated
