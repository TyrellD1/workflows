# Write CONFIG.md

CONFIG is the setup map. It lists every place this workflow points at a SoR or at Taste. An installing agent uses it to make surgical edits: fill the SoR or Taste file, then update only the pointer sites.

After SKILL.md, processes, and HiTL exist, scan them. Write:

```markdown
# Config

Do not commit machine-specific values or secrets back to the canonical repo.

## SoRs

For each system in SoRs.yaml:

- id: `REPLACE_ME_<name>`
- Fill: <what the description and commands should become on this machine>
- Pointed from: <file: nearby quote or step>
- Edit: write the SoR row, then change only those pointer sites to the real id or command.

## Taste

For each Taste pointer:

- File: `Taste/<name>.md`
- Fill: <what judgement belongs here>
- Pointed from: <file: nearby quote or step>
- Edit: write that Taste file, then change only those pointer sites if the filename is still a stub.

## Other setup

- a2h: required for HiTL escalations. Install https://github.com/TyrellD1/agenttohuman and have the agent configure it.
- Logger: `shared/cli/workflows-log`
```

If nothing points at a SoR or Taste, say so. Do not invent extra setup.
