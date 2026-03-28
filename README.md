# claude-skill-lib

Kuratierte Sammlung von Claude Code Skills als Plugin Marketplace – kategorisiert nach Anwendungsbereich.

## Installation

Einmalig den Marketplace hinzufügen:

```
/plugin marketplace add jan-suchandt/claude-skill-lib
```

Dann einzelne Kategorien als Plugin installieren:

```
/plugin install projektmanagement@claude-skill-lib
/plugin install entwicklung@claude-skill-lib
```

---

## Kategorien

### [Projektmanagement](./projektmanagement/)

Drei Skills, die zusammen vage Ideen in ausführbare Issues überführen:

| Skill | Befehl | Zweck |
|-------|--------|-------|
| grill-me | `/projektmanagement:grill-me` | Hartnäckige Rückfragen bis zum gemeinsamen Verständnis |
| write-a-prd | `/projektmanagement:write-a-prd` | Idee → strukturiertes PRD als Jira- oder GitHub-Issue |
| prd-to-issues | `/projektmanagement:prd-to-issues` | PRD → unabhängige Issues (vertikale Slices) |

**Workflow:** `grill-me` → `write-a-prd` → `prd-to-issues`

Quelle: https://www.aihero.dev/5-agent-skills-i-use-every-day

---

### [Entwicklung](./entwicklung/)

| Skill | Befehl | Zweck |
|-------|--------|-------|
| tdd | `/entwicklung:tdd` | Red-Green-Refactor, verhaltensbasierte Tests |

Quelle: https://github.com/mattpocock/skills

#### MCP-Server

| Server | Zweck |
|--------|-------|
| [gitlab-mcp](https://github.com/zereight/gitlab-mcp) | GitLab-Integration für Claude: Issues, Merge Requests, Repositories und Pipelines direkt aus dem Chat steuern |

---

### [Design](./design/) _(in Vorbereitung)_

Zukünftige Skills für Design- und UI/UX-Workflows.

---

## Neuen Skill hinzufügen

1. Passende Kategorie wählen (oder neue anlegen)
2. `<kategorie>/skills/<skill-name>/SKILL.md` erstellen (Frontmatter: `name`, `description`)
3. `<kategorie>/skills/<skill-name>/README.md` mit deutscher Erklärung anlegen
4. Version in `<kategorie>/.claude-plugin/plugin.json` erhöhen
5. Ggf. neue Kategorie in `.claude-plugin/marketplace.json` eintragen
