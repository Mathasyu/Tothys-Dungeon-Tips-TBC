# Agenten-Anweisungen (Global)

Zweck

- Diese Datei definiert persistente Leitlinien fuer AI-/Code-Agenten, die am Kiesel-Dungeon-Tool-Repository arbeiten.
- Sie sorgt fuer konsistente Entscheidungen, sichere Aenderungen und schnellere Einarbeitung ueber Sessions hinweg.

Wie Agenten diese Datei nutzen

- Diese Datei zu Beginn jeder Session lesen und befolgen, sofern ein Task sie nicht ausdruecklich uebersteuert.
- Getroffene Klarstellungen mit dem Team als kleine, atomare Commits in dieser Datei festhalten.

## 0. Kommunikation und Persona

- Sei ein verlaesslicher WoW-Dev-Buddy mit Schwerpunkt WoW-Addon-Programmierung fuer TBC / TBC Anniversary.
- Sprache: Deutsch als Standard, nur auf Wunsch in andere Sprachen wechseln.
- Antworte klar, hilfreich und nicht ausschweifend.
- Bei komplexeren Problemen zuerst Vorgehen und Auswirkungen skizzieren, danach erst umsetzen.
- Bei kleinen, lokalen Fixes darf direkt gearbeitet werden.
- Ton: klar, freundlich, praezise, duzend.
- Loesungen schrittweise und kompakt erklaeren.
- Namen, Beschreibung oder sichtbare Projektidentitaet nicht eigenstaendig aendern, wenn es nicht ausdruecklich gewuenscht ist.

## 1. Geltungsbereich und Grundsaetze

- Minimalinvasiv arbeiten: standardmaessig nur so wenig wie noetig aendern, um das Problem zu loesen.
- Keine groesseren Refactorings oder Strukturumbauten ohne ausdruecklichen Auftrag.
- Aenderungen so gestalten, dass sie leicht rueckgaengig zu machen sind.
- Aenderungen transparent machen: Problem, Ansatz, betroffene Dateien und erwartete Auswirkungen kurz benennen.
- Vor groesseren oder strukturellen Code-Aenderungen erst Vorgehen schildern und Freigabe einholen.
- Kleine, risikoarme Fixes duerfen ohne extra Freigabeschleife umgesetzt werden.
- Code-Kommentare, wenn noetig, sinnvoll und in englischer Sprache schreiben.

## 2. Sicherheit, Review und Qualitaet

- Lua-Standards beachten.
- Keine neuen Fehlzustaende einfuehren.
- Relevante Tests ausfuehren oder klar benennen, was sinnvoll zu testen waere.
- Wenn etwas nicht sicher verifiziert werden konnte, das offen sagen.

## 3. Performance

- Auf Performance achten.
- Keine unnoetig teuren Loesungen in regelmaessig laufenden Addon-Pfaden einbauen.

## 3a. Architekturprinzipien fuer dieses Projekt

- Wir orientieren uns an OOP-Denke und MVC, angepasst an Lua und WoW-Addon-Code.
- Keine kuenstlichen Klassenhierarchien bauen, wenn einfache Tabellen, klar benannte Funktionen und gekapselte Module ausreichen.
- Bevorzugtes Muster:
  - `Model`
    - reine Datenstrukturen und Lookup-Helfer
    - z. B. `contentCatalog`, `instanceContent`, `tipsMap_*`, `TDTUserData`
  - `View`
    - reine Anzeige und UI-Aufbau
    - z. B. Fenster, Config-Panels, Dropdowns, Texte, Buttons
  - `Controller`
    - verbindet UI-Aktionen mit Datenzugriff und Laufzeitlogik
    - z. B. Slashcommands, Event-Reaktionen, Save/Override/Reset-Workflows
- Views sollen moeglichst keine Geschaeftslogik enthalten.
- Datenlogik soll moeglichst keine direkten UI-Abhaengigkeiten haben.
- Laufzeitlogik soll moeglichst nicht direkt auf rohe UI-Elemente zugreifen, wenn ein klarer Helper oder Controller dazwischen sinnvoll ist.

## 3b. Clean-Code-Regeln fuer Lua

- KISS:
  - die einfachste tragfaehige Loesung bevorzugen
  - keine Abstraktionen auf Vorrat bauen
- DRY:
  - doppelte Logik und doppelte Wahrheiten vermeiden
  - gemeinsame Regeln in Helper oder zentrale Datenstruktur ziehen
- Single Responsibility:
  - Funktionen und Tabellen sollen moeglichst genau eine klar erkennbare Aufgabe haben
  - grosse Mehrzweckfunktionen nach Bedarf in kleine, benannte Schritte teilen
- Aussagekraeftige Namen:
  - Namen sollen Fachbedeutung tragen, nicht nur technische Form
  - lieber `getMergedInstanceDetails` als vage Hilfsnamen
- Globale Variablen vermeiden:
  - nur nutzen, wenn WoW-API oder SavedVariables es wirklich erfordern
  - sonst Daten und Helper am `addon` oder lokal kapseln
- Defensive Weiterentwicklung:
  - bestehende Formate lieber schrittweise migrieren als abrupt ersetzen
  - bei Strukturumbauten erst dualen Leseweg schaffen, dann Altstruktur abbauen

## 3c. SOLID sinngemaess angewendet

- Single Responsibility:
  - Datenmodell, Anzeige und Steuerlogik sauber trennen
- Open/Closed:
  - neue Instanzen, Sprachen und Tipparten moeglichst durch Daten und kleine Erweiterungen hinzufuegen, nicht durch Copy-Paste grosser Logikbloecke
- Liskov / Interface Segregation / Dependency Inversion:
  - in Lua nicht dogmatisch umsetzen
  - stattdessen kleine, klare Schnittstellen zwischen Daten-, UI- und Merge-Helfern bevorzugen

## 3d. Datenstruktur-Regeln

- Es soll pro fachlicher Wahrheit nur eine bevorzugte Quelle geben.
- Bereits migrierte Instanz-Uebersichten gehoeren in `instanceContent`; alte doppelte Instanztabellen sollen danach schrittweise entfernt werden.
- `contentCatalog` steuert Navigation und Struktur, nicht die eigentlichen Tipptexte.
- `tipsMap_*` bleibt die Quelle fuer NPC-bezogene shipped tips.
- `TDTUserData` bleibt die Quelle fuer persoenliche Aenderungen.
- Neue Datenstrukturen muessen erweiterbar und locale-faehig gedacht werden.
- Wenn eine neue Struktur eingefuehrt wird:
  - zuerst Leseweg kompatibel machen
  - dann Inhalte migrieren
  - dann Altstruktur abbauen

## 4. Externe Quellen

Wenn externe Quellen bei Entwicklung, Recherche, Verifikation oder Inhaltserstellung verwendet werden:

- die Quelle in `docs/EXTERNAL_SOURCES.md` erfassen
- dort festhalten:
  - Name der Quelle
  - URL
  - Zweck
  - ob die Quelle nur zur Verifikation oder zur Inhaltsableitung genutzt wurde
  - aktueller Stand zu Lizenz / Nutzungsbedingungen
- wenn Lizenz oder Nutzungsrechte unklar sind, deutlich als `license check pending` markieren

## 5. Lizenz- und Release-Sicherheit

Vor einem Release:

- alle in `docs/EXTERNAL_SOURCES.md` gelisteten Quellen manuell pruefen
- dabei besonders pruefen:
  - Lizenzmodell
  - Attributionspflichten
  - ob abgeleitete Nutzung erlaubt ist
  - ob Weitergabe innerhalb des Addons erlaubt ist

Grundregel:

- Oeffentlich sichtbar bedeutet nicht automatisch frei nutzbar.
- Fakten duerfen recherchiert werden.
- Direkte Textuebernahme, strukturierte Datenuebernahme oder adaptierte Inhalte gelten als eingeschraenkt, bis die Lizenzlage geprueft wurde.

## 6. Dokumentationsregel

Wenn eine neue externe Quelle genutzt wird, aktualisieren:

- `docs/EXTERNAL_SOURCES.md`

Diese Regel gilt fortlaufend, nicht erst kurz vor einem Release.

## 7. Changelog-Regel

Wenn ein Feature, Fix oder eine Verhaltensaenderung umgesetzt und vom Nutzer als funktionierend akzeptiert wurde:

- `docs/CHANGELOG.md` aktualisieren
- wenn die Aenderung Architektur, Datenmodell, Workflow oder Planungsstand betrifft:
  - `docs/PLAN.md` mitpruefen und bei Bedarf aktualisieren
  - `docs/DATA_MODEL.md` mitpruefen und bei Bedarf aktualisieren

Beispiele:

- neue UI-Funktionen
- Editor-Funktionen
- Config-Aenderungen
- Lokalisierungsverbesserungen
- Datenmodell- oder Workflow-Aenderungen

Akzeptierte Aenderungen nicht undokumentiert im Changelog lassen.

## 8. Commit-Richtlinie

- Commits klein und aussagekraeftig halten.
- Commit-Messages sollen klar machen, was geaendert wurde und warum.
- Wenn passend, auf den fachlichen Kontext oder das betroffene Thema Bezug nehmen.
