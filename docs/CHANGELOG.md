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
- Added `/kdt toggle` as a slash command to show or hide the main frame
- Added `/kdt lang <auto|en|de>` to switch the addon language directly and reload immediately
- The `Info` page now includes a localized slash command section in English and German
- Dungeon/Raid selection in `Content Browser`, `Tip Editor`, and `Dungeon Editor` is now grouped for TBC:
  - localized zone headers such as `--- Zangarmarschen ---`
  - a dedicated `--- Raids ---` section at the end
  - non-selectable group headers inside the dropdowns
- The `Info` page now explains that some newer raid overview texts are AI-assisted drafts, asks for issue reports via GitHub, and documents the preferred fix-then-export workflow
- Raid-level instance overview texts are now available in the new `instanceContent` structure for all current TBC raids
- Raid names, overview texts, and browser/editor-facing raid details were translated for German support
- The old duplicate English raid instance overview blocks for `Karazhan`, `Gruul`, `Magtheridon`, and `Zul'Aman` were removed so raid overviews now come from `instanceContent`
- `PLAN.md`, `DATA_MODEL.md`, and the agent instructions were updated to reflect `instanceContent` as the preferred instance-wide content model and to require keeping these docs in sync with accepted changes
- The old duplicate English dungeon overview blocks for `Hellfire Ramparts`, `Blood Furnace`, `Auchenai Crypts`, `Sethekk Halls`, and `Shadow Labyrinth` were removed so these instance overviews now come from `instanceContent`
- The remaining duplicate legacy English instance overview blocks are now cleaned up, leaving `instanceContent` as the primary source for migrated dungeon and raid overviews
- Instance-wide shipped lookup was refactored behind central addon getters so Config and Frame code no longer rebuild the same fallback logic in multiple places
- NPC shipped tip lookup and catalog NPC name lookup were refactored behind central addon getters so Browser and Tip Editor no longer duplicate locale fallback rules
- The repeated five-dropdown NPC selector UI for `Content Browser` and `Tip Editor` was consolidated behind shared helper functions to reduce duplicated view/controller code
- Expansion/instance selection retention and dropdown syncing were consolidated behind shared helpers so Browser, Tip Editor, and Dungeon Editor now follow the same selection rules
- The `Dungeon Editor` update flow was split into smaller render helpers for preview data, user tips, addon tips, and detail fields without changing user-facing behavior
- Catalog `npcNames` now carry both `enUS` and `deDE` keys throughout the TBC data set; missing German names currently fall back to identical English placeholder text until translated properly
- `tipsMap_deDE` now starts as a deep copy of `tipsMap_enUS`, giving the addon a full German working copy of shipped NPC tips before the texts are translated properly
- The first German dungeon-NPC name pass now covers major TBC dungeon bosses and encounter NPCs in the catalog so Browser and Editor labels read more naturally in German
- Added `docs/EXTERNAL_SOURCES.md` to track external data sources such as `wago.tools` / `wow.tools` / `wow.tools.local` and to record later license or usage findings before release
- Added a first real `tipsMap_deDE` dungeon-tip pass for major bosses and encounters from early TBC dungeons, using German override entries on top of the German working copy
- Added `docs/NPC_NAME_TRANSLATIONS.lua` as a non-runtime workspace for NPC-name translation, grouped by instance and carrying `status` plus `checked` workflow fields
- Added `scripts/npc_name_review.py` to export unresolved NPC-name rows to `docs/NPC_NAME_TRANSLATIONS_REVIEW.csv` and to import reviewed German names back into `docs/NPC_NAME_TRANSLATIONS.lua`
- The review import keeps `checked` untouched on purpose; it only updates `deDE` and `status`
- `scripts/npc_name_review.py` can now import TBC NPC German names directly from QuestieDB's `Database/l10n/Tbc/l10nNpcData.lua-table`
- Added `docs/QUESTIEDB_TBC_NPC_DE.csv` as a local extraction artifact for QuestieDB-based TBC NPC-name imports
- `docs/NPC_NAME_TRANSLATIONS.lua` was filled from QuestieDB for TBC NPC German names without touching `checked`
- `scripts/npc_name_review.py` can now also apply workspace NPC German names directly into `Tothys-Database.lua`
- `Tothys-Database.lua` `npcNames.deDE` entries were updated from the QuestieDB-based workspace import
- Added `docs/TRANSLATION_GLOSSARY.md` to define preferred German WoW wording for future tip translations
- Completed a fuller German `tipsMap_deDE` pass for `Hellfire Ramparts`, including remaining trash, caster, watcher, hound, and sentry tips in the new glossary style
- Continued the top-down German `tipsMap_deDE` pass with the full `The Blood Furnace` boss/trash block and the next `The Shattered Halls` boss block in the same glossary style
- Extended the same top-down `tipsMap_deDE` pass through the next `The Shattered Halls` add and trash block, keeping the German glossary style consistent
- Added a focused German `Gruul's Lair` pass for the currently populated Gruul and trash entries so the raid block is usable immediately before further top-down translation continues
- Added the populated `Magtheridon's Lair` German pass so both early TBC raid blocks are available in German for upcoming raid use
- Filled the previously empty `Gruul's Lair` council encounter entries in both `tipsMap_enUS` and `tipsMap_deDE` so Maulgar and his advisors now have usable shipped tips
- Cross-checked the new `Gruul's Lair` council tips against TBC guide references and tightened a couple of entries to stay conservative on shipped encounter advice
- Continued the German `tipsMap_deDE` pass through the next `Black Morass` and early `Mechanar` blocks while keeping IDs, types, and weights unchanged
- Continued the same `tipsMap_deDE` pass through the next `Arcatraz` block and mirrored the currently empty `Magisters' Terrace` shipped placeholders into the German map
- Continued the German `tipsMap_deDE` pass through more `Old Hillsbrad` and the opening `Black Morass` boss/friendly block, still only changing text content
- Completed the remaining populated `Arcatraz` German tip block so the prison-event mobs and the missing trash/boss entries now match the shipped English coverage
- Continued the German tip translation with the opening `Karazhan` boss block so `Midnight` and `Attumen` now have full localized shipped tips
- Added the next large `Karazhan` German tip pass for `Moroes`, `Barnes`, `Maiden`, `Curator`, `Illhoof`, `Shade of Aran`, and `Netherspite`
- Continued the large `Karazhan` German pass with full shipped tips for `Prince Malchezaar` and `Nightbane`
- Continued the `Karazhan` German pass with the `Servant Quarters` bosses and the populated `Moroes' Dinner Guests` entries
- Continued the `Karazhan` German pass with the full populated `Opera Event` block
- Continued the `Karazhan` German pass with the complete `Chess Event` block and the next visible Karazhan trash segment
- Continued the `Karazhan` German pass through the remaining visible populated trash segment before the Zul'Aman section
- Added a first built-in minimap button: left click toggles the main frame, right click opens the `Content Browser`, `Ctrl + Click` opens config, and `Shift + Drag` moves the button around the minimap
- Added a localized config option for showing or hiding the minimap button, with the button enabled by default
- Improved the minimap button setup by giving it a clearer default position and attaching it to the minimap cluster for more reliable visibility
- Replaced the minimap-button config checkbox with a single localized toggle button that switches between show and hide states
- Anchored the minimap button directly to the minimap and made its creation and saved-angle positioning more robust
- Refined the minimap button visuals to sit more cleanly on the minimap ring and moved its default position further outward
- Switched the minimap button to the standard round tracking-button layout with proper ring offsets and a masked icon area
- Split the former `Content Browser` into a `Dungeon-Browser` and a dedicated `NPC-Browser`
- Renamed editor pages to `NPC-Editor` and `Dungeon-Editor`
- The new `Dungeon-Browser` now focuses on dungeon and raid overview data without mixing in NPC tip output
- The new `NPC-Browser` now handles NPC selection separately and includes `Selection` plus placeholder `Abilities` tabs for later boss-ability content
- Added separate saved selection state for `Dungeon-Browser` and `NPC-Browser` so the split pages no longer reuse one shared browser selection
- Restored the browser-to-main-frame preview bridge so selecting a dungeon or NPC in the new browser pages updates the main frame again
- Browser and editor tip previews now render tip-type icon plus label markup instead of plain bracket text only
- Added a `>>>` button to the main frame header that opens `NPC-Browser` with the currently shown NPC preselected
- Updated the minimap tooltip so right click points to `Dungeon-Browser`
- The `Info` page now explains the `>>>` quick jump from the main frame into `NPC-Browser`
- Added `scripts/audit_multilanguage.py` and `docs/TRANSLATION_AUDIT.md` to track multilingual completion, duplicate German overrides, structural parity, and remaining untranslated explicit `deDE` tip blocks
- Materialized `tipsMap_deDE` as explicit static data for every `tipsMap_enUS` NPC entry so the German map no longer depends on runtime cloning or fallback generation
- Cleaned up the broken Old Hillsbrad German drift block by resetting it to explicit English placeholder counterparts and then re-translating it in controlled batches
- Fixed the `17536` German tip block by removing the old runtime tip-id rewrite hack and restoring static `17536` tip IDs directly in the data file
- Standardized `18371` and `18373` tip IDs to the current naming scheme and aligned their German metadata with the English structure
- Fixed the remaining structural mismatch chain in `tipsMap_deDE`, including the broken `17491` English source block, so the audit now reports zero structural mismatches and zero duplicate German overrides
- Documented in `DATA_MODEL.md` that `tipsMap_deDE` must structurally mirror `tipsMap_enUS`; only the localized text may differ
- Improved the translation audit with a progress summary that separates completed cleanup work from still-open translation tasks
- Cleared the `partially translated overrides` audit bucket by translating the remaining non-empty English carry-over lines in the affected German blocks
- Continued the German `tipsMap_deDE` translation in controlled batches for `Old Hillsbrad`, `Shadow Labyrinth`, `Mechanar`, `Botanica`, and `Mana-Tombs`
- Continued the controlled German `tipsMap_deDE` translation with a larger `Underbog` batch and reduced fully identical explicit `deDE` overrides to `393`
- Finished the remaining non-empty English `tipsMap_deDE` carry-over batch for `Blood Furnace`, `Underbog`, `Steamvaults`, `Mana-Tombs`, and example entries so the audit now reports `0` non-empty untranslated explicit German overrides
- Reviewed the remaining identical `npcNames` entries against local QuestieDB TBC localization and confirmed they are legitimate unchanged names rather than unresolved German placeholders
- Removed the visible `TEST:` marker from `instanceContent.auchenai_crypts` and fixed the audit's `instanceContent` block parsing so shipped instance-content test markers are counted correctly

### Notes

- Shipped tips are treated as read-only base data at runtime
- Personal changes live in `TDTUserData`
- Legacy runtime support remains in code for compatibility, but `tipsMap_enUS` itself is now migrated
- Browser share buttons now use `RW` instead of `RL` for raid warning output.
