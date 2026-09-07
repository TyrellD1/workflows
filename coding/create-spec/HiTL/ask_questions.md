# Ask questions

## When

After a round is written to PLAN. Before the next round or INTENT.md.

Write the chat with the chat-with-human skill. Read Taste/product_depth.md for anticipated rounds.

## a2h

```
a2h send --json "create-spec: round <N> questions are in chat. Answer, or say the plan is clear enough."
```

If `a2h` is missing, tell the human to install https://github.com/TyrellD1/agenttohuman and ask their agent to configure it. Still send Chat.

## Chat

Questions: max 5 sentences. Meat in the first paragraph, and bold it.
Recommendations: 2-3 sentences.
Granularity: 1 is biggest picture, 10 is most detailed.

```
**Anticipated rounds:** `<n-rounds>`
**Level of granularity:** `<1-10>`

## Questions:

❓ Q1: <question>

🎙️ R: <recommendation>
```

## Exit

- Continue: user answered. Follow Processes/write_answers.md, then the next round.
- Continue: user says the plan is clear enough. Follow Processes/write_intent.md.
- Keep iterating: they want the same round restated. Send Chat again.
- Give up: user stops.
