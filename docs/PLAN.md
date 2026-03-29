# Kiesel Dungeon Tool Plan

## Current direction

Kiesel Dungeon Tool is moving from a single flat tip database toward a structured, localized content system with:

- hardcoded expansions
- hardcoded dungeons and raids
- NPC-based combat tips
- instance-wide notes
- browser-only instance details
- localized shipped content
- a user override layer that does not modify shipped addon data
- locale-scoped user data tied to the language selected inside the addon

The current visible addon name is `Kiesel Dungeon Tool`.
Internal file names and legacy identifiers can remain unchanged for now.

## Agreed scope

The first supported expansions are:

- `classic`
- `tbc`

Instances are modeled as a whole, not by individual sub-zone.
An instance may still contain multiple `mapIDs`.

## What is already implemented

### Data and model

- hardcoded content catalog groundwork
- broad TBC catalog coverage for raids and dungeons
- instance lookup via `mapID -> instanceKey`
- mixed support for old and new tip formats
- weighted shipped tips in the new format
- `tipsMap_enUS` fully migrated to the new shipped format
- `tipsMap_deDE` exists as a full working copy of shipped NPC tips
- `instanceContent[instanceKey]` is now the preferred primary structure for instance-wide shipped content
- TBC dungeon and raid overview content has been migrated into `instanceContent`
- duplicate legacy English dungeon and raid overview blocks have been removed for the migrated TBC content
- instance-wide shipped lookup is centralized through addon-level getters
- shipped NPC tip lookup and catalog NPC-name lookup are centralized through addon-level getters
- QuestieDB-based German NPC names have been imported into `npcNames.deDE`

### Localization

- locale-aware NPC tip lookup with `enUS` fallback
- locale-aware shipped instance content
- locale-scoped user data:
  - personal tips, overrides, and hidden states are stored per addon language
  - shipped base content may still fall back from `deDE` to `enUS`
- config, browser, editor, info, and most visible UI strings are localized
- direct slash commands for locale switching:
  - `/kdt lang auto`
  - `/kdt lang en`
  - `/kdt lang de`
- German TBC translation work is well underway for:
  - dungeon and raid metadata
  - NPC names
  - large parts of `tipsMap_deDE`

### UI structure

- separate `Dungeon-Browser` config subpage
- separate `NPC-Browser` config subpage
- separate `Dungeon-Editor` config subpage
- separate `NPC-Editor` config subpage
- separate `Info` config subpage
- `Dungeon-Browser` focuses on instance-wide content only
- `NPC-Browser` focuses on NPC selection and NPC tips only
- `NPC-Browser` already has:
  - `Selection` tab
  - placeholder `Abilities` tab for future boss-ability data
- grouped `Dungeon / Raid` dropdowns for TBC in browser and editors:
  - zone-based dungeon grouping
  - `Raids` grouped at the end
- shared expansion/instance selection helpers across browser and editors
- shared five-dropdown NPC selector block across `NPC-Browser` and `NPC-Editor`

### Browser and editor functionality

- browser selection mirrored into the main frame
- browser-only instance detail section for:
  - travel
  - attunement
  - extra notes
  - lore / RP
- working editor flows for personal NPC tips
- working editor flows for personal instance notes
- working editor controls for shipped NPC tips
- working editor controls for shipped instance tips
- working editor controls for shipped browser-only instance details
- editing model:
  - base tips may be overridden or hidden, but not deleted
  - personal tips may be edited, hidden, or hard deleted
- base NPC tip `type` stays fixed to the shipped addon value
- shipped/addon tip rows in browser/editor previews now show tip-type markup with icon and label

### Main frame and access

- instance info display in the main frame
- main tip window scrollbar
- frame show/hide via config and frame header controls
- `/kdt toggle` implemented
- working minimap button with:
  - left click: toggle main frame
  - right click: open `Dungeon-Browser`
  - `Ctrl + Click`: open config
  - `Shift + Drag`: move button
- user-facing minimap show/hide toggle is implemented
- `>>>` header button is implemented:
  - jumps from the main frame into `NPC-Browser`
  - preselects the currently shown NPC when available

### Config and defaults

- default config is aligned to the current intended player-facing setup:
  - all categories on except `Fluff`
  - `MYROLEONLY` off
  - `MYCLASSONLY` off
  - all explicit role/class filters on
  - font size `13`
  - language `Auto`
- `Show Tips in Dungeons` is a real user-facing toggle
- `Show NPC IDs` is a real user-facing toggle
- `Show Important General Information` is a real user-facing toggle
- role/class filter labels use player-facing names instead of internal keys

### Validation, tooling, and docs

- verification script for legacy DB vs current DB vs catalog IDs
- NPC-name review/import tooling exists
- tip-translation review export tooling exists:
  - `scripts/export_tip_review.py`
  - `docs/TIP_TRANSLATION_REVIEW.json`
  - paired `enUS` / `deDE` tip lines
  - grouped by instance
  - bosses first, then other NPCs
  - per-tip `checked` flag preserved across regenerations
- external source tracking exists in `docs/EXTERNAL_SOURCES.md`
- translation glossary exists in `docs/TRANSLATION_GLOSSARY.md`
- `Info` page documents slash commands, feedback expectations, and clickable frame-tip behavior

## What is still open

### High priority

1. Continue and finish the German `tipsMap_deDE` translation pass.
2. Review and refine the newly added raid overview texts and translations before release signoff.
3. Expand `Classic` metadata and content as work begins there.
4. Extend validation scripts:
   - per-instance catalog vs shipped DB checks
   - catalog IDs without tips
   - tip IDs without catalog entries
   - optional later comparison with verified external references

### Content and export workflows

5. Plan and implement export/import for user data only.
   - user data should be exportable per locale
   - the addon should only show user data for the currently selected addon language
   - preferred correction workflow:
     - fix text inside the addon first
     - export corrected strings afterward
6. Add export support for translated or corrected strings so community fixes can be shared more easily.
7. Review AI-drafted raid overview texts and document corrections through GitHub issues when needed.
8. Add explicit export functionality in the UI and data workflow:
   - export user-authored tips
   - export corrected or translated strings
   - keep exports locale-aware where appropriate
9. Add an import path for reviewed tip translations:
   - read back checked or corrected `deDE` tip lines from the review workflow
   - apply them into `Tothys-Database.lua` without changing `tip_id`, `type`, or `weight`

### UI and UX improvements

10. Keep the config layout stable and scrollable as more controls are added.
11. Add broader reset actions in the UI:
   - whole NPC
   - whole instance
   - all user data
12. Fill the `NPC-Browser -> Abilities` tab with real boss-ability data later.
13. Create a custom `Kiesel Dungeon Tool` logo and dedicated minimap button artwork to replace the current placeholder icon.
14. Add profile functionality for display settings only, not for user-authored tips.
15. Revisit and refine the scope of profiles once export/import is in place.

## UI decisions

The browser area is intentionally split:

- `Dungeon-Browser` for instance-wide browsing
- `NPC-Browser` for NPC-specific browsing

The editor area is intentionally split:

- `Dungeon-Editor` for instance-level notes
- `NPC-Editor` for NPC-level notes

The main addon frame follows the user's config filters for:

- role-specific tips
- class-specific tips
- other enabled categories

`More Infos` remain browser/editor content and should not clutter the live dungeon-entry display.

The `>>>` button in the frame is the preferred quick path from live encounter view into `NPC-Browser`.

For chat sharing:

- browser rows already support explicit share buttons
- frame-tip click-to-chat is intentionally lightweight and should never auto-send a message

## Naming decisions

- visible addon name: `Kiesel Dungeon Tool`
- slash command: `/kdt`
- chat prefix: `KDT:`

## Notes

- localized NPC names should come from verified data sources, not free translation
- expansion, instance, and content structure are defined by code, not by a free-form editor
- `npcIDs` in the catalog must come from the corresponding instance section in the shipped DB
- runtime display still resolves combat tips primarily by NPC ID; the catalog drives browsing and editing
- shipped content may fall back from `deDE` to `enUS`, but user-authored content must stay locale-specific and must not mix across addon languages
- `instanceContent` uses:
  - `info` for weighted instance tips with inline locale text
  - `details` for `travel`, `attunement`, `notes`, and `lore` with inline locale text
- some newer raid overview texts were drafted with AI and must be reviewed before release-quality signoff
- if text issues are found, they should be documented in GitHub issues and ideally corrected in the addon before later export/share workflows are used
