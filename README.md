# claude-skill-lib

> Meine persönliche Skill-Sammlung für Claude Code – ein Plugin, eine flache Liste.

![Skills](https://img.shields.io/badge/Skills-3-blue) ![Lizenz](https://img.shields.io/badge/Lizenz-MIT-green)

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

---

## 🛠️ Skills

| Skill | Aufruf | Zweck | Quelle |
|---|---|---|---|
| [lift-me](./skills/lift-me/) | `/jasu:lift-me` | Lösung → Ziel hinter dem Ziel per „Wozu?“ – Gegenstück zu grill-me | eigen |
| [tdd](./skills/tdd/) | `/jasu:tdd` | Red-Green-Refactor mit verhaltensbasierten Tests | [mattpocock/skills](https://github.com/mattpocock/skills) |
| [effective-presentation-slides](./skills/effective-presentation-slides/) | `/jasu:effective-presentation-slides` | Evidenzbasierte Prinzipien für Inhalt und Struktur von Foliensätzen | eigen |

---

## 🧭 Was hier bewusst fehlt

Skills, die ich schon aus anderen Quellen nutze, liegen nicht doppelt in diesem Repo:

| Skill | Woher ich ihn nutze |
|---|---|
| grill-me | 3m5. Plugin Hub – `/shared:grill-me` |
| storytelling | 3m5. Plugin Hub – `/projektmanagement:storytelling` |
| write-a-prd, prd-to-issues | Anthropic-Skills |
