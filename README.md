<div align="center">

# Awesome AI Rules

### The definitive collection of AI coding rules for every tool and tech stack

[![Awesome](https://img.shields.io/badge/Awesome-Yes-22c55e?style=for-the-badge)](#)
[![Stars](https://img.shields.io/github/stars/lay4/awesome-ai-rules?style=for-the-badge)](https://github.com/lay4/awesome-ai-rules/stargazers)
[![MIT License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](./LICENSE)
[![Tools](https://img.shields.io/badge/Tools-6-orange?style=for-the-badge)](#-quick-navigation)

Stop configuring your AI coding assistant from scratch. Copy proven rules, pick your stack, and ship.

English | [한국어](./README.ko.md) | [中文](./README.zh.md) | [日本語](./README.ja.md)

</div>

## 🚀 Why This Exists

By 2026, context engineering has become one of the highest-leverage parts of software development. The difference between an average AI coding workflow and an exceptional one is rarely the model itself; it is how clearly you define behavior, constraints, coding standards, and project-specific expectations.

`awesome-ai-rules` exists to make that leverage reusable. Instead of writing new instructions for every project and every tool, you can start from curated, stack-specific rule sets that encode practical conventions and reduce drift across teams.

## 📚 Quick Navigation

| Tool | Config File | Stacks |
| --- | --- | --- |
| Cursor | `.cursorrules` | React, Next.js, TypeScript, Python |
| Claude Code | `CLAUDE.md` | React, Next.js, TypeScript, Python |
| GitHub Copilot | `copilot-instructions.md` | React, Next.js, TypeScript, Python, Go, Rust |
| Windsurf | `.windsurfrules` | Multi-stack templates |
| Codex | `codex.md` | Multi-stack templates |
| Gemini CLI | `GEMINI.md` | Multi-stack templates |

## 🧰 Tool Rules

### Cursor (`.cursorrules`)

Available rules:
- [React](/home/lay4/toy/awesome-ai-rules/rules/cursor/react/.cursorrules)
- [Next.js](/home/lay4/toy/awesome-ai-rules/rules/cursor/nextjs/.cursorrules)
- [TypeScript](/home/lay4/toy/awesome-ai-rules/rules/cursor/typescript/.cursorrules)
- [Python](/home/lay4/toy/awesome-ai-rules/rules/cursor/python/.cursorrules)

Copy into your project root:

```bash
cp rules/cursor/<stack>/.cursorrules /path/to/your-project/.cursorrules
```

### Claude Code (`CLAUDE.md`)

Available rules:
- [React](/home/lay4/toy/awesome-ai-rules/rules/claude-code/react/CLAUDE.md)
- [Next.js](/home/lay4/toy/awesome-ai-rules/rules/claude-code/nextjs/CLAUDE.md)
- [TypeScript](/home/lay4/toy/awesome-ai-rules/rules/claude-code/typescript/CLAUDE.md)
- [Python](/home/lay4/toy/awesome-ai-rules/rules/claude-code/python/CLAUDE.md)

Copy into your project root:

```bash
cp rules/claude-code/<stack>/CLAUDE.md /path/to/your-project/CLAUDE.md
```

### GitHub Copilot (`copilot-instructions.md`)

Status: directories are scaffolded; stack rule files are in progress.

Explore structure:
- [`rules/copilot/`](/home/lay4/toy/awesome-ai-rules/rules/copilot)

Expected copy pattern:

```bash
cp rules/copilot/<stack>/copilot-instructions.md /path/to/your-project/.github/copilot-instructions.md
```

### Windsurf (`.windsurfrules`)

Status: base folder created, rules coming soon.

Explore structure:
- [`rules/windsurf/`](/home/lay4/toy/awesome-ai-rules/rules/windsurf)

Expected copy pattern:

```bash
cp rules/windsurf/<stack>/.windsurfrules /path/to/your-project/.windsurfrules
```

### Codex (`codex.md`)

Status: base folder created, rules coming soon.

Explore structure:
- [`rules/codex/`](/home/lay4/toy/awesome-ai-rules/rules/codex)

Expected copy pattern:

```bash
cp rules/codex/<stack>/codex.md /path/to/your-project/codex.md
```

### Gemini CLI (`GEMINI.md`)

Status: base folder created, rules coming soon.

Explore structure:
- [`rules/gemini-cli/`](/home/lay4/toy/awesome-ai-rules/rules/gemini-cli)

Expected copy pattern:

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
| Primary Config File | `.cursorrules` | `CLAUDE.md` | `copilot-instructions.md` | `.windsurfrules` | `codex.md` | `GEMINI.md` |
| Rule Files In Repo | Yes | Yes | Planned | Planned | Planned | Planned |
| Stack-Specific Layout | Yes | Yes | Yes (dirs) | Planned | Planned | Planned |
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
