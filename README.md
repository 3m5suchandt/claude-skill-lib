# claude-skill-lib

> Mein Claude-Setup als Marketplace – Skills, Plugins und MCPs, die ich täglich einsetze und die du direkt übernehmen kannst.

![Skills](https://img.shields.io/badge/Skills-5-blue) ![MCPs](https://img.shields.io/badge/MCPs-1-orange) ![Lizenz](https://img.shields.io/badge/Lizenz-MIT-green)

---

Dieses Repo ist meine persönliche Erweiterungssammlung für [Claude Code](https://claude.ai/code). Es kombiniert drei Arten von Erweiterungen:

| Typ | Was es ist | Beispiel |
|-----|------------|---------|
| 🛠️ **Skill** | Ein Slash-Befehl, den Claude ausführt | `/lift-me` |
| 📦 **Plugin** | Installationseinheit, die Skills bündelt | `pm-privat` |
| 🔌 **MCP-Server** | Externer Dienst, den Claude als Werkzeug nutzt | `gitlab-mcp` |

---

## 🚀 Schnellstart

```bash
# 1. Marketplace einmalig hinzufügen
/plugin marketplace add 3m5suchandt/claude-skill-lib

# 2. Gewünschte Plugins installieren
/plugin install pm-privat@claude-skill-lib
/plugin install entwicklung@claude-skill-lib
```

---

## 📦 Plugins & Skills

### 🗂️ Projektmanagement

Drei Skills, die vage Ideen in ausführbare Issues überführen – und Lösungen auf ihr eigentliches Ziel zurückführen. `grill-me` und `storytelling` nutze ich aus dem 3m5. Plugin Hub (`/shared:grill-me`, `/projektmanagement:storytelling`).

| Skill | Befehl | Zweck |
|-------|--------|-------|
| write-a-prd | `/pm-privat:write-a-prd` | Idee → strukturiertes PRD als Jira- oder GitHub-Issue |
| prd-to-issues | `/pm-privat:prd-to-issues` | PRD → unabhängige Issues nach Vertical-Slice-Prinzip |
| lift-me | `/pm-privat:lift-me` | Lösung → Ziel hinter dem Ziel per „Wozu?“ – Gegenstück zu grill-me |

**Workflow:**

```
💡 Idee  →  /write-a-prd  →  /prd-to-issues  →  ✅ Issues
🎯 Lösung  →  /lift-me  →  ✅ Zielleiter & Nordstern
```

Quelle: [aihero.dev](https://www.aihero.dev/5-agent-skills-i-use-every-day)

---

### 💻 Entwicklung

| Skill | Befehl | Zweck |
|-------|--------|-------|
| tdd | `/entwicklung:tdd` | Red-Green-Refactor, verhaltensbasierte Tests |

Quelle: [mattpocock/skills](https://github.com/mattpocock/skills)

---

## 🔌 MCP-Server

| Server | Zweck |
|--------|-------|
| [gitlab-mcp](https://github.com/zereight/gitlab-mcp) | GitLab-Issues, Merge Requests, Repositories und Pipelines direkt aus dem Chat steuern |

Alle MCP-Server im Detail: [mcps.md](./mcps.md)

---

## 💡 Tipps & Best Practices

Einstellungen und Workflows, die ich täglich nutze:

| Tipp | Kurzbeschreibung |
|------|-----------------|
| 🗺️ **Plan Mode** | Claude plant zuerst, ohne Code zu ändern – per `/plan`-Präfix oder `Shift+Tab` |
| ⚡ **Plan + Auto Mode** | Nach Plan-Freigabe übernimmt Auto Mode automatisch – kein Klicken mehr |
| 🤖 **Auto Mode** | Classifier prüft jede Aktion im Hintergrund, keine manuellen Permission-Prompts |
| **@ Kontext** | `@datei.ts`, `@ordner/` oder `@url` – Dateien gezielt in den Kontext laden |
| 🎨 **Output Style** | `Explanatory` erklärt Entscheidungen, `Learning` setzt `TODO(human)`-Marker |

Alle Details: [best-practices.md](./best-practices.md)

---

## 📋 Referenz

- [Alle Plugins & Skills](./plugins.md)
- [Alle MCP-Server](./mcps.md)
- [Best Practices](./best-practices.md)
