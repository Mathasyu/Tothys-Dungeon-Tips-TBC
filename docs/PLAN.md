   # Kiesel Dungeon Tool Plan

## Current direction

The addon is moving from a single flat tip database toward a structured content system with:

- hardcoded expansions
- hardcoded dungeons and raids
- NPC-based combat tips
- instance-wide notes
- browser-only instance details
- localized content
- a future user override layer that does not modify shipped addon data

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
- separate `Info` config subpage
- hardcoded content catalog groundwork
- instance lookup via `mapID -> instanceKey`
- mixed support for old and new tip formats
- weighted tips in the new format
- instance info display in the main frame
- browser preview for instance info and NPC tips
- browser-only instance detail section for travel, attunement, extra notes, and lore
- browser selection mirrored into the main frame
- role/class filter refactor
- main tip window scrollbar

## Next planned implementation steps

1. Keep the config layout stable and scrollable.
2. Expand the hardcoded `contentCatalog` beyond the current test instance.
3. Gradually migrate shipped tips from the legacy format to the new weighted format.
4. Introduce a separate user data layer for:
   - tip overrides
   - disabled shipped tips
   - user-added NPC tips
   - user-added instance notes
5. Add reset actions:
   - single tip
   - whole NPC
   - whole instance
   - all user data
6. Add editor workflows only after the user data layer is stable.
7. Plan export/import for user data only.

## UI decisions

The `Content Browser` is intentionally a full preview and should show all relevant tips.

The addon also has a dedicated `Info` page for project background and development status.

The `Content Browser` may also show browser-only `Zusatzinfos` for an instance, such as:

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
- `Zusatzinfos` are browser-only and should not clutter the live dungeon entry display.
- The `Info` page explains that Kiesel Dungeon Tool is the successor to QE Dungeon Tips and that development is still in progress.
- Expansion, instance, and content structure are defined by code, not by a free-form editor.
- Large structural changes should be discussed and approved before implementation.
