# claude-skill-lib
Einfach eine Sammlung von Skills, die ich ausprobieren möchte

# PRDs
- .claude\skills\grill-me
- .claude\skills\write-a-prd
- .claude\skills\prd-to-issues

Die drei Skills arbeiten zusammen, um vage Ideen in ausführbare Aufgaben zu überführen: **grill-me** stellt hartnäckige Rückfragen, bis ein gemeinsames Verständnis entsteht. **write-a-prd** verwandelt dieses Verständnis in ein strukturiertes PRD mit User Stories. **prd-to-issues** zerlegt das PRD in unabhängige GitHub-Issues als vertikale Slices – so werden unbekannte Unbekannte früh aufgedeckt und paralleles Arbeiten mit mehreren Agenten ermöglicht.

Quelle: https://www.aihero.dev/5-agent-skills-i-use-every-day

# TDD
- .agents\skills\tdd

Implementiert testgetriebene Entwicklung nach dem **Red-Green-Refactor**-Prinzip. Der Skill testet ausschließlich Verhalten über öffentliche Schnittstellen – nicht Implementierungsdetails. Kernprinzip: ein Test → eine Implementierung (vertikale Slices), nie alle Tests auf einmal schreiben. Der Workflow umfasst Planung, einen ersten "Tracer Bullet"-Test, den inkrementellen RED→GREEN-Loop und abschließendes Refactoring.

Quelle: https://github.com/mattpocock/skills
