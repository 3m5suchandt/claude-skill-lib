# Best Practices

Tipps und Einstellungen, die ich täglich beim Arbeiten mit Claude Code nutze.

---

## 🗺️ Plan Mode

Claude liest und plant, macht aber **keine Code-Änderungen** ohne deine Freigabe.

| Wie | Befehl / Einstellung |
|-----|----------------------|
| Einmalig für eine Nachricht | `/plan` als Präfix eingeben |
| Session umschalten | `Shift+Tab` (CLI) oder Mode-Selector (VS Code/Desktop) |
| Permanent als Standard | `settings.json` → `"permissions": { "defaultMode": "plan" }` |

**Wann sinnvoll:** größere Refactorings, neue Features, unklare Anforderungen – immer wenn du erst verstehen willst, was Claude vorhat, bevor es losgeht.

---

## ⚡ Plan Mode + Auto Mode

Nach der Plan-Freigabe wechselt Claude automatisch in den Auto Mode – kein manuelles Bestätigen jeder einzelnen Aktion mehr.

```json
{
  "useAutoModeDuringPlan": true
}
```

Standard ist `true`. Voraussetzung: Team Plan + Claude Sonnet 4.6 / Opus 4.6.

---

## 🤖 Auto Mode

Claude führt Aktionen ohne Permission-Prompts aus. Ein Classifier prüft jede Aktion im Hintergrund auf Sicherheit.

| Wie | Befehl / Einstellung |
|-----|----------------------|
| Session umschalten | `Shift+Tab` bis `auto` erscheint (CLI) oder Mode-Selector |
| Permanent | `"permissions": { "defaultMode": "auto" }` |
| Beim Start | `claude --permission-mode auto` |

**Empfohlener Workflow:** Plan Mode → Plan freigeben → Auto Mode übernimmt die Umsetzung.

> ⚠️ Auto Mode erfordert einen Team Plan und ist kein Ersatz für Code-Review bei kritischen Änderungen.

Weitere Details: [Permission Modes Dokumentation](https://code.claude.com/docs/en/permission-modes)

---

## @ Kontext-Referenzen

Dateien, Ordner und URLs lassen sich direkt in den Kontext laden – so muss Claude nicht raten, welche Dateien relevant sind.

| Syntax | Bedeutung |
|--------|-----------|
| `@src/main.ts` | Einzelne Datei in den Kontext laden |
| `@src/components/` | Ganzen Ordner einbeziehen |
| `@https://example.com/api-docs` | Webseite als Kontext |

**Tipp:** Relevante Dateien vor einer Aufgabe gezielt nennen, z. B.:
> *"Schau dir @src/auth/ an und refactore den Login-Flow"*

---

## 🎨 Output Style

Passt Claude's Verhalten und Ton an – direkt über den Systemprompt.

| Style | Verhalten |
|-------|-----------|
| `Default` | Effizienter Entwicklerassistent (Standard) |
| `Explanatory` | Erklärt Entscheidungen und Codebase-Muster mit "Insights" |
| `Learning` | Lernmodus: Claude setzt `TODO(human)`-Marker für eigene Implementierungen |

**Setzen:**
```json
{
  "outputStyle": "Explanatory"
}
```

Oder interaktiv: `/config` → Output Style

Custom Styles sind möglich als Markdown-Datei in `.claude/output-styles/`.
