# tdd

## Wofür ist dieser Skill?

`tdd` implementiert testgetriebene Entwicklung nach dem **Red-Green-Refactor**-Prinzip. Claude schreibt zuerst einen fehlschlagenden Test, dann den minimalen Code, der ihn zum Bestehen bringt – und wiederholt das für jede Verhaltenseinheit.

## Kernprinzipien

- **Verhalten testen, nicht Implementierung** – Tests greifen nur auf öffentliche Schnittstellen zu. Wenn du intern umstrukturierst, sollen Tests nicht brechen.
- **Vertikale Slices, kein horizontales Vorgehen** – Nie alle Tests auf einmal schreiben. Immer: ein Test → eine Implementierung → nächster Test.
- **Minimaler Code** – Nur so viel schreiben, wie der aktuelle Test verlangt. Keine spekulativen Features.

## Workflow

1. **Planung** – Welche Verhaltensweisen sollen getestet werden? Wie sieht die öffentliche Schnittstelle aus?
2. **Tracer Bullet** – Erster Test beweist, dass der End-to-End-Pfad funktioniert.
3. **Inkrementeller Loop** – RED → GREEN für jede weitere Verhaltenseinheit.
4. **Refactoring** – Erst wenn alle Tests grün sind: Duplikate entfernen, Module vertiefen, Struktur verbessern.

## Vorteile

- **Tests überleben Refactorings** – Weil sie Verhalten beschreiben, nicht Implementierungsdetails.
- **Kein Over-Engineering** – Der minimale-Code-Ansatz verhindert frühzeitige Abstraktionen.
- **Lebende Spezifikation** – Gute Tests lesen sich wie eine Anforderungsliste: „User kann mit gültigem Warenkorb auschecken."
- **Sofortiges Feedback** – Jeder Zyklus ist kurz; Fehler werden früh entdeckt.

## Wann benutzen?

- Wenn du ein neues Feature oder einen Bugfix sauber und testbar umsetzen möchtest.
- Wenn du sicherstellen willst, dass Refactorings nichts kaputt machen.
- Wenn du eine lebende Dokumentation des Systemverhaltens aufbauen willst.

## Aufruf

Sag: *„Bau das mit TDD"*, *„/tdd"*, oder erwähne *„Red-Green-Refactor"*.
