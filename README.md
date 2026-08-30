# Workflows

This repo stores agent workflows. Coding agents and go-to-market (GTM) agents both use it.

A workflow is a folder, not one file. Agents load `SKILL.md` like a skill. That file is short. It points at processes, human-in-the-loop templates, and (on your machine) systems of record and taste.

## Folders

- `coding/` — software work (build to spec, create spec, respond to a PR review)
- `gtm/` — go-to-market work (batch cold email, enrich lead)
- `meta/` — workflows about workflows
- `shared/` — pieces more than one workflow uses

## Add a workflow

Use `meta/create-workflows`. You can paste an idea, a spec, or a hand-drawn flow.

## How a workflow is shaped

```mermaid
flowchart TD
  skill["SKILL.md (orchestrator)"] --> proc["Processes/*.md"]
  proc --> taste["Taste/ (CONFIG time)"]
  proc --> hitl["HiTL/ templates"]
  proc --> sor["SoRs.yaml (CONFIG time)"]
  skill --> cond{Condition}
  cond -->|pass| proc
  cond -->|fail| hitl
```

`SoRs.yaml` and `Taste/` are templates in this repo. You fill them when you install a workflow on a machine. See `CONFIG.md` in each workflow folder.
