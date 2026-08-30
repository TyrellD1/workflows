# Write HiTL files

One file per human-in-the-loop in `HiTL/<stem>.md`. Two kinds: mid-workflow escalation (review or issue), and retrospective.

## Escalation (review or issue)

One file holds every channel. Do not split a2h / chat / doc across files.

```markdown
# <Name>

## When
<when it fires>

## a2h
Compressed summary. Check `a2h` is on PATH. Then:

    a2h send --json "<one or two sentences. what you need. where to reply.>"

If `a2h` is missing, tell the human to install https://github.com/TyrellD1/agenttohuman and ask their agent to configure it. Still send Chat.

## Chat
<template the agent posts in the agent chat>

## Doc
Optional. Include this section only when the human needs a markdown artifact.
<template for that file. say the path to write.>

## Exit
- Continue: ...
- Keep iterating: ...
- Give up: ...
```

a2h is the ping. Chat is the working copy. Doc is the durable copy when chat is not enough.

## Chat-only exception

If the process says chat only (mermaid contract), omit `## a2h` and `## Doc`. Chat, iterate, log.

## Send

1. Log `event=hitl` (Processes/logging.md).
2. Send a2h if that section exists.
3. Post Chat.
4. Write Doc if that section exists.

Always log. Even chat-only.
