# CLAUDE.md

Jan's personal Claude Code library, published from GitHub as the marketplace `claude-skill-lib`: flat skills bundled as the plugin `jasu`, plus optional full plugins.

## Structure

- `skills/<name>/` – every skill, flat (`SKILL.md` + German `README.md`). The root plugin `jasu` (`source: "./"`, manifest `.claude-plugin/plugin.json`) picks all of them up automatically → `/jasu:<skill>`. No marketplace entry needed per skill.
- `plugins/<name>/` – full plugins (hooks, MCP servers, agents, commands) with their own `.claude-plugin/plugin.json`, each listed in `marketplace.json` with `source: "./plugins/<name>"`.
- Never put `hooks/`, `agents/`, `commands/` or `.mcp.json` in the repo root – they would load into `jasu`.

## Versioning

No `version` anywhere (neither `plugin.json` nor marketplace entries). Updates are tracked by git commit SHA, so every push to `main` is an update. `validate` warns about the missing version – that is intended; don't use `validate --strict` or `claude plugin tag`.

## Adding or changing a skill or plugin

1. Create `skills/<name>/` (frontmatter `name` = folder name), or `plugins/<name>/` plus its entry in `marketplace.json`
2. In `README.md`: add a `###` section for a skill (call, source, 2–3 sentences on its value) or a row in the plugin table, and update the badge counts
3. Run `scripts/validate.sh`
4. Test before pushing: `claude --plugin-dir .` (or `./plugins/<name>`) – the session-only copy overrides the installed `jasu`

## Rules

- No duplicates of skills that already ship in the 3m5. Plugin Hub (`3m5/plugin-hub`, e.g. grill-me, storytelling) or in the Anthropic skills synced from claude.ai (e.g. write-a-prd, prd-to-issues) – those versions win.
- The plugin name `jasu` is the slash-command prefix. Don't rename it, and never use a plugin name from the 3m5. Plugin Hub (e.g. `projektmanagement`, `shared`) – the namespaces would collide.
- `skills-lock.json` tracks skills copied from external sources (e.g. `mattpocock/skills`).
- Skill, plugin and folder names: lowercase, hyphens only.
- All `.md` files except this one: German, personal tone ("ich nutze"), structured with emojis, tables and code blocks.
- One commit per concern.
