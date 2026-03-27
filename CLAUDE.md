# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A Claude Code **Plugin Marketplace** – a curated collection of AI agent skills organized by category. Each skill is a standalone plugin installable via the Claude Code plugin system.

## Plugin structure

```
claude-skill-lib/
├── .claude-plugin/
│   └── marketplace.json        ← marks this repo as a marketplace
├── <category>/                 ← organizational grouping (not a plugin)
│   ├── README.md               ← German description of the category
│   └── <skill-name>/           ← one plugin per skill
│       ├── .claude-plugin/
│       │   └── plugin.json     ← plugin manifest (name = skill-name)
│       ├── README.md           ← German explanation of the skill
│       └── skills/
│           └── <skill-name>/
│               └── SKILL.md   ← skill prompt (YAML frontmatter + instructions)
└── skills-lock.json            ← tracks origin of externally sourced skills
```

**Key principle:** Plugin name = skill name → invocation is `/skill-name` (no namespace prefix needed).

## Current skills

| Category | Skill | Invocation |
|----------|-------|------------|
| `projektmanagement/` | `grill-me` | `/grill-me` |
| `projektmanagement/` | `write-a-prd` | `/write-a-prd` |
| `projektmanagement/` | `prd-to-issues` | `/prd-to-issues` |
| `entwicklung/` | `tdd` | `/tdd` |

## Installing skills

```bash
# Via marketplace
/plugin marketplace add jan-suchandt/claude-skill-lib
/plugin install grill-me@claude-skill-lib

# Per session (command line)
claude --plugin-dir ./projektmanagement/grill-me

# Persistent global config (~/.claude/settings.json)
{ "pluginDirs": ["~/claude-skill-lib/projektmanagement/grill-me"] }
```

## Adding a new skill

1. Choose the right category (or create a new one, see below)
2. Create `<category>/<skill-name>/.claude-plugin/plugin.json` with `"name": "<skill-name>"`
3. Create `<category>/<skill-name>/skills/<skill-name>/SKILL.md` with frontmatter:
   ```yaml
   ---
   name: skill-name
   description: What it does and when to use it. Claude uses this to auto-invoke.
   ---
   ```
4. Add a German `<category>/<skill-name>/README.md`
5. Add an entry to `.claude-plugin/marketplace.json`

## Adding a new category

1. `mkdir -p <category>`
2. Create `<category>/README.md` (German overview)
3. Add skills inside it (see above)

## Conventions

- Skill and category names: lowercase, hyphens only
- READMEs are written in German
- `skills-lock.json` tracks externally sourced skills (from `mattpocock/skills` etc.)
- Commits are kept semantically independent: one commit per concern
