# Config

Do not commit machine-specific values or secrets back to the canonical repo.

## SoRs

- id: `REPLACE_ME_codebase`
  - Fill: the product git repo this idea is for
  - Pointed from: Processes/create_round.md (research the codebase)
  - Edit: set the real id in SoRs.yaml. Change commands only if this machine uses different ones.

- id: `REPLACE_ME_docs`
  - Fill: extra product docs / SoRs to read with the repo
  - Pointed from: Processes/create_round.md (configured systems in SoRs.yaml)
  - Edit: set the real id and commands. Add more rows if this machine has more docs.

- id: `REPLACE_ME_logger`
  - Fill: `shared/cli/workflows-log`
  - Pointed from: Processes/logging.md, SKILL.md (log start / HiTL / done)
  - Edit: set the real command path if this machine does not use `shared/cli/workflows-log`.

## Taste

None right now. `Taste/` stays a stub.

## Other setup

- Logger: `shared/cli/workflows-log`
- PLAN folder: `.coding-agents/<ts>_<work-slug>/PLAN/` (roundN.md, then INTENT.md)
- Skip open INTENT.md: set `skip_open_intent: true` here if the user should not get an `open` on that file. Pointed from: Processes/open_intent.md
- Context7 and web fetch: tools for Processes/create_round.md research. No SoR row.
