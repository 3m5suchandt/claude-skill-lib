# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A Claude Code **Plugin Marketplace** – a curated collection of AI agent skills organized by category. Each category is a standalone plugin installable via the Claude Code plugin system.

## Plugin structure

```
claude-skill-lib/
├── .claude-plugin/
│   └── marketplace.json        ← marks this repo as a marketplace
├── <category>/                 ← one plugin per category
│   ├── .claude-plugin/
│   │   └── plugin.json         ← plugin manifest (name, description, version)
│   ├── README.md               ← German description of the category
│   └── skills/
│       └── <skill-name>/
│           ├── SKILL.md        ← skill prompt (YAML frontmatter + instructions)
│           └── README.md       ← German explanation of the skill
└── skills-lock.json            ← tracks origin of externally sourced skills
```

## Current categories (plugins)

| Category | Plugin name | Skills |
|----------|-------------|--------|
| `projektmanagement/` | `projektmanagement` | grill-me, write-a-prd, prd-to-issues |
| `entwicklung/` | `entwicklung` | tdd |
| `design/` | `design` | _(empty, prepared)_ |

## Loading plugins

```bash
# Per session (command line)
claude --plugin-dir ./projektmanagement --plugin-dir ./entwicklung

# Persistent global config (~/.claude/settings.json)
{ "pluginDirs": ["~/claude-skill-lib/projektmanagement", "~/claude-skill-lib/entwicklung"] }
```

Skill invocation uses the plugin namespace: `/projektmanagement:grill-me`, `/entwicklung:tdd`

## Adding a new skill

1. Choose the right category (or create a new one, see below)
2. Create `<category>/skills/<skill-name>/SKILL.md` with frontmatter:
   ```yaml
   ---
   name: skill-name
   description: What it does and when to use it. Claude uses this to auto-invoke.
   ---
   ```
3. Add a German `<category>/skills/<skill-name>/README.md`
4. Bump the version in `<category>/.claude-plugin/plugin.json`

## Adding a new category

1. `mkdir -p <category>/.claude-plugin <category>/skills`
2. Create `<category>/.claude-plugin/plugin.json` (name, description, version, author)
3. Create `<category>/README.md` (German overview)
4. Add the category entry to `.claude-plugin/marketplace.json`
5. Document in root `README.md`

## Conventions

- Skill and category names: lowercase, hyphens only
- READMEs are written in German
- `skills-lock.json` tracks externally sourced skills (from `mattpocock/skills` etc.)
- Commits are kept semantically independent: one commit per concern
