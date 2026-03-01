# AI Coding Tools Quick Reference (2026)
## Tool x Config File
| Tool | Config |
|---|---|
| Cursor | `.cursorrules` |
| Claude Code | `CLAUDE.md` |
| GitHub Copilot | `copilot-instructions.md` |
| Windsurf | `.windsurfrules` |
| Codex | `AGENTS.md` |
| Gemini CLI | `GEMINI.md` |
| Aider | `.aider.conf.yml` |
| Cline | `.clinerules` |

## Stack x Test/Lint Commands
| Stack | Test | Lint/Typecheck |
|---|---|---|
| Node (pnpm) | `pnpm test` | `pnpm lint && pnpm typecheck` |
| Node (npm) | `npm test` | `npm run lint && npm run typecheck` |
| Python (pytest) | `pytest -q` | `ruff check . && mypy .` |
| Rust | `cargo test` | `cargo clippy -- -D warnings` |
| Go | `go test ./...` | `go vet ./...` |
| Java (Gradle) | `./gradlew test` | `./gradlew check` |
| Java (Maven) | `mvn test` | `mvn verify` |

## Common Copy-Paste Commands
### Cursor
```bash
# open rules file
code .cursorrules
```

### Claude Code
```bash
# run with repo rules
ls CLAUDE.md
```

### GitHub Copilot
```bash
# check repo instruction file
ls .github/copilot-instructions.md copilot-instructions.md 2>/dev/null
```

### Windsurf
```bash
# inspect Windsurf rules
ls .windsurfrules
```

### Codex
```bash
# inspect AGENTS policy
ls AGENTS.md
```

### Gemini CLI
```bash
# inspect Gemini policy
ls GEMINI.md
```

### Aider
```bash
# start aider with repo config
aider --config .aider.conf.yml
```

### Cline
```bash
# inspect Cline policy
ls .clinerules
```

## Fast Rule Template
```md
## Role
## Constraints
## Conventions
## Definition Of Done
```
