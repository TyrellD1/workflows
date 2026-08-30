# Write CONFIG.md

CONFIG is setup time: when someone pulls the workflow onto a machine.

Write a short `CONFIG.md` in the new workflow:

```markdown
# Config

Fill these on the machine. Do not commit machine-specific values back to the canonical repo.

1. SoRs.yaml: replace REPLACE_ME_* with real systems. Add commands that work here.
2. Taste/: add judgement files for this environment. See Taste/README.md.
3. Logging: use shared/cli/workflows-log (or the machine's equivalent). See the create-workflows logging process if this repo has it.
```

Add extra setup steps only if the workflow cannot run without them.
