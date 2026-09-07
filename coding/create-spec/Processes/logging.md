# Logging

Do not write log files yourself. Call the CLI.

```
shared/cli/workflows-log \
  --workflow create-spec \
  --event <start|step|hitl|condition|poll|error|done> \
  [--step <name>] \
  [--template <hitl-file-stem>] \
  [--status <escalated|resolved|gave_up|ok>] \
  [--message <short unstructured>]
```

Writes one JSONL line to `~/.workflows/logs/<workflow>/<YYYY-MM-DD>.jsonl`.

Always log: `start`, every `hitl`, `done`. Log `error` when you stop.

HiTL log: `--event hitl --template ask_questions --status escalated` when you send. Then `--status resolved` or `gave_up` when you leave that HiTL.
