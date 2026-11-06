# CLAUDE.md

Jan's personal Claude Code skill library, published as a marketplace with exactly one plugin: `jasu`.

## Structure

- `.claude-plugin/marketplace.json` lists one plugin with `source: "./"`; `.claude-plugin/plugin.json` is that plugin.
- Every skill lives flat in `skills/<name>/` (`SKILL.md` + German `README.md`). No categories, no sub-plugins.

## Adding or changing a skill

1. `skills/<name>/SKILL.md` (frontmatter `name` = folder name) and a German `README.md`
2. Add or update the row in the skill table in `README.md` and the badge count
3. Bump `version` in `.claude-plugin/plugin.json` – installed copies only update when the version changes
4. Run `claude plugin validate .`

## Rules

- No duplicates of skills that already ship in the 3m5. Plugin Hub (`3m5/plugin-hub`, e.g. grill-me, storytelling) or in the Anthropic skills synced from claude.ai (e.g. write-a-prd, prd-to-issues) – those versions win. Keep the "Was hier bewusst fehlt" table in `README.md` in sync.
- The plugin name `jasu` is the slash-command prefix (`/jasu:<skill>`). Don't rename it, and never use a plugin name from the 3m5. Plugin Hub (e.g. `projektmanagement`, `shared`) – the namespaces would collide.
- `skills-lock.json` tracks skills copied from external sources (e.g. `mattpocock/skills`).
- Skill and folder names: lowercase, hyphens only.
- All `.md` files except this one: German, personal tone ("ich nutze"), structured with emojis, tables and code blocks.
- One commit per concern.
