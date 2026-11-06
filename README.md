# claude-skill-lib

> Meine persönliche Skill-Sammlung für Claude Code.

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

Damit neue Versionen automatisch ankommen, `autoUpdate` für den Marketplace in `~/.claude/settings.json` einschalten:

```json
"extraKnownMarketplaces": {
  "claude-skill-lib": {
    "source": { "source": "github", "repo": "3m5suchandt/claude-skill-lib" },
    "autoUpdate": true
  }
}
```

---

## 🧪 Ausprobieren ohne Installation

Wer die Skills erst testen möchte, klont das Repo und startet Claude Code mit dem Ordner als Plugin. Die Skills stehen dann nur in dieser Session bereit, installiert wird nichts:

```bash
git clone https://github.com/3m5suchandt/claude-skill-lib.git
claude --plugin-dir ./claude-skill-lib
```

---

## 🛠️ Skills

### 🪜 [lift-me](./skills/lift-me/)

`/jasu:lift-me`

Wenn ich mich in technischen Details verliere, klettert `lift-me` mit „Wozu?“-Fragen von meiner Lösung hoch zum Ziel hinter dem Ziel. Am Ende habe ich eine Zielleiter, eine bewusst gewählte Arbeitshöhe mit ehrgeiziger Messgröße und Alternativen, die meine ursprüngliche Lösung schlagen könnten. Damit ist er das Gegenstück zu grill-me, das vom Plan aus nach unten in die Details bohrt.

### 🧪 [tdd](./skills/tdd/)

`/jasu:tdd` · übernommen aus [mattpocock/skills](https://github.com/mattpocock/skills)

Claude entwickelt in kleinen Red-Green-Refactor-Zyklen: erst ein fehlschlagender Test, dann genau so viel Code, dass er besteht, dann der nächste Test. Weil die Tests nur Verhalten über öffentliche Schnittstellen prüfen, überleben sie Refactorings und lesen sich wie eine Spezifikation. So entsteht kein spekulativer Code, und Fehler fallen sofort auf.

### 🎯 [effective-presentation-slides](./skills/effective-presentation-slides/)

`/jasu:effective-presentation-slides`

Der Skill wendet Befunde aus der Gedächtnisforschung auf Foliensätze an, etwa Dual Coding, Mayers Multimedia-Prinzip und die zehn Regeln von Naegle. Er gliedert neue Decks, macht aus beschreibenden Titeln Aussagesätze und findet in bestehenden Decks überladene Folien. Mein Publikum nimmt so pro Folie genau eine Botschaft mit, statt gleichzeitig lesen und zuhören zu müssen.
