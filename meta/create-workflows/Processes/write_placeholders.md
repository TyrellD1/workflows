# Write placeholders

Do this in the **new** workflow folder. Not for this create-workflows folder's own Taste.

## SoRs.yaml

Copy the shape below. Use fake ids. 1–3 sentence `description`. Optional `commands`. No secrets. No machine paths that only exist on one laptop.

```yaml
# Template only. Fill at CONFIG time on a machine. Do not put secrets here.

systems:
  - id: REPLACE_ME_example
    description: >
      What this system is for. When to use it. When not to.
    commands:
      - "example command"
```

List one example row per SoR named at intake (GitHub, codebase, Notion, CRM, and so on). Still `REPLACE_ME_*`.

## Taste/

Add `Taste/README.md`:

```markdown
# Taste

Filled at CONFIG time on a machine. Canonical repo keeps this stub.

Add one markdown file per taste area (example: `FE.md`, `db.md`, `rigidity.md`).
Black-and-white rules and general guidelines are both fine.
```

Do not invent local taste.
