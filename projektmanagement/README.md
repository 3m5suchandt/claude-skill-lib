# Projektmanagement-Plugin

Das Plugin heißt `pm-privat` und enthält nur meine eigenen PM-Skills – also das, was es weder im 3m5. Plugin Hub noch bei den Anthropic-Skills gibt.

## Installation

```bash
# Als Plugin laden (einmalig pro Session oder global konfigurieren)
claude --plugin-dir /pfad/zu/claude-skill-lib/projektmanagement

# Oder über den Marketplace
/plugin install pm-privat@claude-skill-lib
```

## Enthaltene Skills

### `/pm-privat:lift-me`
Gegenstück zu `grill-me`: Klettert per „Wozu?“-Fragen von einer Lösung oder einem technischen Detail hoch zum Ziel hinter dem Ziel. Legt eine Arbeitshöhe mit ehrgeiziger Messgröße fest und sucht dort Alternativen, die die ursprüngliche Lösung schlagen könnten. Ideal, wenn ich mich in Details verliere.

## Woher die anderen PM-Skills kommen

| Skill | Quelle | Aufruf |
|---|---|---|
| grill-me | 3m5. Plugin Hub | `/shared:grill-me` |
| storytelling | 3m5. Plugin Hub | `/projektmanagement:storytelling` |
| write-a-prd | Anthropic-Skills | `/write-a-prd` |
| prd-to-issues | Anthropic-Skills | `/prd-to-issues` |
