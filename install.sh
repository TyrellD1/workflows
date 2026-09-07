#!/usr/bin/env bash
# Put `workflows` on PATH so you can run it from any project.
#
#   ./install.sh
set -euo pipefail

if [[ -z "${BASH_SOURCE[0]:-}" || ! -f "${BASH_SOURCE[0]}" ]]; then
  echo "error: run this from a workflows checkout." >&2
  echo "hint: cd workflows && ./install.sh" >&2
  exit 1
fi

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$ROOT/shared/cli/workflows"

if [[ ! -f "$SRC" ]]; then
  echo "error: missing $SRC" >&2
  exit 1
fi

BIN_DIR="${WORKFLOWS_BIN_DIR:-$HOME/.local/bin}"
mkdir -p "$BIN_DIR"
chmod +x "$SRC" "$ROOT/install.sh"
ln -sfn "$SRC" "$BIN_DIR/workflows"
rm -f "$BIN_DIR/agent-skills"

echo "Installed: $BIN_DIR/workflows -> $SRC"

if ! command -v workflows >/dev/null 2>&1; then
  echo
  echo "workflows is not on PATH yet. Add this to your shell rc:"
  echo "  export PATH=\"$BIN_DIR:\$PATH\""
fi

echo
echo "Next, in any project:"
echo "  workflows"
