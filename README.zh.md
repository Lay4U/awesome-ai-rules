<div align="center">

# Awesome AI Rules

### 面向所有 AI 编码工具与技术栈的权威规则集合

[![Awesome](https://img.shields.io/badge/Awesome-Yes-22c55e?style=for-the-badge)](#)
[![Stars](https://img.shields.io/github/stars/lay4/awesome-ai-rules?style=for-the-badge)](https://github.com/lay4/awesome-ai-rules/stargazers)
[![MIT License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](./LICENSE)
[![Tools](https://img.shields.io/badge/Tools-6-orange?style=for-the-badge)](#-快速导航)

不要再从零开始配置你的 AI 编码助手。复制经过验证的规则，选择你的 stack，然后交付。

English | [한국어](./README.ko.md) | **中文** | [日本語](./README.ja.md)

</div>

## 🚀 为什么存在这个仓库

到 2026 年，context engineering 已成为软件开发中杠杆最高的环节之一。普通 AI 编码工作流与卓越工作流之间的差距，往往不在模型本身，而在于你是否清晰定义了行为、约束、编码标准和项目级预期。

`awesome-ai-rules` 的目标是让这种杠杆可复用。你不必再为每个项目、每个工具重新编写指令，而是可以直接从经过整理、按 stack 划分的规则集开始，沉淀实用规范并减少团队间偏差。

## 📚 快速导航

| Tool | Config File | Stacks |
| --- | --- | --- |
| Cursor | `.cursorrules` | React, Next.js, TypeScript, Python |
| Claude Code | `CLAUDE.md` | React, Next.js, TypeScript, Python |
| GitHub Copilot | `copilot-instructions.md` | React, Next.js, TypeScript, Python, Go, Rust |
| Windsurf | `.windsurfrules` | Multi-stack templates |
| Codex | `codex.md` | Multi-stack templates |
| Gemini CLI | `GEMINI.md` | Multi-stack templates |

## 🧰 Tool 规则

### Cursor (`.cursorrules`)

可用规则：
- [React](/home/lay4/toy/awesome-ai-rules/rules/cursor/react/.cursorrules)
- [Next.js](/home/lay4/toy/awesome-ai-rules/rules/cursor/nextjs/.cursorrules)
- [TypeScript](/home/lay4/toy/awesome-ai-rules/rules/cursor/typescript/.cursorrules)
- [Python](/home/lay4/toy/awesome-ai-rules/rules/cursor/python/.cursorrules)

复制到你的项目根目录：

```bash
cp rules/cursor/<stack>/.cursorrules /path/to/your-project/.cursorrules
```

### Claude Code (`CLAUDE.md`)

可用规则：
- [React](/home/lay4/toy/awesome-ai-rules/rules/claude-code/react/CLAUDE.md)
- [Next.js](/home/lay4/toy/awesome-ai-rules/rules/claude-code/nextjs/CLAUDE.md)
- [TypeScript](/home/lay4/toy/awesome-ai-rules/rules/claude-code/typescript/CLAUDE.md)
- [Python](/home/lay4/toy/awesome-ai-rules/rules/claude-code/python/CLAUDE.md)

复制到你的项目根目录：

```bash
cp rules/claude-code/<stack>/CLAUDE.md /path/to/your-project/CLAUDE.md
```

### GitHub Copilot (`copilot-instructions.md`)

状态：目录骨架已创建；stack 规则文件正在完善中。

查看结构：
- [`rules/copilot/`](/home/lay4/toy/awesome-ai-rules/rules/copilot)

预期复制模式：

```bash
cp rules/copilot/<stack>/copilot-instructions.md /path/to/your-project/.github/copilot-instructions.md
```

### Windsurf (`.windsurfrules`)

状态：基础目录已创建，规则即将补充。

查看结构：
- [`rules/windsurf/`](/home/lay4/toy/awesome-ai-rules/rules/windsurf)

预期复制模式：

```bash
cp rules/windsurf/<stack>/.windsurfrules /path/to/your-project/.windsurfrules
```

### Codex (`codex.md`)

状态：基础目录已创建，规则即将补充。

查看结构：
- [`rules/codex/`](/home/lay4/toy/awesome-ai-rules/rules/codex)

预期复制模式：

```bash
cp rules/codex/<stack>/codex.md /path/to/your-project/codex.md
```

### Gemini CLI (`GEMINI.md`)

状态：基础目录已创建，规则即将补充。

查看结构：
- [`rules/gemini-cli/`](/home/lay4/toy/awesome-ai-rules/rules/gemini-cli)

预期复制模式：

```bash
cp rules/gemini-cli/<stack>/GEMINI.md /path/to/your-project/GEMINI.md
```

## 🧠 Context Engineering 模式

- Role framing：预先定义 assistant identity 与边界。
- Output contracts：明确 response format、style 与必需 section。
- Repository awareness：包含项目 architecture 与 coding conventions。
- Task decomposition：在 implementation 前强制分步规划。
- Safety rails：包含 forbidden actions 与 risk escalation rules。
- Stack-specific constraints：编码 framework、testing 与 linting 预期。
- Review loops：要求 self-check 与显式 verification 步骤。

## 📊 跨工具对比

| Feature | Cursor | Claude Code | Copilot | Windsurf | Codex | Gemini CLI |
| --- | --- | --- | --- | --- | --- | --- |
| Primary Config File | `.cursorrules` | `CLAUDE.md` | `copilot-instructions.md` | `.windsurfrules` | `codex.md` | `GEMINI.md` |
| Rule Files In Repo | Yes | Yes | Planned | Planned | Planned | Planned |
| Stack-Specific Layout | Yes | Yes | Yes (dirs) | Planned | Planned | Planned |
| Best For | IDE pair programming | Agentic terminal coding | Inline suggestions | IDE-native workflows | Terminal coding agents | CLI-first AI workflows |

## 🤝 贡献

欢迎贡献。

- 在 `rules/<tool>/<stack>/` 下新增 stack-specific 规则文件。
- 保持指令具体、可验证、面向生产实践。
- 提交 PR 时附上简短动机说明与使用示例。

## 📄 许可证

本项目基于 [MIT License](./LICENSE) 发布。

## ⭐ Star 这个仓库

如果这些内容能帮助你的团队更快交付，欢迎给仓库点 Star，并分享给更多 AI-native 开发者。
