# Projektmanagement-Plugin

Dieses Plugin bündelt Skills, die vage Ideen in ausführbare GitHub-Issues überführen – und Lösungen auf ihr eigentliches Ziel zurückführen.

## Installation

```bash
# Als Plugin laden (einmalig pro Session oder global konfigurieren)
claude --plugin-dir /pfad/zu/claude-skill-lib/projektmanagement

# Skills in diesem Repo nutzen (lokale Entwicklung)
# Skills sind als Symlinks in .claude/skills/ verfügbar
```

## Enthaltene Skills

### `/projektmanagement:grill-me`
Befragt dich hartnäckig zu einem Plan oder Design, bis ein gemeinsames Verständnis entsteht. Jede Entscheidungsverzweigung wird aufgelöst. Ideal zum Stress-Testing von Ideen vor der Umsetzung.

### `/projektmanagement:write-a-prd`
Verwandelt das erarbeitete Verständnis in ein strukturiertes Product Requirements Document (PRD) mit User Stories, Implementierungsentscheidungen und Akzeptanzkriterien. Reicht das PRD als GitHub Issue ein.

### `/projektmanagement:prd-to-issues`
Zerlegt ein PRD in unabhängige, sofort umsetzbare GitHub-Issues als vertikale Slices. Unbekannte Unbekannte werden früh aufgedeckt, paralleles Arbeiten mit mehreren Agenten wird ermöglicht.

### `/projektmanagement:lift-me`
Gegenstück zu `grill-me`: Klettert per „Wozu?“-Fragen von einer Lösung oder einem technischen Detail hoch zum Ziel hinter dem Ziel. Legt eine Arbeitshöhe mit ehrgeiziger Messgröße fest und sucht dort Alternativen, die die ursprüngliche Lösung schlagen könnten. Ideal, wenn ich mich in Details verliere.

## Workflow

```
/projektmanagement:grill-me → /projektmanagement:write-a-prd → /projektmanagement:prd-to-issues
```

Quelle der Skills: https://www.aihero.dev/5-agent-skills-i-use-every-day
