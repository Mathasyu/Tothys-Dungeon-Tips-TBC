# Tothys Dungeon Tools TBC Rewrite Plan

## Scope

- Produkt im Spiel bleibt `Kiesel Dungeon Tool`
- Rewrite-Code lebt in `Tothys-Dungeon-Tools-TBC`
- Fokus ist ausschliesslich `TBC`
- keine Adapter-Schicht zur alten Runtime
- neue Runtime liest direkt aus dem normalisierten Datenmodell

## Done

- Rewrite-Addon-Ordner angelegt
- minimales Addon-Geruest angelegt
- Dateischnitt auf das Wesentliche reduziert:
  - `Tothys-Core.lua`
  - `Tothys-Database.lua`
  - `Tothys-UI.lua`
- normalisierten Exporter erstellt
- Validierung fuer das normalisierte Modell erstellt
- Export erfolgreich erzeugt
- volle generierte Lua-Runtime-DB fuer den Rewrite erzeugt und im Addon eingebunden

## Current source of truth

- alte Runtime und alte Inhalte bleiben vorerst im alten Addon
- der Rewrite baut fachlich auf `NORMALIZED_CONTENT_MODEL.json` auf
- die Rewrite-Runtime laedt aktuell `Tothys-Database.lua`
- Migrationen muessen reproduzierbar per Script erfolgen

## Next steps

1. Das normalisierte Modell als finalen Rewrite-Standard abnehmen.
2. Das neue Addon nur gegen diese Struktur entwickeln.
3. Kernmodule fuer Rewrite aufbauen:
   - Datenladen
   - Locale-Lookup
   - Instanz-/NPC-Lookup
   - Hauptfenster
4. Danach Browser und Editor neu aufsetzen.
5. Export- und spaeter Import-Workflows an die neue Struktur anbinden.

## Guardrails

- keine Laufzeit-Transformationen in der Datenbank
- keine Parallelstrukturen wie `tipsMap_enUS` / `tipsMap_deDE`
- neue Sprachen nur als weitere Locale-Felder innerhalb derselben Objekte
- neue NPCs, Instanzen und Erweiterungen muessen additiv einfuegbar sein
