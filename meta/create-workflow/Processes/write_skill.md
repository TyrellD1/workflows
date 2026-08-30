# Write SKILL.md

Derive the step list from the signed mermaid. Do not invent branches that are not on it.

Frontmatter:

```yaml
---
name: <name>
title: <title>
description: <this workflow accepts X and ends with Y. Use when ...>
---
```

Body: numbered steps. Each step is one action plus a pointer.

Pattern:

```
1. <input>. If you cannot find it, escalate using HiTL/<template>.md
2. Follow Processes/<process>.md
3. If it fails that process's checks, follow the HiTL pointer in that process. Else continue.
4. Follow Processes/<next>.md
```

Nested work lives in the process file, not here. Example of a pointer into a nested process:

```
4. Implement via Processes/implement.md
```

and inside `implement.md`:

```
1. Setup via Processes/setup_env.md
2. If FE work, read Taste/FE.md. If missing, escalate using HiTL/missing_FE.md
```

Conditions stay one line. HiTL is always a template pointer.

Do not pause for a SKILL.md review. That happens in HiTL/retrospective.md.
