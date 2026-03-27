# prd-to-issues

## Wofür ist dieser Skill?

`prd-to-issues` zerlegt ein fertiges PRD in einzelne, unabhängig umsetzbare GitHub-Issues – als vertikale Slices, die jeweils alle Schichten (Schema, API, UI, Tests) durchschneiden.

## Wie läuft das ab?

1. **PRD laden** – Claude holt das PRD-Issue per Nummer oder URL.
2. **Codebase analysieren** – Optional, um den aktuellen Stand zu verstehen.
3. **Vertikale Slices entwerfen** – Jedes Issue ist ein dünner, aber vollständiger Schnitt durch alle Layer – kein horizontales Aufteilen nach Schichten.
4. **Review mit dir** – Claude präsentiert die Aufteilung und fragt nach Granularität, Abhängigkeiten und HITL/AFK-Klassifizierung.
5. **Issues anlegen** – Nach deiner Freigabe werden alle Issues in der richtigen Reihenfolge (Blocker zuerst) als GitHub-Issues erstellt.

## Vorteile

- **Unbekannte Unbekannte früh aufdecken** – Dünne vertikale Slices zwingen dazu, End-to-End-Pfade durchzudenken, bevor man anfängt.
- **Paralleles Arbeiten möglich** – Voneinander unabhängige Issues können gleichzeitig von verschiedenen Agenten oder Entwicklern bearbeitet werden.
- **HITL vs. AFK** – Issues werden klar gekennzeichnet: braucht es menschliche Entscheidung (HITL) oder kann ein Agent direkt loslegen (AFK)?
- **Direkt in GitHub** – Keine manuellen Tickets; alles wird automatisch mit den richtigen Verknüpfungen angelegt.

## Wann benutzen?

- Nach dem Erstellen eines PRDs mit `write-a-prd`.
- Wenn du einen bestehenden Plan in konkrete, verteilbare Aufgaben aufteilen möchtest.

## Aufruf

Sag: *„Zerleg mein PRD in Issues"* oder *„/prd-to-issues"*.
