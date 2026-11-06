# 🪜 lift-me

> Von der Lösung zum Ziel hinter dem Ziel – mit „Wozu?“ statt „Wie?“.

---

## Wofür ist der Skill gut?

Als technischer Projektleiter denke ich schnell in Lösungen – und verliere mich dann in Details. Beim Bau eines MCP-Servers für unser Intranet diskutiere ich irgendwann Paginierung und Auth-Flows und weiß nicht mehr genau, **wozu** das Ganze eigentlich gut ist.

`lift-me` ist das Gegenstück zu `grill-me`:

| | 🔥 grill-me | 🪜 lift-me |
|---|---|---|
| Leitfrage | Wie? | Wozu? |
| Richtung | Top-down, in die Details | Bottom-up, zum Ziel |
| Vorschläge von Claude | zu jeder Frage | erst bei den Mitteln, nie bei den Zielen |
| Ergebnis | gemeinsames Verständnis des Plans | Zielleiter, Arbeitshöhe, Alternativen |

---

## Ablauf

| Schritt | Was passiert |
|---|---|
| 1️⃣ Startpunkt | Claude nimmt die Lösung oder das Detail, an dem ich gerade hänge, aus dem Kontext |
| 2️⃣ Aufstieg | Pro Nachricht eine Wozu-Frage. Jede Antwort wird als Wirkung umformuliert – nicht als Artefakt |
| 3️⃣ Arbeitshöhe | Ich wähle die Sprosse, auf die ich hinarbeite, und lege eine **ehrgeizige** Messgröße fest |
| 4️⃣ Wie sonst? | Claude schlägt Alternativen vor – inklusive „Bedarf beseitigen“ und „gibt es schon“ |
| 5️⃣ Ergebnis | Zielleiter, Nordstern-Satz, Konsequenz für die Lösung und Entscheidungsfilter |
| 🧭 Kompass | Erneuter Aufruf in derselben Session: Welcher Sprosse dient das, was ich gerade tue? |

---

## Prinzipien

- **„Wozu?“ statt „Warum?“** – „Warum?“ lädt zu Rechtfertigungen ein („weil der Kunde es will“), „Wozu?“ verlangt einen Zweck. Das klassische Toyota-5-Why sucht rückwärts nach Ursachen, `lift-me` sucht vorwärts nach Zielen.
- **Wirkung statt Artefakt** – „Kunden in Claude nutzen können“ ist noch Lösung. Eine Sprosse beschreibt, was danach anders ist.
- **Ziele gehören mir, Mittel darf Claude vorschlagen** – sonst landen plausible, aber fremde Annahmen in meiner Zielleiter.
- **Abbruch auf der richtigen Höhe, nicht nach 5 Fragen** – sobald die nächste Sprosse nur noch „Umsatz“ heißt, ist es zu hoch.
- **Konkret und ehrgeizig** – konkrete, schwere Ziele schlagen „so gut es geht“ *(Locke & Latham)*.

---

## Beispiel

**Startpunkt:** „Ich automatisiere den wöchentlichen Sprint-Report.“

```
↑  (zu allgemein) Projekt bleibt profitabel
4  Releases gehen ohne Last-Minute-Druck raus
3  Weniger Scope-Änderungen in der zweiten Sprinthälfte   ◀ Arbeitshöhe
2  Kunde trifft Scope-Entscheidungen früher
1  Kunde kennt jeden Freitag den Projektstand
   └ Nebenzweig: PL spart eine Stunde pro Woche
0  Sprint-Report automatisieren                           (Startpunkt)
```

**Erkenntnis:** Eine Entscheidungsvorlage („diese drei Entscheidungen brauchen wir bis Mittwoch“) wirkt stärker als ein Statusbericht. Der Report wird trotzdem automatisiert – aber oben steht der Entscheidungsbedarf, nicht die Ticketliste.

---

## Aufruf

```
/projektmanagement:lift-me
/projektmanagement:lift-me Ich baue einen MCP-Server für unser Intranet
```

Oder einfach mitten in der Arbeit: *„Wozu mache ich das eigentlich?“*

---

## Hintergrund

- 📝 [Felix Rieseberg – How to be more ambitious](https://felixrieseberg.com/how-to-be-more-ambitious-a-tutorial-for-humans-with-models/) – „Altitude“: *What's the goal beyond the goal?*
- 🪜 Why-How-Laddering aus dem Design Thinking: „Wozu?“ klettert hoch, „Wie?“ steigt ab
- 🎯 Goal-Setting-Theorie *(Locke & Latham)*: konkrete, schwere Ziele führen zu besseren Ergebnissen
