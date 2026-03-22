# External Sources

This file tracks external sources that may be used during development.

Before release, please verify:

- whether usage is allowed
- which license or terms apply
- whether attribution is required
- whether automated extraction or redistribution is allowed

## Candidate sources

### Wago Tools

- URL: [wago.tools](https://wago.tools/)
- Purpose:
  - likely useful as a technical reference for WoW DB2/DBC-based data
  - promising source for validating NPC IDs and localized NPC names
- Notes:
  - current site is heavily JavaScript-driven
  - direct lightweight lookup was not yet confirmed in this project session
  - treat as a candidate source for later tooling or verification

### wow.tools

- URL: [wow.tools](https://wow.tools/)
- Purpose:
  - historical reference for WoW database browsing
- Notes:
  - the main site indicates that it was retired in May 2025
  - it references `wow.tools.local` for local offline use
  - online DB functionality appears to have moved in practice toward `wago.tools`
  - treat this as a historical pointer rather than the main active source

### wow.tools.local

- URL reference:
  - mentioned by [wow.tools](https://wow.tools/)
- Purpose:
  - local/offline browsing of WoW DB2-style data
  - potentially useful for localized NPC-name verification, including `deDE`
- Notes:
  - not yet integrated into this project workflow
  - may be useful later for controlled data validation

### QuestieDB

- URL: [QuestieDB](https://github.com/Questie/QuestieDB)
- Relevant files:
  - `Database/l10n/Tbc/l10nNpcData.lua-table`
  - `Database/l10n/l10n.lua`
  - `Meta/L10nMeta.lua`
- Purpose:
  - direct `npcID -> deDE` source for TBC NPC names
  - local extraction source for `docs/NPC_NAME_TRANSLATIONS.lua`
- Notes:
  - locally cloned and used for TBC NPC German-name import
  - localization strings are packed with `‡` delimiters and locale order from `Meta/L10nMeta.lua`
  - English NPC names still come from our own shipped data; German NPC names can be filled from QuestieDB
- License note:
  - repository currently shows `GPL-3.0`
  - verify before release whether attribution, reuse, or redistribution rules affect this project

## Project rule

- Add new external sources here when they are used or considered seriously.
- If a source reveals license or usage information during research, record it here.
- Do not assume a source is safe to reuse commercially or redistribute from until checked.
