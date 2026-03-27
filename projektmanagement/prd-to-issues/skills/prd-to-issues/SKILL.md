---
name: prd-to-issues
description: Break a PRD into independently-grabbable Jira issues (default) or GitHub issues using tracer-bullet vertical slices. Use when user wants to convert a PRD to issues, create implementation tickets, or break down a PRD into work items.
---

# PRD to Issues

Break a PRD into independently-grabbable issues using vertical slices (tracer bullets).

## Process

### 1. Locate the PRD and clarify target system

Ask the user:
- **Where is the PRD and where should the issues be created?**
  - Default: **Jira** (PRD as a Jira issue, new issues also as Jira issues via Atlassian MCP)
  - Alternative: GitHub (PRD as a GitHub issue, new issues via `gh`)
- If Jira: the Jira issue key of the PRD (e.g. `PROJ-42`) and the project key for new issues
- If GitHub: issue number or URL of the PRD

**Jira:** Fetch the PRD via Atlassian MCP (`get_issue`).
**GitHub:** Fetch the PRD with `gh issue view <number>` (with comments).

### 2. Explore the codebase (optional)

If you have not already explored the codebase, do so to understand the current state of the code.

### 3. Draft vertical slices

Break the PRD into **tracer bullet** issues. Each issue is a thin vertical slice that cuts through ALL integration layers end-to-end, NOT a horizontal slice of one layer.

Slices may be 'HITL' or 'AFK'. HITL slices require human interaction, such as an architectural decision or a design review. AFK slices can be implemented and merged without human interaction. Prefer AFK over HITL where possible.

<vertical-slice-rules>
- Each slice delivers a narrow but COMPLETE path through every layer (schema, API, UI, tests)
- A completed slice is demoable or verifiable on its own
- Prefer many thin slices over few thick ones
</vertical-slice-rules>

### 4. Quiz the user

Present the proposed breakdown as a numbered list. For each slice, show:

- **Title**: short descriptive name
- **Type**: HITL / AFK
- **Blocked by**: which other slices (if any) must complete first
- **User stories covered**: which user stories from the PRD this addresses

Ask the user:

- Does the granularity feel right? (too coarse / too fine)
- Are the dependency relationships correct?
- Should any slices be merged or split further?
- Are the correct slices marked as HITL and AFK?

Iterate until the user approves the breakdown.

### 5. Create the issues

Create issues in dependency order (blockers first) so real issue numbers/keys can be referenced.

**Jira (default):** Create each issue via Atlassian MCP (`create_issue`) with:
- `project`: the project key provided by the user
- `issuetype`: Story (or Task, depending on slice type)
- `summary`: slice title
- `description`: content from the template below (ADF format if required)
- Link blocker issues via `link_issues` (link type: "is blocked by")

**GitHub (fallback):** Create each issue with `gh issue create`. Reference blockers with `#<issue-number>`.

<issue-template>
## Parent PRD

Jira: <prd-issue-key> (e.g. PROJ-42) | GitHub: #<prd-issue-number>

## What to build

A concise description of this vertical slice. Describe the end-to-end behavior, not layer-by-layer implementation. Reference specific sections of the parent PRD rather than duplicating content.

## Acceptance criteria

- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

## Blocked by

- Blocked by <issue-key-or-number> (if any)

Or "None - can start immediately" if no blockers.

## User stories addressed

Reference by number from the parent PRD:

- User story 3
- User story 7

</issue-template>

Do NOT close or modify the parent PRD issue.
