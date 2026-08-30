# Logging

Do not write log files yourself. Call the CLI.

```
shared/cli/workflows-log \
  --workflow <id> \
  --event <start|step|hitl|condition|poll|error|done> \
  [--step <name>] \
  [--template <hitl-file-stem>] \
  [--status <escalated|resolved|gave_up|ok>] \
  [--message <short unstructured>]
```

Writes one JSONL line to `~/.workflows/logs/<workflow>/<YYYY-MM-DD>.jsonl`.

Always log: `start`, every `hitl`, `done`. Log `error` when you stop. Other events as needed.

HiTL log: `--event hitl --template <name> --status escalated` on send, then `--status resolved` or `gave_up` when you leave that HiTL.

If the CLI is missing and you have no OS access, skip the file write. Do not invent a side channel. Note it in the retrospective.
