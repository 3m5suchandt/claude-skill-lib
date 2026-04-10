# storytelling

Verwandelt rohe Kundenwünsche in entwicklungsfertige User Stories — strukturiert, methodisch sauber, direkt ins Jira oder als Markdown.

---

## Der Prozess auf einen Blick

```mermaid
flowchart TD
    A([Kundenwunsch\nFreitext · Jira · Confluence]) --> B{Vage?}

    B -- Ja --> C["Phase 1 · Strategische Klärung\n🔍 grill-me: Warum? Für wen? Welcher Wert?\n→ PRD als Leitplanke"]
    B -- Nein --> D

    C --> D["Phase 2 · Taktische Detaillierung\n🔍 grill-me: Decision Tree\nHappy Path · Edge Cases · Fehler · Regeln"]

    D --> E["Phase 3 · Formalisierung\n📋 3C-Modell\nCard · Conversation · Confirmation"]

    E --> F{"INVEST\nCheck"}

    F -- "Alle ✅" --> G["Phase 6 · Ausgabe\n🚀 Jira Issue oder Markdown"]
    F -- "Mind. 1 ❌" --> H["Phase 5 · SPIDR Slicing\n✂️ Epic → Sprint-fähige Stories\nS · P · I · D · R"]

    H --> E

    style A fill:#4A90D9,color:#fff,stroke:none
    style C fill:#7B68EE,color:#fff,stroke:none
    style D fill:#7B68EE,color:#fff,stroke:none
    style E fill:#2ECC71,color:#fff,stroke:none
    style F fill:#F39C12,color:#fff,stroke:none
    style H fill:#E74C3C,color:#fff,stroke:none
    style G fill:#27AE60,color:#fff,stroke:none
```

---

## Nutzen für Projektleiter

| Problem im Alltag | Was der Skill löst |
|---|---|
| Kollegen liefern Tickets ohne klares „Warum" | Phase 1 erzwingt strategische Klärung vor jedem Detail |
| Anforderungen werden im Sprint nachgefragt | Phase 2 (Decision Tree) klärt Edge Cases und Geschäftsregeln vorab |
| Niemand weiß mehr, warum eine Story so geschnitten wurde | Conversation dokumentiert alle Entscheidungen direkt im Ticket |
| Stories sind zu groß für einen Sprint | INVEST-Check schlägt automatisch an — SPIDR-Slicing folgt sofort |
| Jedes Team schreibt Tickets anders | Connextra + Gherkin als verbindliches Format für alle |
| Akzeptanzkriterien sind vage und nicht testbar | Gherkin erzwingt messbare, binäre Kriterien |
| Jira-Tickets manuell anlegen kostet Zeit | Direkte Issue-Erstellung via Atlassian MCP |

---

## Methoden im Überblick

**PRD (Product Requirements Document)**
Das PRD klärt das strategische „Warum" einer Anforderung, bevor Details diskutiert werden. Es beantwortet drei Fragen: Für wen? Welches Problem? Welcher Nutzen? Es dient als Leitplanke, damit spätere Detailentscheidungen nicht am eigentlichen Ziel vorbeigehen.

**Connextra-Format**
Das Connextra-Format strukturiert User Stories in drei Teile: Rolle, Aktion und Nutzen — „Als [Rolle] möchte ich [Aktion], damit [Nutzen]." Es zwingt den Verfasser, den Geschäftswert explizit zu benennen, statt nur eine Funktion zu beschreiben. Stories ohne klares „damit" sind technische To-dos, keine User Stories.

**3C-Modell (Card, Conversation, Confirmation)**
Das 3C-Modell von Ron Jeffries stellt klar, dass die geschriebene Story (Card) nur ein Platzhalter ist — das eigentliche Wissen entsteht im Dialog (Conversation). Die Confirmation dokumentiert dieses Wissen als testbare Akzeptanzkriterien und macht die Story abnahmefähig.

**INVEST-Prinzip**
INVEST ist eine Checkliste für Story-Qualität: Independent, Negotiable, Valuable, Estimable, Small, Testable. Erfüllt eine Story auch nur ein Kriterium nicht, ist sie noch nicht sprint-ready — sie muss neu geschnitten oder als Epic eingestuft werden.

**SPIDR-Methode**
SPIDR beschreibt fünf Techniken, um zu große Epics vertikal zu schneiden: Spikes (Wissenslücken), Paths (Nutzerpfade), Interfaces (Kanäle), Data (Datentypen), Rules (Geschäftsregeln). Horizontales Slicing — also reine Backend- oder Datenbank-Tickets ohne Nutzernutzen — ist bewusst ausgeschlossen.

**Gherkin (Angenommen / Wenn / Dann)**
Gherkin strukturiert Akzeptanzkriterien als logische Zustandsübergänge: Ausgangszustand, Aktion, Ergebnis. Es eliminiert vage Formulierungen und erzwingt messbare, binäre Kriterien — „in unter 3 Sekunden" statt „schnell".

**grill-me (Decision Tree)**
Der bekannte `/grill-me`-Skill ist direkt in `/storytelling` integriert und wird in zwei Phasen gezielt eingesetzt. In Phase 1 hinterfragt er den strategischen Kern der Anforderung (Warum? Für wen? Welcher Wert?), in Phase 2 arbeitet er systematisch den taktischen Decision Tree ab — Happy Path, Edge Cases, Fehlerbehandlung, Geschäftsregeln. Die Befragung ist dabei phasenspezifisch fokussiert, nicht generisch.

---

## Verwendung

```
/storytelling [Kundenwunsch als Freitext]
/storytelling [Jira-Link]
/storytelling [Confluence-Link]
```

### Beispiele für Projektleiter

**Direkteingabe:**
```
/storytelling Unser Kunde möchte, dass Außendienstmitarbeiter
ihre Besuchsberichte mobil erfassen können, ohne ins Büro zu müssen.
```

**Aus bestehendem Jira-Ticket:**
```
/storytelling https://meinefirma.atlassian.net/browse/PROJ-42
```
→ Der Skill liest Summary, Description und Kommentare aus PROJ-42 und startet den Prozess auf Basis der vorhandenen Informationen.

**Vager Kundenwunsch (Phase 1 greift automatisch):**
```
/storytelling Wir brauchen irgendwie eine bessere Übersicht für die Teamleiter.
```
→ Der Skill erkennt die Vagheit und startet mit strategischen Klärungsfragen, bevor er formalisiert.

**Großes Feature (INVEST schlägt an → SPIDR-Slicing):**
```
/storytelling Wir brauchen ein komplettes Dokumentenmanagementsystem
mit Upload, Versionierung, Freigabeworkflow und DSGVO-konformer Archivierung.
```
→ Der Skill stuft die Anforderung als Epic ein und zerlegt sie in sprint-fähige Stories.

---

## Abhängigkeiten

- **Atlassian MCP** — für Jira/Confluence-Abruf und Issue-Erstellung
- **grill-me Skill** — für die Befragungsphasen 1 und 2

## Weitere Informationen

- [Hintergrund & Methodik](background.md)
