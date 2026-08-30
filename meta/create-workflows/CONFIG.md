# Config

This workflow runs in this repo.

1. `SoRs.yaml` stays a template in the canonical repo. On a machine, replace `REPLACE_ME_*` with real systems and commands that work there.
2. `Taste/` here is authoring taste for creating workflows. Keep it. Do not blank it.
3. Logging: `shared/cli/workflows-log`. Writes `~/.workflows/logs`. See Processes/logging.md.
4. When this workflow *creates* other workflows, those get placeholder `SoRs.yaml` and `Taste/` only. Fill those at CONFIG time on the machine that runs them.
