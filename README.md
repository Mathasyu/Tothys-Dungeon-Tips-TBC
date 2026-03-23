# Kiesel Dungeon Tool

Kiesel Dungeon Tool is the successor to QE Dungeon Tips for WoW TBC Anniversary.

The addon helps players, dungeon groups, and raid leads keep important encounter notes close at hand without editing the shipped addon data directly.

## Current features

- `Dungeon-Browser` for dungeon and raid overview data
- `NPC-Browser` for NPC-specific tips
- `Dungeon-Editor` for instance-wide notes
- `NPC-Editor` for NPC-specific notes
- shipped `Addon Tips` plus editable `Personal Tips`
- localized content support
- locale-specific user data
- minimap button for quick access
- quick jump from the main frame to `NPC-Browser` via `>>>`

## How it works

**Dungeon and NPC-Browser**

Use `Dungeon-Browser` to look up dungeon and raid overview data. Use `NPC-Browser` to browse NPC-specific tips without mixing them into the instance overview.

**Dungeon and NPC-Editor**

`Dungeon-Editor` is for instance-wide notes and `More Infos`. `NPC-Editor` is for NPC-specific tips. `Addon Tips` are the built-in notes that come with the addon. They can be adjusted or hidden without changing the original addon data. `Personal Tips` are your own notes.

**Weighting**

Weight controls the order of tips. Higher values appear first. The built-in addon tips usually start at `10` and go up in steps of `10`, which makes it easy to place your own notes in between them when needed.

**Quick jump to the current NPC**

The `>>>` button in the main window jumps straight to `NPC-Browser` and preselects the NPC currently shown there when available.

## Project background

Kiesel Dungeon Tool is based on QE Dungeon Tips and is being actively reworked toward a more structured, multilingual content system.

The project is still in progress. Some newer raid overview texts started as AI-assisted drafts and should still be reviewed before final release-quality signoff.

If you spot mistakes or unclear wording, please report them through the project's GitHub issue tracker.

The preferred workflow is to improve text inside the addon first and export corrected strings later, once the export workflow is finalized.

## Slash commands

Use these commands in chat:

- `/kdt config` opens the addon settings
- `/kdt show` shows the main window
- `/kdt hide` hides the main window
- `/kdt toggle` toggles the main window
- `/kdt test` shows a test preview
- `/kdt lang auto` switches to `Auto`
- `/kdt lang en` switches to `English`
- `/kdt lang de` switches to `German`

## Installation

1. Download the latest release ZIP.
2. Extract it into your WoW `Interface/AddOns` folder.
3. Make sure the addon folder is named correctly.
4. Start WoW and enable the addon on the character selection screen.

## Latest release

Latest release ZIP:

- [Tothys-Dungeon-Tips-TBC.zip](https://github.com/Mathasyu/Tothys-Dungeon-Tips-TBC/blob/release/2026-Q1-02-02_0.9.2/Tothys-Dungeon-Tips-TBC.zip)

## Status

Current focus:

- refining multilingual content
- reviewing translated tips
- extending validation and export workflows
- polishing UI and browser/editor usability

## Notes

- `Dungeon Info` is the short tactical text shown in the main frame.
- `More Infos` are intended for browser/editor use and should not clutter the live encounter display.
- `User` data is scoped to the language selected inside the addon.
- `Show NPC IDs` can be toggled in the addon settings.
