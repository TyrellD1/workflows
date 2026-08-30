# Clarify purpose

## When

Intake cannot state what the workflow accepts and what it ends with.

## a2h

```
a2h send --json "create-workflow: need purpose. What does it accept and what does it end with? Reply in the agent chat."
```

## Chat

```
Create workflow: need purpose

Name guess: <name or unknown>
Bucket guess: <coding|gtm|meta|shared|unknown>

I need:
1. What it accepts (input)
2. What it ends with (output)
3. Trigger if you know it: manual / poll / webhook / schedule / other

<one clarifying question if needed, not a list of ten>
```

## Exit

- Continue: accepts X and ends with Y are explicit.
- Keep iterating: still vague.
- Give up: user stops the create.
