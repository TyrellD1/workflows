# Write README.md

Human-facing. Short sentences. Common words. No agent jargon unless you define it.

Paste the signed mermaid. Do not draw a new one.

Use this template. Drop trigger rows that do not apply. Keep at least one.

````markdown
# <Workflow name>

<One sentence: this workflow accepts X and ends with Y.>

## When it runs

- Manual: <when a person asks>
- Poll: <what is checked, how often if known>
- Webhook: <what event>
- Schedule: <when>
- Other: <slash command, skill name, etc.>

## Before you start

- <what must exist>

## How it works

```mermaid
<signed diagram from Processes/create_mermaid_diagram.md>
```

## When a person gets involved

- <situation>
````

Do not pause for a README review. That happens in HiTL/retrospective.md.

The mermaid is required. Do not ship a README without the signed diagram.
