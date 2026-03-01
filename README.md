<div align="center">

# Awesome AI Rules

### The definitive collection of AI coding rules for every tool and stack

[![Awesome](https://img.shields.io/badge/Awesome-Yes-22c55e?style=for-the-badge)](#awesome-ai-rules)
[![Stars](https://img.shields.io/github/stars/Lay4U/awesome-ai-rules?style=for-the-badge)](https://github.com/Lay4U/awesome-ai-rules/stargazers)
[![Contributors](https://img.shields.io/github/contributors/Lay4U/awesome-ai-rules?style=for-the-badge)](https://github.com/Lay4U/awesome-ai-rules/graphs/contributors)
[![Last Commit](https://img.shields.io/github/last-commit/Lay4U/awesome-ai-rules?style=for-the-badge)](https://github.com/Lay4U/awesome-ai-rules/commits/main)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-22c55e?style=for-the-badge)](./CONTRIBUTING.md)
[![MIT License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](./LICENSE)
[![Tools](https://img.shields.io/badge/Tools-8-orange?style=for-the-badge)](#full-navigation-matrix)
[![Rules](https://img.shields.io/badge/Rules-72-0ea5e9?style=for-the-badge)](#full-navigation-matrix)

Production-ready AI coding rules for 8 tools across 9 stacks, ready to copy into your project in seconds.

English | [한국어](./README.ko.md) | [中文](./README.zh.md) | [日本語](./README.ja.md)

</div>

## Why This Exists

AI coding output quality depends heavily on instruction quality.
Most teams still rewrite the same rules for every new project and tool.
This repository standardizes that process with stack-specific rule sets.
Each file is practical, opinionated, and designed for real production workflows.
Use it to reduce prompt drift, improve consistency, and onboard faster.
Copy what fits, customize what matters, and ship with higher confidence.

## Quick Start

```bash
# Cursor (TypeScript)
cp rules/cursor/typescript/.cursorrules ./.cursorrules

# Claude Code (React)
cp rules/claude-code/react/CLAUDE.md ./CLAUDE.md

# Copilot (Next.js)
mkdir -p ./.github && cp rules/copilot/nextjs/.github/copilot-instructions.md ./.github/copilot-instructions.md

# Windsurf (Python)
cp rules/windsurf/python/.windsurfrules ./.windsurfrules

# Codex (Go)
cp rules/codex/go/AGENTS.md ./AGENTS.md

# Gemini CLI (Rust)
cp rules/gemini-cli/rust/GEMINI.md ./GEMINI.md

# Aider (Vue)
cp rules/aider/vue/.aider.conf.yml ./.aider.conf.yml

# Cline (Java)
cp rules/cline/java/.clinerules ./.clinerules
```

## Full Navigation Matrix

| Tool | Config File | TypeScript | React | Next.js | Python | Go | Rust | Vue | Svelte | Java |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Cursor | `.cursorrules` | [✅](./rules/cursor/typescript/.cursorrules) | [✅](./rules/cursor/react/.cursorrules) | [✅](./rules/cursor/nextjs/.cursorrules) | [✅](./rules/cursor/python/.cursorrules) | [✅](./rules/cursor/go/.cursorrules) | [✅](./rules/cursor/rust/.cursorrules) | [✅](./rules/cursor/vue/.cursorrules) | [✅](./rules/cursor/svelte/.cursorrules) | [✅](./rules/cursor/java/.cursorrules) |
| Claude Code | `CLAUDE.md` | [✅](./rules/claude-code/typescript/CLAUDE.md) | [✅](./rules/claude-code/react/CLAUDE.md) | [✅](./rules/claude-code/nextjs/CLAUDE.md) | [✅](./rules/claude-code/python/CLAUDE.md) | [✅](./rules/claude-code/go/CLAUDE.md) | [✅](./rules/claude-code/rust/CLAUDE.md) | [✅](./rules/claude-code/vue/CLAUDE.md) | [✅](./rules/claude-code/svelte/CLAUDE.md) | [✅](./rules/claude-code/java/CLAUDE.md) |
| Copilot | `copilot-instructions.md` | [✅](./rules/copilot/typescript/.github/copilot-instructions.md) | [✅](./rules/copilot/react/.github/copilot-instructions.md) | [✅](./rules/copilot/nextjs/.github/copilot-instructions.md) | [✅](./rules/copilot/python/.github/copilot-instructions.md) | [✅](./rules/copilot/go/.github/copilot-instructions.md) | [✅](./rules/copilot/rust/.github/copilot-instructions.md) | [✅](./rules/copilot/vue/.github/copilot-instructions.md) | [✅](./rules/copilot/svelte/.github/copilot-instructions.md) | [✅](./rules/copilot/java/.github/copilot-instructions.md) |
| Windsurf | `.windsurfrules` | [✅](./rules/windsurf/typescript/.windsurfrules) | [✅](./rules/windsurf/react/.windsurfrules) | [✅](./rules/windsurf/nextjs/.windsurfrules) | [✅](./rules/windsurf/python/.windsurfrules) | [✅](./rules/windsurf/go/.windsurfrules) | [✅](./rules/windsurf/rust/.windsurfrules) | [✅](./rules/windsurf/vue/.windsurfrules) | [✅](./rules/windsurf/svelte/.windsurfrules) | [✅](./rules/windsurf/java/.windsurfrules) |
| Codex | `AGENTS.md` | [✅](./rules/codex/typescript/AGENTS.md) | [✅](./rules/codex/react/AGENTS.md) | [✅](./rules/codex/nextjs/AGENTS.md) | [✅](./rules/codex/python/AGENTS.md) | [✅](./rules/codex/go/AGENTS.md) | [✅](./rules/codex/rust/AGENTS.md) | [✅](./rules/codex/vue/AGENTS.md) | [✅](./rules/codex/svelte/AGENTS.md) | [✅](./rules/codex/java/AGENTS.md) |
| Gemini CLI | `GEMINI.md` | [✅](./rules/gemini-cli/typescript/GEMINI.md) | [✅](./rules/gemini-cli/react/GEMINI.md) | [✅](./rules/gemini-cli/nextjs/GEMINI.md) | [✅](./rules/gemini-cli/python/GEMINI.md) | [✅](./rules/gemini-cli/go/GEMINI.md) | [✅](./rules/gemini-cli/rust/GEMINI.md) | [✅](./rules/gemini-cli/vue/GEMINI.md) | [✅](./rules/gemini-cli/svelte/GEMINI.md) | [✅](./rules/gemini-cli/java/GEMINI.md) |
| Aider | `.aider.conf.yml` | [✅](./rules/aider/typescript/.aider.conf.yml) | [✅](./rules/aider/react/.aider.conf.yml) | [✅](./rules/aider/nextjs/.aider.conf.yml) | [✅](./rules/aider/python/.aider.conf.yml) | [✅](./rules/aider/go/.aider.conf.yml) | [✅](./rules/aider/rust/.aider.conf.yml) | [✅](./rules/aider/vue/.aider.conf.yml) | [✅](./rules/aider/svelte/.aider.conf.yml) | [✅](./rules/aider/java/.aider.conf.yml) |
| Cline | `.clinerules` | [✅](./rules/cline/typescript/.clinerules) | [✅](./rules/cline/react/.clinerules) | [✅](./rules/cline/nextjs/.clinerules) | [✅](./rules/cline/python/.clinerules) | [✅](./rules/cline/go/.clinerules) | [✅](./rules/cline/rust/.clinerules) | [✅](./rules/cline/vue/.clinerules) | [✅](./rules/cline/svelte/.clinerules) | [✅](./rules/cline/java/.clinerules) |

## Tool Rules

### Cursor (`.cursorrules`)

Available stacks: [TypeScript](./rules/cursor/typescript/.cursorrules), [React](./rules/cursor/react/.cursorrules), [Next.js](./rules/cursor/nextjs/.cursorrules), [Python](./rules/cursor/python/.cursorrules), [Go](./rules/cursor/go/.cursorrules), [Rust](./rules/cursor/rust/.cursorrules), [Vue](./rules/cursor/vue/.cursorrules), [Svelte](./rules/cursor/svelte/.cursorrules), [Java](./rules/cursor/java/.cursorrules)

```bash
cp rules/cursor/<stack>/.cursorrules /path/to/project/.cursorrules
```

### Claude Code (`CLAUDE.md`)

Available stacks: [TypeScript](./rules/claude-code/typescript/CLAUDE.md), [React](./rules/claude-code/react/CLAUDE.md), [Next.js](./rules/claude-code/nextjs/CLAUDE.md), [Python](./rules/claude-code/python/CLAUDE.md), [Go](./rules/claude-code/go/CLAUDE.md), [Rust](./rules/claude-code/rust/CLAUDE.md), [Vue](./rules/claude-code/vue/CLAUDE.md), [Svelte](./rules/claude-code/svelte/CLAUDE.md), [Java](./rules/claude-code/java/CLAUDE.md)

```bash
cp rules/claude-code/<stack>/CLAUDE.md /path/to/project/CLAUDE.md
```

### Copilot (`copilot-instructions.md`)

Available stacks: [TypeScript](./rules/copilot/typescript/.github/copilot-instructions.md), [React](./rules/copilot/react/.github/copilot-instructions.md), [Next.js](./rules/copilot/nextjs/.github/copilot-instructions.md), [Python](./rules/copilot/python/.github/copilot-instructions.md), [Go](./rules/copilot/go/.github/copilot-instructions.md), [Rust](./rules/copilot/rust/.github/copilot-instructions.md), [Vue](./rules/copilot/vue/.github/copilot-instructions.md), [Svelte](./rules/copilot/svelte/.github/copilot-instructions.md), [Java](./rules/copilot/java/.github/copilot-instructions.md)

```bash
mkdir -p /path/to/project/.github && cp rules/copilot/<stack>/.github/copilot-instructions.md /path/to/project/.github/copilot-instructions.md
```

### Windsurf (`.windsurfrules`)

Available stacks: [TypeScript](./rules/windsurf/typescript/.windsurfrules), [React](./rules/windsurf/react/.windsurfrules), [Next.js](./rules/windsurf/nextjs/.windsurfrules), [Python](./rules/windsurf/python/.windsurfrules), [Go](./rules/windsurf/go/.windsurfrules), [Rust](./rules/windsurf/rust/.windsurfrules), [Vue](./rules/windsurf/vue/.windsurfrules), [Svelte](./rules/windsurf/svelte/.windsurfrules), [Java](./rules/windsurf/java/.windsurfrules)

```bash
cp rules/windsurf/<stack>/.windsurfrules /path/to/project/.windsurfrules
```

### Codex (`AGENTS.md`)

Available stacks: [TypeScript](./rules/codex/typescript/AGENTS.md), [React](./rules/codex/react/AGENTS.md), [Next.js](./rules/codex/nextjs/AGENTS.md), [Python](./rules/codex/python/AGENTS.md), [Go](./rules/codex/go/AGENTS.md), [Rust](./rules/codex/rust/AGENTS.md), [Vue](./rules/codex/vue/AGENTS.md), [Svelte](./rules/codex/svelte/AGENTS.md), [Java](./rules/codex/java/AGENTS.md)

```bash
cp rules/codex/<stack>/AGENTS.md /path/to/project/AGENTS.md
```

### Gemini CLI (`GEMINI.md`)

Available stacks: [TypeScript](./rules/gemini-cli/typescript/GEMINI.md), [React](./rules/gemini-cli/react/GEMINI.md), [Next.js](./rules/gemini-cli/nextjs/GEMINI.md), [Python](./rules/gemini-cli/python/GEMINI.md), [Go](./rules/gemini-cli/go/GEMINI.md), [Rust](./rules/gemini-cli/rust/GEMINI.md), [Vue](./rules/gemini-cli/vue/GEMINI.md), [Svelte](./rules/gemini-cli/svelte/GEMINI.md), [Java](./rules/gemini-cli/java/GEMINI.md)

```bash
cp rules/gemini-cli/<stack>/GEMINI.md /path/to/project/GEMINI.md
```

### Aider (`.aider.conf.yml`)

Available stacks: [TypeScript](./rules/aider/typescript/.aider.conf.yml), [React](./rules/aider/react/.aider.conf.yml), [Next.js](./rules/aider/nextjs/.aider.conf.yml), [Python](./rules/aider/python/.aider.conf.yml), [Go](./rules/aider/go/.aider.conf.yml), [Rust](./rules/aider/rust/.aider.conf.yml), [Vue](./rules/aider/vue/.aider.conf.yml), [Svelte](./rules/aider/svelte/.aider.conf.yml), [Java](./rules/aider/java/.aider.conf.yml)

```bash
cp rules/aider/<stack>/.aider.conf.yml /path/to/project/.aider.conf.yml
```

### Cline (`.clinerules`)

Available stacks: [TypeScript](./rules/cline/typescript/.clinerules), [React](./rules/cline/react/.clinerules), [Next.js](./rules/cline/nextjs/.clinerules), [Python](./rules/cline/python/.clinerules), [Go](./rules/cline/go/.clinerules), [Rust](./rules/cline/rust/.clinerules), [Vue](./rules/cline/vue/.clinerules), [Svelte](./rules/cline/svelte/.clinerules), [Java](./rules/cline/java/.clinerules)

```bash
cp rules/cline/<stack>/.clinerules /path/to/project/.clinerules
```

## Guides

- [Context Engineering](./guides/context-engineering.md)
- [Cross-Tool Comparison](./guides/cross-tool-comparison.md)

## Contributing

Contributions are welcome. Please read [CONTRIBUTING.md](./CONTRIBUTING.md) and open a PR with clear rationale and examples.

## License

Released under the [MIT License](./LICENSE).

## Star This Repo

If this repository helps your team ship faster with AI coding tools, please [star the project](https://github.com/Lay4U/awesome-ai-rules).
