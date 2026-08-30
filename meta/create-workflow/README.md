# Create workflow

This workflow accepts a workflow idea (and optionally a hand-drawn flow) and ends with a new workflow folder.

## When it runs

- Manual: you ask an agent to create a workflow, scaffold a skill-like folder, or add something under `coding/`, `gtm/`, `meta/`, or `shared/`.

## Before you start

- A name and purpose (what it accepts, what it ends with)
- Optional: a hand-drawn flow
- `a2h` installed and configured so escalations can ping you. See the root README.

## How it works

```mermaid
flowchart TD
  intake[Process intake] --> purpose{Purpose clear?}
  purpose -->|no| clarify[HiTL clarify_purpose]
  clarify --> intake
  purpose -->|yes| mermaid[Process create_mermaid_diagram]
  mermaid --> reviewMermaid[HiTL review_mermaid]
  reviewMermaid --> signed{Signed off?}
  signed -->|no| mermaid
  signed -->|yes| bucket{Bucket clear?}
  bucket -->|no| choose[HiTL choose_bucket]
  choose --> bucket
  bucket -->|yes| scaffold[Process scaffold]
  scaffold --> skill[Process write_skill]
  skill --> procs[Process write_process]
  procs --> hitl[Process write_hitl]
  hitl --> placeholders[Process write_placeholders]
  placeholders --> config[Process write_config]
  config --> readme[Process write_readme]
  readme --> done[Process finalize]
  done --> retro[HiTL retrospective]
```

## When a person gets involved

- Purpose or bucket is unclear (a2h + chat)
- You sign off the mermaid in chat before anything else is written
- A retrospective reviews SKILL.md, Processes, CONFIG.md, and README.md
