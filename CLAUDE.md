# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A curated collection of AI agent skills installed via [`skills`](https://skills.sh) (the `npx skills@latest` CLI). Skills are markdown-based prompt files that extend Claude Code and other agents with specialized workflows.

## Skill management

Install a skill from a GitHub source:

```bash
npx skills@latest add mattpocock/skills/<skill-name> --yes
```

All installed skills are tracked in `skills-lock.json` (analogous to a package lock file). Skills are stored in two locations:

- `.agents/skills/<name>/` – universal copy, shared with all agents
- `.claude/skills/<name>/` – symlink to the `.agents` copy, used by Claude Code

## Repository structure

- `skills-lock.json` – records source and hash of each installed skill
- `.agents/skills/<name>/SKILL.md` – the skill prompt loaded by agents
- `.agents/skills/<name>/README.md` – German explanation of the skill (added manually)
- `.claude/skills/` – symlinked into Claude Code's skill resolution path

## Conventions

- Each skill directory gets a German `README.md` explaining its purpose, benefits, and how to invoke it.
- The root `README.md` documents all skills with a short German summary.
- Commits are kept semantically independent: one commit per concern (new skill install, new READMEs, root README update).
