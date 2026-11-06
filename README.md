# claude-skill-lib

> Meine persönliche Skill-Sammlung für Claude Code – Skills flach, Plugins daneben.

![Skills](https://img.shields.io/badge/Skills-3-blue) ![Plugins](https://img.shields.io/badge/Plugins-0-orange) ![Lizenz](https://img.shields.io/badge/Lizenz-MIT-green)

---

## 🚀 Installation

```bash
# Ab Claude Code 2.1.275 in einem Schritt
/plugin install jasu --marketplace 3m5suchandt/claude-skill-lib

# Ältere Versionen
/plugin marketplace add 3m5suchandt/claude-skill-lib
/plugin install jasu@claude-skill-lib
```

Alle Skills laufen unter dem Präfix `jasu`, z. B. `/jasu:lift-me`.

Damit jeder Push auf `main` automatisch ankommt, schalte ich `autoUpdate` für den Marketplace ein (`~/.claude/settings.json`):

```json
"extraKnownMarketplaces": {
  "claude-skill-lib": {
    "source": { "source": "github", "repo": "3m5suchandt/claude-skill-lib" },
    "autoUpdate": true
  }
}
```

---

## 🛠️ Skills

Jeder Ordner unter `skills/` landet automatisch im Plugin `jasu`.

| Skill | Aufruf | Zweck | Quelle |
|---|---|---|---|
| [lift-me](./skills/lift-me/) | `/jasu:lift-me` | Lösung → Ziel hinter dem Ziel per „Wozu?“ – Gegenstück zu grill-me | eigen |
| [tdd](./skills/tdd/) | `/jasu:tdd` | Red-Green-Refactor mit verhaltensbasierten Tests | [mattpocock/skills](https://github.com/mattpocock/skills) |
| [effective-presentation-slides](./skills/effective-presentation-slides/) | `/jasu:effective-presentation-slides` | Evidenzbasierte Prinzipien für Inhalt und Struktur von Foliensätzen | eigen |

---

## 🔌 Plugins

Vollwertige Plugins mit Hooks, MCP-Servern oder Agents liegen unter `plugins/<name>/` und werden einzeln installiert: `/plugin install <name>@claude-skill-lib`.

| Plugin | Zweck |
|---|---|
| _noch keins_ | |

---

## 🧪 Lokal testen, bevor ich veröffentliche

```bash
# Arbeitskopie statt installierter Version laden – gilt nur für diese Session
claude --plugin-dir ~/Projects/privat/claude-skill-lib

# Ein einzelnes Plugin testen
claude --plugin-dir ~/Projects/privat/claude-skill-lib/plugins/<name>

# Marketplace und alle Plugins prüfen
scripts/validate.sh
```

Die Arbeitskopie überdeckt in dieser Session das installierte `jasu`, auch mit noch nicht committeten Skills. Änderungen lade ich mit `/reload-plugins` neu. Erst nach dem Push auf `main` kommen sie in der installierten Version an.

---

## 🧭 Was hier bewusst fehlt

Skills, die ich schon aus anderen Quellen nutze, liegen nicht doppelt in diesem Repo:

| Skill | Woher ich ihn nutze |
|---|---|
| grill-me | 3m5. Plugin Hub – `/shared:grill-me` |
| storytelling | 3m5. Plugin Hub – `/projektmanagement:storytelling` |
| write-a-prd, prd-to-issues | Anthropic-Skills |
