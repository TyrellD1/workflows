# Workflows (for agents)

A **workflow** is a callable folder. Agents (Cursor, Claude, and others) load `SKILL.md` like a skill. The workflow is not that one file. `SKILL.md` is the orchestrator. It points at other files and the agent fetches them at the step that needs them.

## Layout

```
<bucket>/<workflow-name>/
  SKILL.md
  CONFIG.md
  README.md
  SoRs.yaml
  HiTL/
  Taste/
  Processes/
```

Buckets: `coding/`, `gtm/`, `meta/`, `shared/`.

## Parts

**SKILL.md** — Title, description (`this workflow accepts X and ends with Y`), numbered steps, conditions, pointers. No process bodies inline.

**System of record (SoR)** — `SoRs.yaml`. Each entry: `id`, 1–3 sentences on when to use it (`description`), optional `commands`. Defined at CONFIG time. In this repo, keep the template only.

**Taste** — Judgement. Can be black-and-white or a guideline with room to decide. Filled at CONFIG time. In this repo, keep placeholders (except authoring taste on `meta/create-workflows` itself).

**Human in the loop (HiTL)** — Mid-workflow escalation, or a retrospective after. Each template in `HiTL/` has a message format and exit conditions (continue, keep iterating, give up). Always log HiTL. Show every new template to the human and iterate before finalize.

**Processes** — Markdown files fetched when the orchestrator reaches that step. A process may have conditions, exit criteria, and pointers to nested processes, Taste, or HiTL.

**Conditions** — Branch in SKILL.md or in a process. Example: spec clear → implement; else → escalate.

**Polling** — The workflow may start on a poll, or poll at a step.

**Logging** — Do not write log files yourself. Use `shared/cli/workflows-log`. Logs live in `~/.workflows/logs`. Always log HiTL. Schema: `Processes/logging.md` in `meta/create-workflows`.

**CONFIG.md** — Setup-time instructions for when the workflow is pulled onto a machine (fill SoRs, fill Taste, confirm logger).

**README.md** — Human-facing. Short. Includes a mermaid diagram of the flow. Template: `meta/create-workflows/Processes/write_readme.md`.

## Authoring

Create new workflows with `meta/create-workflows`. Short instructions everywhere. Pointers over prose.
