# Write a process

One markdown file per process. Name matches the pointer in SKILL.md.

Include, in this order, only if they apply:

1. When to run
2. What to do (short)
3. Conditions
4. Exit criteria
5. Pointers to nested processes, `Taste/`, `HiTL/`

No essays. If you need taste, point at `Taste/<file>.md`. If the taste file will be CONFIG-time only, point at it anyway and add a matching placeholder stub.

A process may say: if check fails, escalate using HiTL/<template>.md.

Exit: the orchestrator can run this step without opening any other process file except the ones this file names.
