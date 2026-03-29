# Tothys Dungeon Tools TBC Data Model

## Ziel

Das Rewrite-Addon nutzt ein generisches, lokalisiertes Datenmodell ohne sprachspezifische Top-Level-Tabellen.

## Top-level Struktur

```lua
db = {
  meta = { ... },
  expansions = { ... },
  instances = { ... },
  instanceNpcs = { ... },
  npcs = { ... },
  tips = { ... },
  instanceTips = { ... },
  instanceDetails = { ... },
}
```

## Prinzipien

- keine Top-Level-Namen wie `tipsMap_deDE`
- Lokalisierung liegt inline:
  - `name.enUS`
  - `name.deDE`
  - `text.enUS`
  - `text.deDE`
- Instanzen, NPCs und Tipps sind logisch getrennt
- Beziehungen zwischen Instanzen und NPCs liegen in `instanceNpcs`
- `legacy_id` bleibt fuer Migration, Export und Rueckverfolgbarkeit erhalten
- NPC-Kampftipps tragen zusaetzlich `legacy_npc_name.enUS` fuer Review und Uebersetzung

## Bedeutungen

### `expansions`

- listet Erweiterungen
- haelt Reihenfolge und Namen
- Instanzen werden ueber `instances[instanceKey].expansion` zugeordnet

### `instances`

- haelt reine Instanz-Metadaten
- keine eingebetteten NPC-Namen oder Tippbloecke

Beispiel:

```lua
instances.hellfire_ramparts = {
  key = "hellfire_ramparts",
  expansion = "tbc",
  order = 1,
  type = "Dungeon",
  mapIDs = { 347 },
  name = {
    enUS = "Hellfire Ramparts",
    deDE = "Hoellenfeuerbollwerk",
  },
}
```

### `instanceNpcs`

- ordnet einer Instanz ihre NPCs zu
- gruppiert nach:
  - `bosses`
  - `others`
- fuehrt lokalisierte Namen pro NPC innerhalb des Instanzkontexts

### `npcs`

- globale NPC-Entitaeten
- enthalten:
  - `id`
  - `name`
  - `instances`

### `tips`

- NPC-Kampftipps
- Pfad ist:
  - `tips -> instanceKey -> npcID -> localTipID`

Beispiel:

```lua
tips.hellfire_ramparts[17259]["01"] = {
  id = "01",
  legacy_id = "ramparts_17259_01",
  legacy_npc_name = {
    enUS = "Bonechewer Hungerer",
  },
  type = "Important",
  weight = 10,
  text = {
    enUS = "Has a disarm and an attack power debuff.",
    deDE = "Hat Entwaffnen und einen Angriffskraft-Debuff.",
  },
}
```

### `instanceTips`

- instanzweite Kampfhinweise
- Pfad ist:
  - `instanceTips -> instanceKey -> localTipID`

### `instanceDetails`

- Browser-/Editor-Kontextinfos pro Instanz
- Felder:
  - `travel`
  - `attunement`
  - `notes`
  - `lore`

## Regeln

- neue Sprachen werden nur als weitere Locale-Felder hinzugefuegt
- neue NPCs und Instanzen duerfen nur additive Aenderungen erfordern
- das Addon soll direkt mit dieser Struktur arbeiten, nicht mit einem Adapter zur alten DB
- Generator und Validierung muessen reproduzierbar dieselbe Struktur erzeugen
