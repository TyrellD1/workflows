# Write README.md

Human-facing. Short sentences. Common words. No agent jargon unless you define it.

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
<diagram from Processes/create_mermaid_diagram.md>
```

## When a person gets involved

- <situation>
````

Then send HiTL/review_readme.md. Iterate until approved.

The mermaid is required. Do not ship a README without it.
