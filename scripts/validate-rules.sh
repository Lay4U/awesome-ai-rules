#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd -- "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TOOLS=(cursor claude-code copilot windsurf codex gemini-cli aider cline)
STACKS=(typescript react nextjs python go rust vue svelte java)
declare -A TOOL_COUNTS STACK_COUNTS
missing=0; empty=0; bad_yaml=0; total=0

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  echo "Usage: ./scripts/validate-rules.sh  # Validate rule files for CI/local use"
  exit 0
fi

file_name() {
  case "$1" in
    cursor) echo ".cursorrules";; claude-code) echo "CLAUDE.md";; copilot) echo ".github/copilot-instructions.md";;
    windsurf) echo ".windsurfrules";; codex) echo "AGENTS.md";; gemini-cli) echo "GEMINI.md";;
    aider) echo ".aider.conf.yml";; cline) echo ".clinerules";; *) return 1;;
  esac
}

validate_yaml_basic() {
  awk 'BEGIN{ok=1}
    /^[[:space:]]*($|#)/ {next}
    /^---[[:space:]]*$/ {next}
    /^[[:space:]]*-[[:space:]]+/ {next}
    /^[[:space:]]*[A-Za-z0-9_.-]+:[[:space:]]*(#.*)?$/ {next}
    /^[[:space:]]*[A-Za-z0-9_.-]+:[[:space:]].+$/ {next}
    {ok=0}
    END{exit ok?0:1}' "$1"
}

for tool in "${TOOLS[@]}"; do
  for stack in "${STACKS[@]}"; do
    file="$ROOT_DIR/rules/$tool/$stack/$(file_name "$tool")"
    if [[ ! -f "$file" ]]; then echo "Missing: $file"; ((missing+=1)); continue; fi
    if [[ ! -s "$file" ]]; then echo "Empty:   $file"; ((empty+=1)); continue; fi
    if [[ "$tool" == "aider" ]] && ! validate_yaml_basic "$file"; then echo "Bad YAML: $file"; ((bad_yaml+=1)); fi
    : "${TOOL_COUNTS[$tool]:=0}" "${STACK_COUNTS[$stack]:=0}"
    ((total+=1)); ((TOOL_COUNTS[$tool]+=1)); ((STACK_COUNTS[$stack]+=1))
  done
done

echo ""
echo "Rule counts by tool:"
for tool in "${TOOLS[@]}"; do echo "  $tool: ${TOOL_COUNTS[$tool]:-0}"; done

echo ""
echo "Rule counts by stack:"
for stack in "${STACKS[@]}"; do echo "  $stack: ${STACK_COUNTS[$stack]:-0}"; done

echo ""
echo "Validated $total rule files."

if (( missing > 0 || empty > 0 || bad_yaml > 0 )); then
  echo "Validation failed (missing=$missing, empty=$empty, bad_yaml=$bad_yaml)." >&2
  exit 1
fi

echo "Validation passed."
