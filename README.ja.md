<div align="center">

# Awesome AI Rules

### あらゆる AI コーディングツールと技術スタック向けの決定版ルール集

[![Awesome](https://img.shields.io/badge/Awesome-Yes-22c55e?style=for-the-badge)](#)
[![Stars](https://img.shields.io/github/stars/lay4/awesome-ai-rules?style=for-the-badge)](https://github.com/lay4/awesome-ai-rules/stargazers)
[![MIT License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](./LICENSE)
[![Tools](https://img.shields.io/badge/Tools-6-orange?style=for-the-badge)](#-クイックナビゲーション)

AI コーディングアシスタントを毎回ゼロから設定する必要はありません。実証済みのルールをコピーして、stack を選び、すぐに出荷しましょう。

English | [한국어](./README.ko.md) | [中文](./README.zh.md) | **日本語**

</div>

## 🚀 このリポジトリの目的

2026 年には、context engineering はソフトウェア開発で最もレバレッジの高い領域の 1 つになりました。平均的な AI コーディングワークフローと優れたワークフローの差は、モデルそのものよりも、振る舞い・制約・コーディング標準・プロジェクト固有の期待値をどれだけ明確に定義できるかにあります。

`awesome-ai-rules` は、そのレバレッジを再利用可能にするために存在します。プロジェクトやツールごとに毎回新しい指示を書くのではなく、実践的な規約をまとめた curated な stack-specific rule sets から開始し、チーム間のぶれを減らせます。

## 📚 クイックナビゲーション

| Tool | Config File | Stacks |
| --- | --- | --- |
| Cursor | `.cursorrules` | React, Next.js, TypeScript, Python |
| Claude Code | `CLAUDE.md` | React, Next.js, TypeScript, Python |
| GitHub Copilot | `copilot-instructions.md` | React, Next.js, TypeScript, Python, Go, Rust |
| Windsurf | `.windsurfrules` | Multi-stack templates |
| Codex | `codex.md` | Multi-stack templates |
| Gemini CLI | `GEMINI.md` | Multi-stack templates |

## 🧰 Tool ルール

### Cursor (`.cursorrules`)

利用可能なルール:
- [React](/home/lay4/toy/awesome-ai-rules/rules/cursor/react/.cursorrules)
- [Next.js](/home/lay4/toy/awesome-ai-rules/rules/cursor/nextjs/.cursorrules)
- [TypeScript](/home/lay4/toy/awesome-ai-rules/rules/cursor/typescript/.cursorrules)
- [Python](/home/lay4/toy/awesome-ai-rules/rules/cursor/python/.cursorrules)

プロジェクトルートにコピー:

```bash
cp rules/cursor/<stack>/.cursorrules /path/to/your-project/.cursorrules
```

### Claude Code (`CLAUDE.md`)

利用可能なルール:
- [React](/home/lay4/toy/awesome-ai-rules/rules/claude-code/react/CLAUDE.md)
- [Next.js](/home/lay4/toy/awesome-ai-rules/rules/claude-code/nextjs/CLAUDE.md)
- [TypeScript](/home/lay4/toy/awesome-ai-rules/rules/claude-code/typescript/CLAUDE.md)
- [Python](/home/lay4/toy/awesome-ai-rules/rules/claude-code/python/CLAUDE.md)

プロジェクトルートにコピー:

```bash
cp rules/claude-code/<stack>/CLAUDE.md /path/to/your-project/CLAUDE.md
```

### GitHub Copilot (`copilot-instructions.md`)

ステータス: ディレクトリは scaffold 済みで、stack rule files は現在整備中です。

構成を確認:
- [`rules/copilot/`](/home/lay4/toy/awesome-ai-rules/rules/copilot)

想定される copy pattern:

```bash
cp rules/copilot/<stack>/copilot-instructions.md /path/to/your-project/.github/copilot-instructions.md
```

### Windsurf (`.windsurfrules`)

ステータス: ベースフォルダは作成済みで、rules は近日追加予定です。

構成を確認:
- [`rules/windsurf/`](/home/lay4/toy/awesome-ai-rules/rules/windsurf)

想定される copy pattern:

```bash
cp rules/windsurf/<stack>/.windsurfrules /path/to/your-project/.windsurfrules
```

### Codex (`codex.md`)

ステータス: ベースフォルダは作成済みで、rules は近日追加予定です。

構成を確認:
- [`rules/codex/`](/home/lay4/toy/awesome-ai-rules/rules/codex)

想定される copy pattern:

```bash
cp rules/codex/<stack>/codex.md /path/to/your-project/codex.md
```

### Gemini CLI (`GEMINI.md`)

ステータス: ベースフォルダは作成済みで、rules は近日追加予定です。

構成を確認:
- [`rules/gemini-cli/`](/home/lay4/toy/awesome-ai-rules/rules/gemini-cli)

想定される copy pattern:

```bash
cp rules/gemini-cli/<stack>/GEMINI.md /path/to/your-project/GEMINI.md
```

## 🧠 Context Engineering パターン

- Role framing: assistant identity と境界を最初に定義する。
- Output contracts: response format、style、必須 section を指定する。
- Repository awareness: プロジェクト architecture と coding conventions を含める。
- Task decomposition: implementation 前に段階的な計画を強制する。
- Safety rails: forbidden actions と risk escalation rules を含める。
- Stack-specific constraints: framework、testing、linting の期待値を明文化する。
- Review loops: self-check と明示的な verification steps を要求する。

## 📊 ツール横断比較

| Feature | Cursor | Claude Code | Copilot | Windsurf | Codex | Gemini CLI |
| --- | --- | --- | --- | --- | --- | --- |
| Primary Config File | `.cursorrules` | `CLAUDE.md` | `copilot-instructions.md` | `.windsurfrules` | `codex.md` | `GEMINI.md` |
| Rule Files In Repo | Yes | Yes | Planned | Planned | Planned | Planned |
| Stack-Specific Layout | Yes | Yes | Yes (dirs) | Planned | Planned | Planned |
| Best For | IDE pair programming | Agentic terminal coding | Inline suggestions | IDE-native workflows | Terminal coding agents | CLI-first AI workflows |

## 🤝 コントリビューション

コントリビューションを歓迎します。

- `rules/<tool>/<stack>/` 配下に新しい stack-specific rule files を追加してください。
- 指示は具体的で、検証可能で、production-oriented に保ってください。
- 短い rationale と usage example を添えて PR を作成してください。

## 📄 ライセンス

このプロジェクトは [MIT License](./LICENSE) のもとで提供されています。

## ⭐ このリポジトリに Star をお願いします

チームの出荷速度向上に役立った場合は、リポジトリに Star を付けて、ほかの AI-native developers にも共有してください。
