# Kiesel Dungeon Tool Data Model

## Core principles

- Shipped addon data stays read-only at runtime.
- Personal changes must be stored separately in SavedVariables.
- IDs and technical keys are language-independent.
- Display names and text content are localizable.
- Instances are modeled as whole dungeons or raids.

## Terminology

- `legacy tips`
  - the old shipped format: `{"Type", "Text"}`
  - this format is still supported by runtime normalization for safety, but should no longer be authored
- `base tips`
  - the shipped addon tips that come with the addon
  - current target format: `{"tip_id", "Type", "Text", weight}`
  - these are read-only at runtime and can only be overlaid by user data
- `user tips`
  - personal additions stored in `TDTUserData`
  - these can be edited, hidden, or deleted by the user

Current status:

- `tipsMap_enUS` is now fully migrated to the new shipped format
- runtime legacy support remains in place for compatibility and safety
- the term `base tip` should now be preferred over `legacy tip` when talking about shipped content

## Content catalog

The navigation structure is hardcoded and groups content by expansion and instance.

Example shape:

```lua
addon.contentCatalog = {
  classic = {
    order = 1,
    name = {
      enUS = "Classic",
      deDE = "Classic",
    },
    instances = {
      -- instanceKey = { ... }
    },
  },
  tbc = {
    order = 2,
    name = {
      enUS = "The Burning Crusade",
      deDE = "The Burning Crusade",
    },
    instances = {
      auchenai_crypts = {
        order = 1,
        type = "Dungeon",
        mapIDs = { 256, 257 },
        name = {
          enUS = "Auchenai Crypts",
          deDE = "Auchenaikrypta",
        },
        npcNames = {
          [18371] = { enUS = "Shirrak the Dead Watcher" },
          [18373] = { enUS = "Exarch Maladaar" },
        },
        npcIDs = {
          18371,
          18373,
          18493,
        },
      },
    },
  },
}
```

Related lookup:

```lua
addon.instanceKeyByMapID = {
  [256] = "auchenai_crypts",
  [257] = "auchenai_crypts",
}
```

Catalog rules:

- `npcIDs` are navigation data for `Content Browser`, `Tip Editor`, and `Dungeon Editor`
- `npcNames` are optional localized labels used by the browser and editors
- `npcIDs` must be derived from the corresponding instance section in the shipped DB
- a catalog NPC may exist without a tip entry yet; this is valid navigation data, but should be easy to audit

## Tip categories

The agreed supported tip types are:

- `Important`
- `PriorityTargets`
- `Defensives`
- `Interrupts`
- `Dodge`
- `Advanced`
- `Personal`
- `HEALER`
- `TANK`
- `DAMAGE`
- `DRUID`
- `HUNTER`
- `MAGE`
- `PALADIN`
- `PRIEST`
- `ROGUE`
- `SHAMAN`
- `WARRIOR`
- `WARLOCK`

Legacy categories may still exist in older data, for example:

- `Fluff`
- `Legion`
- `Blank`

These should remain compatible for old entries, but should not be preferred for new data.

## NPC tips

Legacy shipped format:

```lua
{"Type", "Text"}
```

New shipped format:

```lua
{"tip_id", "Type", "Text", weight}
```

Example:

```lua
{"attumen_001", "Important", "Trash before Attumen must be cleared.", 30}
{"attumen_002", "HEALER", "Pause healing at the transition so the tank can secure aggro.", 20}
{"attumen_003", "Advanced", "Phase transition starts at 25%.", 10}
```

Meaning:

- `tip_id`: stable identifier for the shipped tip
- `Type`: category key
- `Text`: localized text
- `weight`: numeric sort order

## Instance-wide content

Instance-wide shipped content is now moving into a unified structure keyed by `instanceKey`.

Current preferred shape:

```lua
addon.instanceContent["auchenai_crypts"] = {
  mapIDs = { 256, 257 },
  info = {
    {
      id = "auchenai_instance_001",
      type = "Important",
      weight = 30,
      text = {
        enUS = "General dungeon note.",
        deDE = "Allgemeiner Dungeon-Hinweis.",
      },
    },
  },
  details = {
    travel = {
      enUS = "Auchindoun in Terokkar Forest.",
      deDE = "Auchindoun im Wald von Terokkar.",
    },
    attunement = {
      enUS = "No attunement required.",
      deDE = "Keine Zugangsvoraussetzung erforderlich.",
    },
    notes = {
      enUS = "Short but awkward instance with fears, bridges, and knockbacks.",
      deDE = "Kurze, aber unangenehme Instanz mit Furcht, Bruecken und Rueckstoessen.",
    },
    lore = {
      enUS = "A sacred draenei burial complex later corrupted by dark rituals and restless dead.",
      deDE = "Eine heilige draenei'sche Grabanlage, spaeter verdorben durch dunkle Rituale und ruhelose Tote.",
    },
  },
}
```

Meaning:

- `info`
  - short tactical layer intended for the main addon frame and tactical browser/editor use
- `details`
  - browser/editor-facing contextual layer for `travel`, `attunement`, `notes`, and `lore`
- `text.enUS` / `text.deDE`
  - inline localization for shipped instance content

Compatibility note:

- old `instanceInfo_enUS/deDE` and `instanceDetails_enUS/deDE` tables may still exist during migration
- runtime lookup already prefers `addon.instanceContent` and falls back only when needed
- migrated TBC raid overviews and the first TBC dungeon overview blocks have already had their duplicate legacy English instance tables removed
- shipped instance lookup is now meant to happen through central addon getters rather than duplicated per-UI fallback code
- shipped NPC tip lookup and catalog NPC name lookup should follow the same rule: keep locale fallback in addon-level model helpers, not in UI code
- repeated UI state for the five NPC selector dropdowns should be handled through shared helper functions so Browser and Tip Editor stay behaviorally aligned
- repeated expansion/instance selection logic should also stay centralized in shared UI helpers so all panels keep the same selection rules

Intended use:

- `travel`: how to reach the instance
- `attunement`: key or attunement context
- `notes`: extra out-of-combat instance context
- `lore`: short RP or story flavor

Rules:

- this block is for the `Content Browser`, not the main live tip frame
- it complements `Instance Info`, it does not replace it
- it can be longer and more descriptive than tactical tip text
- some newer raid-level overview texts may begin as AI-assisted drafts and should be treated as review-needed content until checked by maintainers

## Weight rules

- Higher `weight` values appear first.
- Shipped tips should normally use coarse increments such as `10`, `20`, `30`.
- User edits can use single-step values such as `21`, `22`, or `29`.
- If two entries have the same weight, order should remain stable.

This makes it possible to insert personal notes between shipped tips without rewriting the base data.

## Localization

Current structure:

```lua
tipsMap_enUS = { ... }
tipsMap_deDE = { ... }

addon.instanceContent = {
  some_instance = {
    info = {
      {
        id = "...",
        type = "Important",
        weight = 30,
        text = {
          enUS = "...",
          deDE = "...",
        },
      },
    },
    details = {
      travel = { enUS = "...", deDE = "..." },
      attunement = { enUS = "...", deDE = "..." },
      notes = { enUS = "...", deDE = "..." },
      lore = { enUS = "...", deDE = "..." },
    },
  },
}
```

UI text localization is currently handled through a shared locale table in the config code.

Practical rule:

- the current table-based approach is fine while the UI copy is still evolving quickly
- if the visible UI text keeps growing, it should later move into dedicated locale files
- data localization and UI localization should stay conceptually separate, even if both are still table-based right now

Rules:

- selected locale is controlled by config
- `Auto` uses the client locale
- if localized content is missing, fall back to `enUS`
- corrected or newly translated strings should later be exportable per locale so reviewed community fixes can be shared

## User data layer

The SavedVariables layer keeps all personal changes separate from shipped addon data.

Groundwork status:

- `TDTUserData` now exists as a SavedVariable
- user data is now grouped by locale inside `TDTUserData.locales`
- runtime merge helpers now exist for NPC tips and instance info
- helper functions now exist for adding NPC tips, adding instance tips, and resetting user data
- the editor already supports personal NPC tips with add, edit, hide / unhide, and hard delete
- the editor already supports personal instance notes with add, edit, hide / unhide, and hard delete
- the editor already supports base NPC tips with show, hide / unhide, reset, and text / weight override
- with empty user data, shipped behavior remains unchanged

Target shape:

```lua
TDTUserData = {
  locales = {
    enUS = {
      npcs = {
        [16151] = {
          overrides = {
            attumen_002 = {
              text = "My edited text",
              weight = 21,
            },
          },
          disabled = {
            attumen_001 = true,
          },
          additions = {
            user_001 = {
              id = "user_001",
              type = "HEALER",
              text = "My added note",
              weight = 25,
              hidden = false,
            },
          },
        },
      },
      instances = {
        karazhan = {
          additions = {
            note_001 = {
              id = "note_001",
              type = "Important",
              text = "My personal raid note",
              weight = 25,
              hidden = false,
            },
          },
        },
      },
    },
  },
}
```

Locale rules:

- shipped base tips are locale-aware and still fall back from `deDE` to `enUS`
- user data does not fall back across locales
- visible user data is always taken from the language currently selected in the addon
- if the addon runs in `Auto`, the active addon language is resolved from the client locale first
- user additions, user overrides, and user hide states are all locale-scoped

Current runtime behavior:

- NPC tip lookup goes through a merged path
- instance-wide lookup goes through a merged path and now prefers `addon.instanceContent`
- config and frame paths should use the central instance getters instead of their own fallback logic
- Content Browser previews now use the merged path as well
- `disabled`, `overrides`, and `additions` are respected when present
- legacy shipped tips without stable `tip_id` values can still be displayed, but are not yet ideal override targets

Current UI/editor state:

- `Content Browser` is read-only and uses merged data
- `Tip Editor` works on NPC-based content
- `Dungeon Editor` works on instance-based personal notes and shipped instance content
- browser selection can mirror into the live frame for preview purposes

## Editing rules

The editor should treat shipped addon tips and user-created tips differently.

### Base tips

Base tips are the shipped addon entries.

Allowed actions:

- override `text`
- override `weight`
- hide / unhide
- reset

Not allowed:

- changing the shipped `type`
- hard deleting the shipped entry

Storage model:

```lua
overrides[tipID] = {
  text = "Edited text",
  weight = 21,
}

disabled[tipID] = true
```

Important editor rule:

- hidden base tips must still be shown inside the editor so the user can unhide or reset them
- hidden base tips should not appear in the normal live display
- legacy shipped tips without a stable `tip_id` remain visible but read-only in the editor

Current implementation status:

- shipped NPC tips already support override, hide / unhide, and reset in `Tip Editor`
- shipped instance info already supports override, hide / unhide, and reset in `Dungeon Editor`
- shipped browser-only instance details already support per-field override and reset in `Dungeon Editor`

### Personal tips

Personal tips are user-created additions.

Allowed actions:

- change `type`
- change `text`
- change `weight`
- hide / unhide
- hard delete

Suggested storage model:

```lua
additions[userTipID] = {
  id = "user_npc_18495_...",
  type = "Personal",
  text = "My note",
  weight = 15,
  hidden = false,
}
```

Important editor rule:

- personal tips can be hidden without being deleted
- personal tips may also be hard deleted by removing them from `additions`
- personal tips may be edited in place by updating their `type`, `text`, and `weight`

Scope:

- personal NPC tips are handled in `Tip Editor`
- personal instance notes are handled in `Dungeon Editor`

## Why shipped tips need stable IDs

The addon cannot reliably identify a tip only by:

- NPC ID
- type
- text
- position in the list

Reasons:

- multiple tips can share the same type
- text can change in addon updates
- order can change in addon updates

Because of that, shipped tips need stable `tip_id` values.

## Reset model

The future reset options should operate on user data only:

- reset one modified tip to addon state
- reset all changes for an NPC
- reset all changes for an instance
- reset all personal addon data

Practical meaning:

- resetting a base tip removes its override and/or disabled flag
- resetting a personal tip is not the same as deleting it
- a personal tip can be hidden, unhidden, or hard deleted

Current helper coverage:

- reset user data for one NPC
- reset user data for one instance
- reset all user data
- reset one shipped NPC tip override / hidden state

## Filter model

The main frame uses dedicated role and class filter tables:

```lua
TDTConfig.RoleFilters = {
  MYROLEONLY = false,
  TANK = true,
  HEALER = true,
  DAMAGE = true,
}

TDTConfig.ClassFilters = {
  MYCLASSONLY = false,
  DRUID = true,
  HUNTER = true,
  MAGE = true,
  PALADIN = true,
  PRIEST = true,
  ROGUE = true,
  SHAMAN = true,
  WARRIOR = true,
  WARLOCK = true,
}
```

Rules:

- `MYROLEONLY` overrides the explicit role checkboxes
- `MYCLASSONLY` overrides the explicit class checkboxes
- the `Content Browser` preview is not filtered by these settings
- the main addon frame is filtered by these settings

Current default configuration:

- all category checkboxes are enabled except `Fluff`
- `MYROLEONLY` is disabled by default
- `MYCLASSONLY` is disabled by default
- all explicit role filters are enabled by default
- all explicit class filters are enabled by default
- font size defaults to `13`
- language defaults to `Auto`
- dungeon and raid display are both configurable and enabled by default

## Validation model

The project now also has a simple verification script:

```text
scripts/verify_db_ids.py
```

Current checks:

- all legacy tip IDs exist in the current shipped DB
- all current shipped tip IDs exist in the legacy snapshot
- catalog NPC IDs that have no legacy/current tip entry are reported
- current tip IDs that are not represented in the catalog are reported

This is a validation tool, not runtime data, but it is part of the current maintenance workflow for the data model.
