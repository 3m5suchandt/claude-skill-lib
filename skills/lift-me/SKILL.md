---
name: lift-me
description: Klettert von einer Lösung, Aufgabe oder einem technischen Detail per „Wozu?“-Fragen bottom-up zum Ziel hinter dem Ziel (Why-How-Laddering, vorwärts gerichtetes 5-Why), legt die richtige Arbeitshöhe samt Messgröße fest und sucht dort Wege, die besser sein könnten als die ursprüngliche Lösung. Gegenstück zu grill-me, das von einem Plan aus nach unten in die Details bohrt. Nutze diesen Skill bei „/lift-me“, „lift me“, „wozu mache ich das eigentlich“, „ich verliere mich in Details“, „was ist das Ziel hinter dem Ziel“, „das große Ganze“, „5 Why für mein Vorhaben“ oder wenn jemand mitten in technischen Details den Zweck seines Vorhabens aus den Augen verloren hat. Nicht für Ursachenanalysen von Fehlern oder Störungen (rückwärts gerichtetes 5-Why), nicht zum Stresstest eines Plans (grill-me) und nicht zum Formulieren von User Stories.
---

# lift-me

Wer an einer Lösung arbeitet, verliert leicht das Ziel, dem sie dienen soll. grill-me fragt „Wie?“ und steigt nach unten in die Details. lift-me fragt „Wozu?“ und steigt nach oben. Das Ergebnis sind drei Dinge: eine sichtbare Zielleiter, eine bewusst gewählte Arbeitshöhe mit Messgröße und Alternativen, die die ursprüngliche Lösung schlagen könnten.

Leitfrage: *What do you want to happen next? What's the goal beyond the goal?* (Felix Rieseberg)

## Haltung

- **Ziele gehören dem Nutzer, Mittel darf Claude vorschlagen.** Beim Aufstieg fragt Claude nur und schlägt keine Zwecke vor. Plausible Vorschläge werden zu leicht übernommen, und dann steht Claudes Leiter da statt der des Nutzers. Ausnahme: Sagt der Nutzer „weiß nicht“, biete zwei bis drei Hypothesen an, ausdrücklich als Hypothesen. Beim Abstieg (Schritt 4) bringt Claude dagegen aktiv eigene Ideen ein.
- **Eine Frage pro Nachricht, kurz.** Kein Vortrag über die Methode. Der Nutzer soll klettern, nicht lesen.
- **„Wozu?“ statt „Warum?“** „Warum?“ lädt zu Begründungen und Ursachen ein („weil der Kunde es will“), „Wozu?“ fragt nach dem Zweck. Variiere die Formulierung, damit es nicht mechanisch klingt: „Wozu?“, „Und was ist dann besser als heute?“, „Wenn das morgen fertig wäre, was würde dann passieren?“, „Wem hilft das, und wobei?“

## Ablauf

### 1. Startpunkt

Nimm den Startpunkt aus dem Gesprächskontext, wenn er dort steht, und benenne ihn in einem Satz. Sonst frag danach. Starte bei dem, woran gerade gearbeitet wird, auch wenn es ein technisches Detail ist. Die ersten Sprossen führen dann schnell zum eigentlichen Vorhaben zurück, und genau dieser Rückweg ist oft schon die halbe Erkenntnis.

Ist der Startpunkt schon ein Ziel und keine Lösung, kletterst du nur kurz und nimmst dir mehr Zeit für Schritt 4.

### 2. Aufstieg

Prüfe jede Antwort, bevor du weiterkletterst:

- **Lösung statt Wirkung?** Die Antwort nennt ein Werkzeug, eine Technologie, ein Artefakt oder „können X nutzen“. Dann frag: „Was ist dann anders als heute?“ Eine Sprosse beschreibt eine Veränderung, kein Ding.
- **Vage?** Bei „effizienter“, „besser“ oder „mehr Qualität“ frag nach: Wer merkt was, und woran?
- **Zu großer Sprung?** Führt eine Antwort direkt von der Lösung zu „Umsatz“, fehlen Sprossen dazwischen. Frag nach dem Zwischenschritt.

Formuliere die Antwort dann als Sprosse um, kurz, ohne Lösungsbegriffe, in der Form „Wer – welcher Zustand bzw. welche Veränderung“. Zeig die Umformulierung in einer Zeile und stell die nächste Frage. Eine ausdrückliche Bestätigung brauchst du nicht, der Nutzer korrigiert, wenn es nicht passt. So bleibt das Tempo hoch.

**Zweiter Grund:** Frag an der ersten Sprosse einmal: „Gibt es noch einen anderen Grund, der allein schon reichen würde?“ Lösungen dienen unten oft mehreren Zwecken, und der eigentliche Hauptzweck ist häufig nicht der zuerst genannte. Notiere Nebenzweige und folge dem Zweig, den der Nutzer für den wichtigsten hält. Mehr als zwei Zweige verfolgst du nicht.

**Abbruch:** Nicht nach genau fünf Fragen. Hör auf, wenn die nächste Sprosse allgemein würde (Umsatz, Kundenzufriedenheit, Erfolg) oder außerhalb des Einflusses des Nutzers läge. Das ist meist nach vier bis sechs Sprossen der Fall, oder wenn der Nutzer abbricht.

### 3. Arbeitshöhe und Messgröße

Zeig die Leiter, oben das höchste Ziel und unten den Startpunkt (Format siehe Beispiel). Empfiehl als Arbeitshöhe die höchste Sprosse, die der Nutzer oder sein Team noch direkt beeinflussen und innerhalb weniger Monate messen kann, und begründe die Empfehlung kurz. Je höher die Sprosse, desto mehr Lösungswege stehen offen, aber desto weniger Kontrolle bleibt. Je tiefer die Sprosse, desto näher ist man wieder bei der Lösung. Die Entscheidung trifft der Nutzer.

Frag dann nach der Messgröße: „Woran merkst du in drei Monaten, dass es geklappt hat?“ Bestehe auf einer konkreten Zahl und frag nach: „Und was wäre das ehrgeizige Ziel statt des sicheren?“ Konkrete, schwere Ziele führen zu besseren Ergebnissen als „so gut es geht“ (Locke & Latham).

### 4. Wie sonst?

Jetzt bringt Claude aktiv Ideen ein. Sammle drei bis fünf Wege zur Arbeitshöhe:

- die ursprüngliche Lösung,
- einen Weg, der den Bedarf ganz beseitigt,
- eine tiefere Version der Aufgabe, keine größere,
- etwas, das es schon gibt (vorhandene Werkzeuge, Skills, Prozesse). Wenn sich das mit wenig Aufwand prüfen lässt, prüfe es, statt zu raten.

Bewerte jeden Weg in einer Zeile nach Wirkung auf die Messgröße und Aufwand. Frag den Nutzer dann: Gewinnt die ursprüngliche Lösung noch, ist sie Teil eines besseren Wegs, oder ändert sich der Plan?

### 5. Ergebnis

Schließ mit diesem Block ab:

```
## Zielleiter
<Leiter mit markierter Arbeitshöhe>

## Nordstern
Ich <Startpunkt>, damit <Arbeitshöhe>, erkennbar an <Messgröße>.

## Konsequenz
Beibehalten / anpassen / ersetzen: <1–3 Sätze>

## Entscheidungsfilter
<2–3 Fragen, an denen sich spätere Detailentscheidungen messen lassen>
```

Der Entscheidungsfilter ist der Teil, der nach dem Gespräch noch wirkt. Er übersetzt die Arbeitshöhe in Fragen, die man sich mitten im Bauen stellen kann.

## Kompass: Die Leiter existiert schon

Wird lift-me in derselben Conversation erneut aufgerufen und liegt dort schon eine Zielleiter vor, kletterst du nicht neu. Frag dann: Welcher Sprosse dient das, woran gerade gearbeitet wird? Benenne sie. Dient die Arbeit keiner Sprosse oder nur sehr indirekt, sag das offen und frag, ob sie für den Nordstern nötig ist oder warten kann.

## Beispiel

Startpunkt: „Ich automatisiere den wöchentlichen Sprint-Report.“

```
↑  (zu allgemein) Projekt bleibt profitabel
4  Releases gehen ohne Last-Minute-Druck raus
3  Weniger Scope-Änderungen in der zweiten Sprinthälfte   ◀ Arbeitshöhe
2  Kunde trifft Scope-Entscheidungen früher
1  Kunde kennt jeden Freitag den Projektstand
   └ Nebenzweig: PL spart eine Stunde pro Woche
0  Sprint-Report automatisieren                           (Startpunkt)
```

Messgröße: Scope-Änderungen nach Sprint-Mitte von durchschnittlich 5 auf höchstens 1.

Wie sonst: Eine Entscheidungsvorlage („diese drei Entscheidungen brauchen wir bis Mittwoch“) wirkt stärker auf Sprosse 3 als ein Statusbericht, der nur Tickets auflistet.

Konsequenz: Der Report wird trotzdem automatisiert, wegen des Nebenzweigs. Sein Inhalt ändert sich aber: Oben steht der Entscheidungsbedarf, nicht die Ticketliste.
