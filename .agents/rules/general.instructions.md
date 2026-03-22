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
