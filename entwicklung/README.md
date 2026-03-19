# Entwicklung-Plugin

Dieses Plugin implementiert testgetriebene Entwicklung (TDD) nach dem Red-Green-Refactor-Prinzip.

## Installation

```bash
# Als Plugin laden (einmalig pro Session oder global konfigurieren)
claude --plugin-dir /pfad/zu/claude-skill-lib/entwicklung
```

## Enthaltene Skills

### `/entwicklung:tdd`
Implementiert TDD nach **Red-Green-Refactor**. Testet ausschließlich Verhalten über öffentliche Schnittstellen – keine Implementierungsdetails.

**Kernprinzipien:**
- Ein Test → eine Implementierung (vertikale Slices)
- Nie alle Tests auf einmal schreiben
- Workflow: Planung → Tracer-Bullet-Test → RED→GREEN-Loop → Refactoring

Quelle: https://github.com/mattpocock/skills
