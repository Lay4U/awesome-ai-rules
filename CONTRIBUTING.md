# Contributing Guide

Thanks for improving `awesome-ai-rules`.
This guide covers structure, naming, quality, and PR flow.
## Directory Structure

```text
rules/
  <tool>/
    <stack>/
      <tool-specific rule file>
assets/
guides/
README.md
```

- `rules/` stores all tool and stack rule files.
- `assets/` contains images and static docs resources.
- `guides/` contains supporting documentation.
## Add Rules for a New Stack

1. Pick a tool under `rules/<tool>/`.
2. Create a new stack directory: `rules/<tool>/<stack>/`.
3. Add the correct tool-specific file name.
4. Write concrete rules for coding behavior and constraints.
5. Include stack-aware expectations (lint, test, build, safety).
6. Update `README.md` links when adding a new available stack.
## File Naming by Tool

Use these exact names:

| Tool | File Name | Example Path |
| --- | --- | --- |
| Cursor | `.cursorrules` | `rules/cursor/react/.cursorrules` |
| Claude Code | `CLAUDE.md` | `rules/claude-code/python/CLAUDE.md` |
| GitHub Copilot | `copilot-instructions.md` | `rules/copilot/go/copilot-instructions.md` |
| Windsurf | `.windsurfrules` | `rules/windsurf/nextjs/.windsurfrules` |
| Codex | `codex.md` | `rules/codex/typescript/codex.md` |
| Gemini CLI | `GEMINI.md` | `rules/gemini-cli/rust/GEMINI.md` |
## Quality Standards

Each rule file should be:

- Specific and actionable
- Testable and reviewable
- Production-oriented
- Consistent with nearby tool conventions
- Free of filler and duplicated guidance

Recommended sections:
- Role and boundaries
- Planning and execution flow
- Code quality and testing expectations
- Safety and forbidden actions
## Pull Request Process

1. Fork the repository.
2. Create a branch: `feat/<tool>-<stack>-rules`.
3. Commit focused changes with clear messages.
4. Push to your fork.
5. Open a PR to `main`.
6. Explain what changed, why it matters, and how to use it.
7. Address review comments and update the branch.
## PR Checklist

- Correct path: `rules/<tool>/<stack>/`
- Correct file naming convention
- Concrete, stack-aware, production-ready rules
- README updates for newly available stacks
- No unrelated cleanup or generated files
## Scope Notes

- Never commit secrets, tokens, or private URLs.
- Keep PRs focused; avoid broad multi-tool edits unless required.

Thanks for contributing.
