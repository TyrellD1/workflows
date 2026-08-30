# Write a process

One markdown file per process. Name matches the pointer in SKILL.md and the `Process <name>` mermaid node.

Include, in this order, only if they apply:

1. When to run
2. What to do (short)
3. Conditions
4. Exit criteria
5. Pointers to nested processes, `Taste/`, `SoRs.yaml`, `HiTL/`

No essays. If you need taste, point at `Taste/<file>.md`. If the taste file will be CONFIG-time only, point at it anyway and add a matching placeholder stub.

A process may say: if check fails, escalate using HiTL/<template>.md.

Every SoR or Taste pointer you add must show up in CONFIG.md. Follow Processes/write_config.md after files exist.

Exit: the orchestrator can run this step without opening any other process file except the ones this file names.
