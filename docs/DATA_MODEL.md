# Kiesel Dungeon Tool Data Model

## Core principles

- Shipped addon data stays read-only at runtime.
- Personal changes must be stored separately in SavedVariables.
- IDs and technical keys are language-independent.
- Display names and text content are localizable.
- Instances are modeled as whole dungeons or raids.

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

## Instance info

Instance notes use the same structure as NPC tips and are stored by `instanceKey`.

Example:

```lua
instanceInfo_enUS["auchenai_crypts"] = {
  {"auchenai_instance_001", "Important", "General dungeon note.", 30},
  {"auchenai_instance_002", "HEALER", "Healer-specific dungeon note.", 20},
}
```

`Instance Info` is the short tactical layer intended for the main addon frame when entering an instance or browsing tactical notes.

## Browser-only instance details

The `Content Browser` can also show a separate browser-only detail block with contextual information that should not clutter the live tip window.

Example:

```lua
instanceDetails_enUS["auchenai_crypts"] = {
  travel = "Auchindoun in Terokkar Forest.",
  attunement = "No attunement required.",
  notes = "Short but awkward instance with fears, bridges, and knockbacks.",
  lore = "A sacred draenei burial complex later corrupted by dark rituals and restless dead.",
}
```

Intended use:

- `travel`: how to reach the instance
- `attunement`: key or attunement context
- `notes`: extra out-of-combat instance context
- `lore`: short RP or story flavor

Rules:

- this block is for the `Content Browser`, not the main live tip frame
- it complements `Instance Info`, it does not replace it
- it can be longer and more descriptive than tactical tip text

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

instanceInfo_enUS = { ... }
instanceInfo_deDE = { ... }

instanceDetails_enUS = { ... }
instanceDetails_deDE = { ... }
```

Rules:

- selected locale is controlled by config
- `Auto` uses the client locale
- if localized content is missing, fall back to `enUS`

## Planned user data layer

The SavedVariables layer keeps all personal changes separate from shipped addon data.

Groundwork status:

- `TDTUserData` now exists as a SavedVariable
- empty tables for `npcs` and `instances` are initialized
- runtime merge helpers now exist for NPC tips and instance info
- helper functions now exist for adding NPC tips, adding instance tips, and resetting user data
- the editor already supports personal NPC tips with add, edit, hide / unhide, and hard delete
- the editor already supports base NPC tips with show, hide / unhide, reset, and text / weight override
- with empty user data, shipped behavior remains unchanged

Target shape:

```lua
TDTUserData = {
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
}
```

Current runtime behavior:

- NPC tip lookup goes through a merged path
- instance info lookup goes through a merged path
- Content Browser previews now use the merged path as well
- `disabled`, `overrides`, and `additions` are respected when present
- legacy shipped tips without stable `tip_id` values can still be displayed, but are not yet ideal override targets

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

## Filter model

The main frame uses dedicated role and class filter tables:

```lua
TDTConfig.RoleFilters = {
  MYROLEONLY = true,
  TANK = false,
  HEALER = false,
  DAMAGE = false,
}

TDTConfig.ClassFilters = {
  MYCLASSONLY = true,
  DRUID = false,
  HUNTER = false,
  MAGE = false,
  PALADIN = false,
  PRIEST = false,
  ROGUE = false,
  SHAMAN = false,
  WARRIOR = false,
  WARLOCK = false,
}
```

Rules:

- `MYROLEONLY` overrides the explicit role checkboxes
- `MYCLASSONLY` overrides the explicit class checkboxes
- the `Content Browser` preview is not filtered by these settings
- the main addon frame is filtered by these settings
