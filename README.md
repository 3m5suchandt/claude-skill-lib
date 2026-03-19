# claude-skill-lib

Kuratierte Sammlung von Claude Code Skills als Plugin Marketplace – kategorisiert nach Anwendungsbereich.

## Installation

Einmalig den Marketplace hinzufügen:

```
/plugin marketplace add 3m5suchandt/claude-skill-lib
```

Dann einzelne Kategorien als Plugin installieren:

```
/plugin install projektmanagement@claude-skill-lib
/plugin install entwicklung@claude-skill-lib
```

---

## Kategorien

### [Projektmanagement](./projektmanagement/)

Drei Skills, die zusammen vage Ideen in ausführbare GitHub-Issues überführen:

| Skill | Befehl | Zweck |
|-------|--------|-------|
| grill-me | `/projektmanagement:grill-me` | Hartnäckige Rückfragen bis zum gemeinsamen Verständnis |
| write-a-prd | `/projektmanagement:write-a-prd` | Idee → strukturiertes PRD als GitHub Issue |
| prd-to-issues | `/projektmanagement:prd-to-issues` | PRD → unabhängige GitHub Issues (vertikale Slices) |

**Workflow:** `grill-me` → `write-a-prd` → `prd-to-issues`

Quelle: https://www.aihero.dev/5-agent-skills-i-use-every-day

---

### [Entwicklung](./entwicklung/)

| Skill | Befehl | Zweck |
|-------|--------|-------|
| tdd | `/entwicklung:tdd` | Red-Green-Refactor, verhaltensbasierte Tests |

Quelle: https://github.com/mattpocock/skills

---

### [Design](./design/) _(in Vorbereitung)_

Zukünftige Skills für Design- und UI/UX-Workflows.

---

## Neuen Skill hinzufügen

1. Passende Kategorie wählen (oder neue anlegen: `mkdir <kategorie>/skills/<skill-name>`)
2. `<kategorie>/skills/<skill-name>/SKILL.md` erstellen (Frontmatter: `name`, `description`)
3. `<kategorie>/skills/<skill-name>/README.md` mit deutscher Erklärung anlegen
4. In `<kategorie>/.claude-plugin/plugin.json` ggf. Version erhöhen
5. In `.claude-plugin/marketplace.json` ggf. neue Kategorie eintragen
