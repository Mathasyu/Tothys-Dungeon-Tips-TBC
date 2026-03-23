# Kiesel Dungeon Tool Plan

## Current direction

The addon is moving from a single flat tip database toward a structured content system with:

- hardcoded expansions
- hardcoded dungeons and raids
- NPC-based combat tips
- instance-wide notes
- browser-only instance details
- localized content
- a user override layer that does not modify shipped addon data
- locale-scoped user data tied to the language selected inside the addon

The current visible addon name is `Kiesel Dungeon Tool`.
Internal file names and legacy identifiers can remain unchanged for now.

## Agreed scope

The first supported expansions are:

- `classic`
- `tbc`

The hierarchy in the config browser is:

1. Expansion
2. Dungeon / Raid
3. NPC

Instances are modeled as a whole, not by individual sub-zone.
An instance may still contain multiple `mapIDs`.

## What is already implemented

- locale-aware NPC tip lookup with `enUS` fallback
- separate `Content Browser` config subpage
- separate `Dungeon Editor` config subpage
- separate `Tip Editor` config subpage
- separate `Info` config subpage
- hardcoded content catalog groundwork
- broad TBC catalog coverage for raids and dungeons
- instance lookup via `mapID -> instanceKey`
- mixed support for old and new tip formats
- weighted tips in the new format
- `tipsMap_enUS` fully migrated to the new shipped format
- `instanceContent[instanceKey]` as the new primary structure for instance-wide content
- TBC dungeon and raid overview content migrated into `instanceContent`
- raid overviews now read from `instanceContent` without duplicate legacy English raid blocks
- early dungeon overviews now also read from `instanceContent` without duplicate legacy English dungeon blocks
- instance-wide shipped lookup is now centralized through addon-level getters instead of being rebuilt in multiple UI paths
- NPC browser/editor lookup now follows the same pattern for shipped NPC tips and catalog NPC names
- The shared NPC selector block in `Content Browser` and `Tip Editor` is now built and synchronized through common UI helpers instead of two separate implementations
- Expansion/instance selection retention and dropdown syncing are now shared across Browser, Tip Editor, and Dungeon Editor instead of being reimplemented per panel
- The large `Dungeon Editor` update path is now being split into smaller render helpers so the controller flow stays readable and easier to test while the UI remains unchanged
- instance info display in the main frame
- browser preview for instance info and NPC tips
- browser-only instance detail section for travel, attunement, extra notes, and lore
- browser selection mirrored into the main frame
- grouped `Dungeon / Raid` dropdowns for TBC in browser and editors:
  - zone-based dungeon grouping
  - `Raids` grouped at the end
- role/class filter refactor
- default config aligned to the current intended player-facing setup:
  - all categories on except `Fluff`
  - `MYROLEONLY` off
  - `MYCLASSONLY` off
  - all explicit role/class filters on
  - font size `13`
  - language `Auto`
- main tip window scrollbar
- frame show/hide via config and frame header controls
- SavedVariables user data layer groundwork
- working editor flows for personal NPC tips
- working editor flows for personal instance notes
- working editor controls for shipped NPC tips
- working editor controls for shipped instance tips
- working editor controls for shipped browser-only instance details
- verification script for legacy DB vs current DB vs catalog IDs

## Next planned implementation steps

1. Keep the config layout stable and scrollable as more editor controls are added.
2. Finish documenting and validating the current TBC data model and workflows.
3. Expand `Classic` metadata and content as work begins there.
4. Continue replacing old instance-wide data tables with the new `instanceContent` structure until the remaining legacy instance blocks can be retired safely.
5. Review and refine the newly added raid overview texts and translations before final release signoff.
6. Add broader reset actions in the UI:
   - whole NPC
   - whole instance
   - all user data
7. Extend validation scripts:
   - per-instance catalog vs shipped DB checks
   - catalog IDs without tips
   - tip IDs without catalog entries
   - optional later comparison with verified external references
8. Plan export/import for user data only.
   - user data should be exportable per locale
   - the addon should only show user data for the currently selected addon language
   - preferred correction workflow:
     - fix text inside the addon first
     - export the corrected strings afterward
   - add export support for translated or corrected strings so community fixes can be shared more easily
9. Revisit config profiles later for display settings only, not for user-authored tips.
10. Add a config option `Show NPC IDs` so users can decide whether IDs are shown in browser/editor labels and in the live frame.
11. Keep config toggles truly editable when exposed in the UI.
    `Show Tips in Dungeons` is now meant to be a real user setting, not a locked placeholder.
12. Add a minimap icon with a user-facing toggle so the addon can be opened quickly without slash commands.
13. Create a custom `Kiesel Dungeon Tool` logo and dedicated minimap button artwork to replace the current placeholder icon.

## UI decisions

The `Content Browser` is intentionally a full preview and should show all relevant tips.

The editor area is now intentionally split:

- `Dungeon Editor` for instance-level notes
- `Tip Editor` for NPC-level notes

while the `Content Browser` remains focused on reading and browsing.

Editing model:

- base tips may be overridden or hidden, but not deleted
- personal tips may be edited, hidden, or hard deleted

Current editor status:

- personal NPC tips can already be added, edited, hidden, and hard deleted
- personal instance notes can already be added, edited, hidden, and hard deleted
- base NPC tips can already be listed, hidden, reset, and overridden for `text` and `weight`
- base instance tips can already be listed, hidden, reset, and overridden for `text` and `weight`
- browser-only instance details can already be overridden and reset per field in `Dungeon Editor`
- base NPC tip `type` stays fixed to the shipped addon value

The addon also has a dedicated `Info` page for project background and development status.

The `Content Browser` may also show browser-only `More Infos` for an instance, such as:

- how to get there
- attunement requirements
- extra instance notes
- short lore or RP flavor

The main addon frame follows the user's config filters for:

- role-specific tips
- class-specific tips
- other enabled categories

## Naming decisions

- visible addon name: `Kiesel Dungeon Tool`
- slash command: `/kdt`
- chat prefix: `KDT:`

## Notes

- Localized NPC names can come from the WoW client.
- `Instance Info` is the short tactical text shown in the main frame.
- `More Infos` are browser-only and should not clutter the live dungeon entry display.
- `Content Browser`, `Dungeon Editor`, and `Tip Editor` are intentionally separate.
- The `Info` page explains that Kiesel Dungeon Tool is the successor to QE Dungeon Tips and that development is still in progress.
- Expansion, instance, and content structure are defined by code, not by a free-form editor.
- `npcIDs` in the catalog must come from the corresponding instance section in the shipped DB.
- Runtime display still resolves tips primarily by NPC ID; the catalog drives browsing and editing.
- The current validation script confirms that legacy and current shipped tip IDs match 1:1 and highlights catalog IDs without shipped entries.
- Shipped content may fall back from `deDE` to `enUS`, but user-authored content must stay locale-specific and must not mix across addon languages.
- `instanceContent` is now the preferred structure for instance-wide shipped data:
  - `info` uses weighted tip entries with inline locale text
  - `details` stores `travel`, `attunement`, `notes`, and `lore` with inline locale text
- `Show NPC IDs` is now a real config setting and should affect browser/editor labels and the live frame consistently.
- Large structural changes should be discussed and approved before implementation.
- Some newer raid overview texts were drafted with AI and must be reviewed before release-quality signoff.
- If text issues are found, they should be documented in GitHub issues and ideally corrected in the addon before later export/share workflows are used.
