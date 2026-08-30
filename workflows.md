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

**Taste** — Judgement. Can be black-and-white or a guideline with room to decide. Filled at CONFIG time. In this repo, keep placeholders (except authoring taste on `meta/create-workflow` itself).

**Human in the loop (HiTL)** — Mid-workflow escalation (review or issue), or a retrospective after. One file per loop in `HiTL/`. Escalations include `## a2h` (compressed ping via `a2h send --json`), `## Chat` (what to post in the agent chat), and optional `## Doc` (markdown artifact). Always log. Chat-only only when a process says so. If `a2h` is missing, install https://github.com/TyrellD1/agenttohuman and have the agent configure it.

**Processes** — Markdown files fetched when the orchestrator reaches that step. A process may have conditions, exit criteria, and pointers to nested processes, Taste, SoRs, or HiTL.

**Conditions** — Branch in SKILL.md or in a process. Example: spec clear → implement; else → escalate.

**Polling** — The workflow may start on a poll, or poll at a step.

**Logging** — Do not write log files yourself. Use `shared/cli/workflows-log`. Logs live in `~/.workflows/logs`. Always log HiTL. Schema: `Processes/logging.md` in `meta/create-workflow`.

**CONFIG.md** — Setup map. Lists every SoR and Taste pointer in the workflow, which file points at it, and the surgical edit (write the SoR/Taste, then update only those pointer sites).

**README.md** — Human-facing. Short. Includes the signed mermaid diagram of the flow. Template: `meta/create-workflow/Processes/write_readme.md`.

## Authoring

Create new workflows with `meta/create-workflow`. Sign off the mermaid in chat first. Short instructions everywhere. Pointers over prose.
