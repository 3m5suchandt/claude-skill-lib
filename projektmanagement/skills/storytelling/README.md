# storytelling

Verwandelt rohe Kundenwünsche in entwicklungsfertige User Stories — strukturiert, methodisch sauber, direkt ins Jira oder als Markdown.

![storytelling](illustration.png)

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
