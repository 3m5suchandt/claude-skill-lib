# write-a-prd

## Wofür ist dieser Skill?

`write-a-prd` führt dich Schritt für Schritt durch die Erstellung eines Product Requirements Documents (PRD) – von der vagen Idee bis zum fertigen GitHub-Issue.

## Wie läuft das ab?

1. **Problemerfassung** – Claude fragt nach einer ausführlichen Beschreibung des Problems und möglicher Lösungsideen.
2. **Codebase-Analyse** – Claude schaut sich den bestehenden Code an, um deine Annahmen zu prüfen.
3. **Interview** – Hartnäckige Rückfragen, bis ein gemeinsames Verständnis entsteht (ähnlich wie `grill-me`).
4. **Moduldesign** – Claude skizziert die wichtigsten Module und sucht aktiv nach tiefen Modulen: einfache Schnittstelle, viel Logik dahinter.
5. **PRD als GitHub-Issue** – Das fertige Dokument wird direkt als Issue angelegt.

## Vorteile

- **Strukturiertes Ergebnis** – Das PRD enthält Problemstellung, Lösung, User Stories, technische Entscheidungen, Teststrategie und Out-of-Scope-Abgrenzung.
- **Kein Copy-Paste-Chaos** – Alles landet direkt im GitHub-Issue, versioniert und verknüpfbar.
- **Solide Grundlage für `prd-to-issues`** – Das fertige PRD kann danach direkt in umsetzbare Tickets zerlegt werden.

## Wann benutzen?

- Wenn du ein neues Feature planst und Klarheit über Scope und Umsetzung brauchst.
- Als Vorbereitung für die Arbeit mit mehreren Agenten oder einem Team.

## Aufruf

Sag: *„Schreib ein PRD für mein Feature"* oder *„/write-a-prd"*.
