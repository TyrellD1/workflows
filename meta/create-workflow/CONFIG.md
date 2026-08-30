# Config

Surgical setup. Fill SoRs and Taste on the machine, then change only the pointer sites listed. Do not commit secrets.

## SoRs

- id: `REPLACE_ME_repo`
  - Fill: this git repo
  - Pointed from: Processes/scaffold.md, Processes/finalize.md (write workflow files, commit)
  - Edit: set the real id in SoRs.yaml. No process filename change unless the command list is wrong.

- id: `REPLACE_ME_github`
  - Fill: GitHub remote via `gh`
  - Pointed from: AGENTS.md push rule (end of turn)
  - Edit: set the real id and `gh` commands that work here.

- id: `REPLACE_ME_logger`
  - Fill: `shared/cli/workflows-log`
  - Pointed from: Processes/logging.md, SKILL.md (log start / HiTL / done)
  - Edit: set the real command path if this machine does not use `shared/cli/workflows-log`.

- id: `REPLACE_ME_a2h`
  - Fill: `a2h` CLI after install + configure
  - Pointed from: every escalation HiTL file (`## a2h`), Processes/write_hitl.md
  - Edit: install https://github.com/TyrellD1/agenttohuman, have the agent run `a2h init`, then keep the `a2h send --json` lines as-is.

## Taste

- File: `Taste/brevity.md`
  - Fill: already canonical. Keep.
  - Pointed from: SKILL.md

- File: `Taste/rigidity.md`
  - Fill: already canonical. Keep.
  - Pointed from: Processes/create_mermaid_diagram.md (diagram is the contract), HiTL/retrospective.md (artifact review)

- File: `Taste/placeholders.md`
  - Fill: already canonical. Keep.
  - Pointed from: Processes/write_placeholders.md

- File: `Taste/hitl.md`
  - Fill: already canonical. Keep.
  - Pointed from: Processes/write_hitl.md

## Other setup

- a2h: required for HiTL escalations. Install https://github.com/TyrellD1/agenttohuman and have the agent configure it.
- Logger: `shared/cli/workflows-log` → `~/.workflows/logs`
