# Retrospective

## When

After finalize, once per create run. This is the review of SKILL.md, Processes, CONFIG.md, and README.md.

## a2h

```
a2h send --json "create-workflow: retrospective for <name>. Review SKILL.md, Processes, CONFIG.md, and README.md in the agent chat."
```

## Chat

```
Create workflow: retrospective for `<name>`

Path: <bucket>/<name>/

Please review these four:

### SKILL.md
<paste>

### Processes
<list files, paste each>

### CONFIG.md
<paste>

### README.md
<paste>

Also shipped:
- HiTL: <list>
- Mermaid signed off: yes/no
- Logger: wrote / skipped because <reason>

Mark each of the four: approve / change <file>.

What was slow:
- <one or two bullets>

Change in create-workflow next time:
- <none | specific file to edit>
```

If a paste is too long, send the path plus the sections that changed. Do not skip a file.

## Exit

- Continue: user approves or ignores. Either is enough to close.
- Keep iterating: user names a change. Apply it, then send this Chat again for the files that changed.
- Give up: not used here.
