# External Sources

This file tracks all external sources referenced during development, research, data verification, and content preparation.

Important:
- These sources are listed for review before release.
- Licensing, terms of use, attribution requirements, and redistribution rights must be checked manually before shipping any content derived from them.
- If a source is only used for verification and no text/data is copied, that should still be noted.

## Status Labels

- `used`
  Source was referenced during development or research.
- `planned`
  Source is considered useful and may be used later.
- `license check pending`
  Terms/licensing still need manual review.
- `verification only`
  Intended only for fact checking, not for copying text directly.

## Source Registry

### Wowhead

- URL: [https://www.wowhead.com](https://www.wowhead.com)
- Status: `used`, `license check pending`, `verification only`
- Purpose:
  - Verify individual NPC IDs and names
  - Verify boss/event NPC identity
  - Cross-check encounter context
- Notes:
  - Used during Arcatraz cleanup, e.g. `20904` / `20905`
  - Also considered relevant for future NPC name verification in English and German
- Licensing / Usage Notes:
  - Not yet reviewed

### Warcraft Wiki

- URL: [https://warcraft.wiki.gg](https://warcraft.wiki.gg)
- Status: `used`, `license check pending`, `verification only`
- Purpose:
  - Verify raid/dungeon encounter structure
  - Verify NPC identity and encounter roles
  - Verify map / instance context
- Notes:
  - Used to confirm Karazhan encounter NPCs such as Hyakiss, Shadikith, Rokad, and The Crone
  - Also used as a supporting source for Blizzard-related data context
- Licensing / Usage Notes:
  - Not yet reviewed

### wow.tools

- URL: [https://wow.tools](https://wow.tools)
- Status: `used`, `planned`, `license check pending`, `verification only`
- Purpose:
  - Candidate primary technical source for `NPC ID -> localized name`
  - Candidate source for client/datamining-backed ID validation
- Notes:
  - Identified as a strong technical source for future EN/DE NPC name verification
  - Recommended as a more reliable ID-centric source than ad-hoc browser lookups
- Licensing / Usage Notes:
  - Not yet reviewed

### Blizzard / WoW Client Runtime Data

- URL: not a web source; runtime data from the game client / addon API
- Status: `used`, `license check pending`
- Purpose:
  - In-game verification of currently visible NPC names
  - Live behavior testing
- Notes:
  - Not a complete source for arbitrary `npcID -> name` lookups
  - Useful as contextual confirmation, not as the only browser/editor data source
- Licensing / Usage Notes:
  - Usage constraints still need to be clarified where relevant

### QE Dungeon Tips (original addon inspiration)

- URL: source/origin to be documented more precisely if reused directly
- Status: `used`, `planned`, `license check pending`
- Purpose:
  - Historical reference
  - Original inspiration / predecessor project
  - Legacy data comparison
- Notes:
  - Kiesel Dungeon Tool is described as a successor to QE Dungeon Tips
  - Any direct reuse or adaptation should be reviewed carefully before release
- Licensing / Usage Notes:
  - Not yet reviewed

## Review Checklist Before Release

- Confirm whether each source allows:
  - factual verification only
  - internal development use
  - derived data usage
  - redistribution inside an addon
  - attribution requirements
- If any text was adapted from an external guide, note:
  - exact source
  - whether wording was copied, summarized, or independently rewritten
- If any structured data was imported from an external source, note:
  - fields used
  - transformation performed
  - whether redistribution is allowed
