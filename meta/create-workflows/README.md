# Create workflow

This workflow accepts a workflow idea (and optionally a hand-drawn flow) and ends with a new workflow folder.

## When it runs

- Manual: you ask an agent to create a workflow, scaffold a skill-like folder, or add something under `coding/`, `gtm/`, `meta/`, or `shared/`.

## Before you start

- A name and purpose (what it accepts, what it ends with)
- Optional: a hand-drawn flow

## How it works

```mermaid
flowchart TD
  intake[Intake] --> purpose{Purpose clear?}
  purpose -->|no| clarify[HiTL clarify_purpose]
  clarify --> intake
  purpose -->|yes| bucket[Pick bucket]
  bucket --> scaffold[Scaffold]
  scaffold --> skill[Write SKILL.md]
  skill --> reviewSkill[HiTL review_skill]
  reviewSkill --> procs[Write processes]
  procs --> hitl[Write HiTL templates]
  hitl --> reviewHiTL[HiTL review_hitl_templates]
  reviewHiTL --> placeholders[SoRs and Taste placeholders]
  placeholders --> config[Write CONFIG.md]
  config --> mermaid[Create mermaid]
  mermaid --> reviewMermaid[HiTL review_mermaid]
  reviewMermaid --> readme[Write README]
  readme --> reviewReadme[HiTL review_readme]
  reviewReadme --> done[Finalize]
  done --> retro[HiTL retrospective]
```

## When a person gets involved

- Purpose or bucket is unclear
- You approve the step list, every HiTL template, the mermaid, and the README
- A short retrospective at the end
