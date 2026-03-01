<div align="center">

# Awesome AI Rules

### The definitive collection of AI coding rules for every tool and tech stack

[![Awesome](https://img.shields.io/badge/Awesome-Yes-22c55e?style=for-the-badge)](#)
[![Stars](https://img.shields.io/github/stars/Lay4U/awesome-ai-rules?style=for-the-badge)](https://github.com/Lay4U/awesome-ai-rules/stargazers)
[![Contributors](https://img.shields.io/github/contributors/Lay4U/awesome-ai-rules?style=for-the-badge)](https://github.com/Lay4U/awesome-ai-rules/graphs/contributors)
[![Last Commit](https://img.shields.io/github/last-commit/Lay4U/awesome-ai-rules?style=for-the-badge)](https://github.com/Lay4U/awesome-ai-rules/commits/main)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-22c55e?style=for-the-badge)](https://github.com/Lay4U/awesome-ai-rules/pulls)
[![MIT License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](./LICENSE)
[![Tools](https://img.shields.io/badge/Tools-6-orange?style=for-the-badge)](#-quick-navigation)

Stop configuring your AI coding assistant from scratch. Copy proven rules, pick your stack, and ship.

English | [한국어](./README.ko.md)

</div>

## 🚀 Why This Exists

By 2026, context engineering has become one of the highest-leverage parts of software development. The difference between an average AI coding workflow and an exceptional one is rarely the model itself; it is how clearly you define behavior, constraints, coding standards, and project-specific expectations.

`awesome-ai-rules` exists to make that leverage reusable. Instead of writing new instructions for every project and every tool, you can start from curated, stack-specific rule sets that encode practical conventions and reduce drift across teams.

## 📑 Table of Contents

- [📚 Quick Navigation](#-quick-navigation)
- [🧰 Tool Rules](#-tool-rules)
- [🧠 Context Engineering Patterns](#-context-engineering-patterns)
- [📊 Cross-Tool Comparison](#-cross-tool-comparison)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)
- [⭐ Star This Repo](#-star-this-repo)

## 📚 Quick Navigation

| Tool | Config File | Stacks |
| --- | --- | --- |
| Cursor | `.cursorrules` | React, Next.js, TypeScript, Python |
| Claude Code | `CLAUDE.md` | React, Next.js, TypeScript, Python |
| GitHub Copilot | `copilot-instructions.md` | TypeScript, React, Python |
| Windsurf | `.windsurfrules` | TypeScript, React, Python |
| Codex | `AGENTS.md` | TypeScript, Python |
| Gemini CLI | `GEMINI.md` | TypeScript, Python |

## 🧰 Tool Rules

### Cursor (`.cursorrules`)

Available rules:
- [React](rules/cursor/react/.cursorrules)
- [Next.js](rules/cursor/nextjs/.cursorrules)
- [TypeScript](rules/cursor/typescript/.cursorrules)
- [Python](rules/cursor/python/.cursorrules)

Copy into your project root:

```bash
cp rules/cursor/<stack>/.cursorrules /path/to/your-project/.cursorrules
```

### Claude Code (`CLAUDE.md`)

Available rules:
- [React](rules/claude-code/react/CLAUDE.md)
- [Next.js](rules/claude-code/nextjs/CLAUDE.md)
- [TypeScript](rules/claude-code/typescript/CLAUDE.md)
- [Python](rules/claude-code/python/CLAUDE.md)

Copy into your project root:

```bash
cp rules/claude-code/<stack>/CLAUDE.md /path/to/your-project/CLAUDE.md
```

### GitHub Copilot (`copilot-instructions.md`)

Available rules:
- [TypeScript](rules/copilot/typescript/.github/copilot-instructions.md)
- [React](rules/copilot/react/.github/copilot-instructions.md)
- [Python](rules/copilot/python/.github/copilot-instructions.md)

Copy into your project root:

```bash
cp rules/copilot/<stack>/.github/copilot-instructions.md /path/to/your-project/.github/copilot-instructions.md
```

### Windsurf (`.windsurfrules`)

Available rules:
- [TypeScript](rules/windsurf/typescript/.windsurfrules)
- [React](rules/windsurf/react/.windsurfrules)
- [Python](rules/windsurf/python/.windsurfrules)

Copy into your project root:

```bash
cp rules/windsurf/<stack>/.windsurfrules /path/to/your-project/.windsurfrules
```

### Codex (`AGENTS.md`)

Available rules:
- [TypeScript](rules/codex/typescript/AGENTS.md)
- [Python](rules/codex/python/AGENTS.md)

Copy into your project root:

```bash
cp rules/codex/<stack>/AGENTS.md /path/to/your-project/AGENTS.md
```

### Gemini CLI (`GEMINI.md`)

Available rules:
- [TypeScript](rules/gemini-cli/typescript/GEMINI.md)
- [Python](rules/gemini-cli/python/GEMINI.md)

Copy into your project root:

```bash
cp rules/gemini-cli/<stack>/GEMINI.md /path/to/your-project/GEMINI.md
```

## 🧠 Context Engineering Patterns

- Role framing: define assistant identity and boundaries upfront.
- Output contracts: specify response format, style, and required sections.
- Repository awareness: include project architecture and coding conventions.
- Task decomposition: force stepwise planning before implementation.
- Safety rails: include forbidden actions and risk escalation rules.
- Stack-specific constraints: encode framework, testing, and linting expectations.
- Review loops: require self-checks and explicit verification steps.

## 📊 Cross-Tool Comparison

| Feature | Cursor | Claude Code | Copilot | Windsurf | Codex | Gemini CLI |
| --- | --- | --- | --- | --- | --- | --- |
| Primary Config File | `.cursorrules` | `CLAUDE.md` | `copilot-instructions.md` | `.windsurfrules` | `AGENTS.md` | `GEMINI.md` |
| Rule Files In Repo | Yes | Yes | Yes | Yes | Yes | Yes |
| Stack-Specific Layout | Yes | Yes | Yes | Yes | Yes | Yes |
| Best For | IDE pair programming | Agentic terminal coding | Inline suggestions | IDE-native workflows | Terminal coding agents | CLI-first AI workflows |

## 🤝 Contributing

Contributions are welcome.

- Add new stack-specific rule files under `rules/<tool>/<stack>/`.
- Keep instructions concrete, testable, and production-oriented.
- Open a PR with a short rationale and example usage.

## 📄 License

This project is licensed under the [MIT License](./LICENSE).

## ⭐ Star This Repo

If this helps your team ship faster, star the repository and share it with other AI-native developers.
