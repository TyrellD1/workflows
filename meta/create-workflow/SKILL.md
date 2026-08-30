---
name: create-workflow
title: Create workflow
description: Creates a new workflow directory from an idea or a hand-drawn flow. Accepts a purpose (and optional flow diagram) and ends with SKILL.md, processes, HiTL templates, SoRs/Taste placeholders, CONFIG.md, and a human README with mermaid. Use when adding a workflow under coding/, gtm/, meta/, or shared/.
---

# Create workflow

This workflow accepts a workflow idea (and optionally a hand-drawn flow) and ends with a new workflow folder in this repo.

Keep every file short. Point. Do not stuff. Read Taste/brevity.md.

Log start, each HiTL, and done. Follow Processes/logging.md.

1. Intake. Follow Processes/intake.md. If you cannot tell what it accepts and what it ends with, escalate using HiTL/clarify_purpose.md.
2. Create the mermaid diagram. Follow Processes/create_mermaid_diagram.md. Get the contract on the diagram first.
3. Iterate the mermaid in chat using HiTL/review_mermaid.md until the user signs off that it matches what they wrote or are thinking.
4. Pick bucket (`coding/`, `gtm/`, `meta/`, `shared/`). If unclear, escalate using HiTL/choose_bucket.md.
5. Scaffold. Follow Processes/scaffold.md.
6. Write `SKILL.md` from the signed mermaid. Follow Processes/write_skill.md.
7. Write each process as its own file. Follow Processes/write_process.md.
8. Write every HiTL file. Follow Processes/write_hitl.md.
9. Leave `SoRs.yaml` and `Taste/` as placeholders. Follow Processes/write_placeholders.md.
10. Write `CONFIG.md`. Follow Processes/write_config.md.
11. Write `README.md`. Follow Processes/write_readme.md. Use the signed mermaid.
12. Finalize. Follow Processes/finalize.md.
13. Retrospective. Escalate using HiTL/retrospective.md. Review SKILL.md, Processes, CONFIG.md, and README.md there.
