# Write HiTL templates

Every human-in-the-loop is a file in `HiTL/`. Two kinds: mid-workflow escalation, and retrospective.

Each file has:

- When it fires
- The message format (the template the agent sends)
- Exit conditions: continue / keep iterating / give up

The format is the point. Same shape every time so the human is not the bottleneck.

After drafts exist, send **every** template using HiTL/review_hitl_templates.md. Include the full body, not a summary. Iterate until each one is approved.

Do not finalize with an unseen template. If you add a template later in the run, show it again.

Log each send: Processes/logging.md (`event=hitl`, `--template <name>`).
