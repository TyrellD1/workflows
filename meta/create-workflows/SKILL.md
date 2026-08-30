---
name: create-workflows
title: Create workflow
description: Creates a new workflow directory from an idea or a hand-drawn flow. Accepts a purpose (and optional flow diagram) and ends with SKILL.md, processes, HiTL templates, SoRs/Taste placeholders, CONFIG.md, and a human README with mermaid. Use when adding a workflow under coding/, gtm/, meta/, or shared/.
---

# Create workflow

This workflow accepts a workflow idea (and optionally a hand-drawn flow) and ends with a new workflow folder in this repo.

Keep every file short. Point. Do not stuff. Read Taste/brevity.md.

Log start, each HiTL, and done. Follow Processes/logging.md.

1. Intake. Follow Processes/intake.md. If you cannot tell what it accepts and what it ends with, escalate using HiTL/clarify_purpose.md.
2. Pick bucket (`coding/`, `gtm/`, `meta/`, `shared/`). If unclear, escalate using HiTL/choose_bucket.md.
3. Scaffold. Follow Processes/scaffold.md.
4. Write `SKILL.md`. Follow Processes/write_skill.md. Then escalate using HiTL/review_skill.md.
5. Write each process as its own file. Follow Processes/write_process.md.
6. Write every HiTL template. Follow Processes/write_hitl.md. Then show each template using HiTL/review_hitl_templates.md. Do not continue until every template is seen and iterated.
7. Leave `SoRs.yaml` and `Taste/` as placeholders. Follow Processes/write_placeholders.md.
8. Write `CONFIG.md`. Follow Processes/write_config.md.
9. Create the mermaid diagram. Follow Processes/create_mermaid_diagram.md. If the user gave a hand-drawn flow, use it. If none, draft from the step list, then escalate using HiTL/missing_flow.md only if a drawing would change the shape. Iterate using HiTL/review_mermaid.md.
10. Write `README.md`. Follow Processes/write_readme.md. Iterate using HiTL/review_readme.md.
11. Finalize. Follow Processes/finalize.md.
12. Retrospective. Escalate using HiTL/retrospective.md.
