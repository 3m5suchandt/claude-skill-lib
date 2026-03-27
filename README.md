# claude-skill-lib

Kuratierte Sammlung von Claude Code Skills als Plugin Marketplace – kategorisiert nach Anwendungsbereich.

## Installation

Marketplace einmalig hinzufügen:

```
/plugin marketplace add jan-suchandt/claude-skill-lib
```

Dann einzelne Skills direkt installieren:

```
/plugin install grill-me@claude-skill-lib
/plugin install write-a-prd@claude-skill-lib
/plugin install prd-to-issues@claude-skill-lib
/plugin install tdd@claude-skill-lib
```

---

## Skills

### [Projektmanagement](./projektmanagement/)

| Skill | Befehl | Zweck |
|-------|--------|-------|
| grill-me | `/grill-me` | Hartnäckige Rückfragen bis zum gemeinsamen Verständnis |
| write-a-prd | `/write-a-prd` | Idee → strukturiertes PRD als Jira- oder GitHub-Issue |
| prd-to-issues | `/prd-to-issues` | PRD → unabhängige Issues (vertikale Slices) |

**Workflow:** `/grill-me` → `/write-a-prd` → `/prd-to-issues`

Quelle: https://www.aihero.dev/5-agent-skills-i-use-every-day

---

### [Entwicklung](./entwicklung/)

| Skill | Befehl | Zweck |
|-------|--------|-------|
| tdd | `/tdd` | Red-Green-Refactor, verhaltensbasierte Tests |

Quelle: https://github.com/mattpocock/skills

---

### [Design](./design/) _(in Vorbereitung)_

Zukünftige Skills für Design- und UI/UX-Workflows.

---

## Neuen Skill hinzufügen

1. Passende Kategorie wählen
2. `<kategorie>/<skill-name>/.claude-plugin/plugin.json` erstellen (`name` = skill-name)
3. `<kategorie>/<skill-name>/skills/<skill-name>/SKILL.md` erstellen (Frontmatter: `name`, `description`)
4. `<kategorie>/<skill-name>/README.md` mit deutscher Erklärung anlegen
5. Eintrag in `.claude-plugin/marketplace.json` hinzufügen
