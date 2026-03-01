#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"

TOOLS=(cursor claude-code copilot windsurf codex gemini-cli aider cline)
STACKS=(typescript react nextjs python go rust vue svelte java)

usage() {
  cat <<'HELP'
Install a rule file into a project directory.

Usage:
  ./scripts/install-rule.sh <tool> <stack> [target-dir]
  ./scripts/install-rule.sh --list

Example:
  ./scripts/install-rule.sh cursor typescript ./my-project

Tools:
  cursor, claude-code, copilot, windsurf, codex, gemini-cli, aider, cline
Stacks:
  typescript, react, nextjs, python, go, rust, vue, svelte, java
HELP
}

rule_filename() {
  case "$1" in
    cursor) echo ".cursorrules" ;;
    claude-code) echo "CLAUDE.md" ;;
    copilot) echo ".github/copilot-instructions.md" ;;
    windsurf) echo ".windsurfrules" ;;
    codex) echo "AGENTS.md" ;;
    gemini-cli) echo "GEMINI.md" ;;
    aider) echo ".aider.conf.yml" ;;
    cline) echo ".clinerules" ;;
    *) return 1 ;;
  esac
}

contains() {
  local needle="$1"; shift
  for item in "$@"; do
    [[ "$item" == "$needle" ]] && return 0
  done
  return 1
}

list_combinations() {
  local tool stack
  for tool in "${TOOLS[@]}"; do
    for stack in "${STACKS[@]}"; do
      echo "$tool/$stack"
    done
  done
}

if [[ $# -eq 0 ]]; then
  usage
  exit 0
fi

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  usage
  exit 0
fi

if [[ "${1:-}" == "--list" ]]; then
  list_combinations
  exit 0
fi

if [[ $# -lt 2 || $# -gt 3 ]]; then
  echo "Error: expected 2 or 3 arguments." >&2
  usage
  exit 1
fi

tool="$1"
stack="$2"
target_dir="${3:-.}"

if ! contains "$tool" "${TOOLS[@]}"; then
  echo "Error: unknown tool '$tool'. Use --list to see valid combinations." >&2
  exit 1
fi

if ! contains "$stack" "${STACKS[@]}"; then
  echo "Error: unknown stack '$stack'. Use --list to see valid combinations." >&2
  exit 1
fi

filename="$(rule_filename "$tool")"
source_file="$ROOT_DIR/rules/$tool/$stack/$filename"
dest_file="$target_dir/$filename"

if [[ ! -s "$source_file" ]]; then
  echo "Error: rule file missing or empty: $source_file" >&2
  exit 1
fi

mkdir -p "$(dirname "$dest_file")"
if ! cp "$source_file" "$dest_file"; then
  echo "Error: failed to copy rule file to $dest_file" >&2
  exit 1
fi

echo "Installed $tool/$stack rule to: $dest_file"
