<div align="center">

# Awesome AI Rules

### 모든 AI 코딩 도구를 위한 규칙과 설정 모음집

[![Awesome](https://img.shields.io/badge/Awesome-Yes-22c55e?style=for-the-badge)](#)
[![Stars](https://img.shields.io/github/stars/lay4/awesome-ai-rules?style=for-the-badge)](https://github.com/lay4/awesome-ai-rules/stargazers)
[![MIT License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](./LICENSE)
[![Tools](https://img.shields.io/badge/Tools-6-orange?style=for-the-badge)](#-빠른-이동)

AI 코딩 어시스턴트를 매번 처음부터 설정하지 마세요. 검증된 규칙을 복사하고, 스택을 고른 뒤, 바로 배포하세요.

[English](./README.md) | 한국어 | [中文](./README.zh.md) | [日本語](./README.ja.md)

</div>

## 🚀 이 저장소가 존재하는 이유

2026년이 되면서 컨텍스트 엔지니어링은 소프트웨어 개발에서 가장 레버리지가 큰 영역 중 하나가 되었습니다. 평범한 AI 코딩 워크플로우와 뛰어난 워크플로우의 차이는 모델 자체보다, 행동 규칙·제약·코딩 표준·프로젝트별 기대사항을 얼마나 명확히 정의하느냐에 달려 있는 경우가 많습니다.

`awesome-ai-rules`는 그 레버리지를 재사용 가능하게 만들기 위해 만들어졌습니다. 프로젝트와 도구마다 지침을 새로 작성하는 대신, 실무 관례를 담고 팀 간 편차를 줄여주는 큐레이션된 스택별 규칙 세트에서 바로 시작할 수 있습니다.

## 📚 빠른 이동

| 도구 | 설정 파일 | 스택 |
| --- | --- | --- |
| Cursor | `.cursorrules` | React, Next.js, TypeScript, Python |
| Claude Code | `CLAUDE.md` | React, Next.js, TypeScript, Python |
| GitHub Copilot | `copilot-instructions.md` | React, Next.js, TypeScript, Python, Go, Rust |
| Windsurf | `.windsurfrules` | 멀티 스택 템플릿 |
| Codex | `codex.md` | 멀티 스택 템플릿 |
| Gemini CLI | `GEMINI.md` | 멀티 스택 템플릿 |

## 🧰 도구별 규칙

### Cursor (`.cursorrules`)

사용 가능한 규칙:
- [React](/home/lay4/toy/awesome-ai-rules/rules/cursor/react/.cursorrules)
- [Next.js](/home/lay4/toy/awesome-ai-rules/rules/cursor/nextjs/.cursorrules)
- [TypeScript](/home/lay4/toy/awesome-ai-rules/rules/cursor/typescript/.cursorrules)
- [Python](/home/lay4/toy/awesome-ai-rules/rules/cursor/python/.cursorrules)

프로젝트 루트에 복사:

```bash
cp rules/cursor/<stack>/.cursorrules /path/to/your-project/.cursorrules
```

### Claude Code (`CLAUDE.md`)

사용 가능한 규칙:
- [React](/home/lay4/toy/awesome-ai-rules/rules/claude-code/react/CLAUDE.md)
- [Next.js](/home/lay4/toy/awesome-ai-rules/rules/claude-code/nextjs/CLAUDE.md)
- [TypeScript](/home/lay4/toy/awesome-ai-rules/rules/claude-code/typescript/CLAUDE.md)
- [Python](/home/lay4/toy/awesome-ai-rules/rules/claude-code/python/CLAUDE.md)

프로젝트 루트에 복사:

```bash
cp rules/claude-code/<stack>/CLAUDE.md /path/to/your-project/CLAUDE.md
```

### GitHub Copilot (`copilot-instructions.md`)

상태: 디렉터리 스캐폴딩은 완료되었고, 스택별 규칙 파일은 작성 중입니다.

구조 확인:
- [`rules/copilot/`](/home/lay4/toy/awesome-ai-rules/rules/copilot)

예상 복사 패턴:

```bash
cp rules/copilot/<stack>/copilot-instructions.md /path/to/your-project/.github/copilot-instructions.md
```

### Windsurf (`.windsurfrules`)

상태: 기본 폴더는 생성되었고, 규칙은 곧 추가될 예정입니다.

구조 확인:
- [`rules/windsurf/`](/home/lay4/toy/awesome-ai-rules/rules/windsurf)

예상 복사 패턴:

```bash
cp rules/windsurf/<stack>/.windsurfrules /path/to/your-project/.windsurfrules
```

### Codex (`codex.md`)

상태: 기본 폴더는 생성되었고, 규칙은 곧 추가될 예정입니다.

구조 확인:
- [`rules/codex/`](/home/lay4/toy/awesome-ai-rules/rules/codex)

예상 복사 패턴:

```bash
cp rules/codex/<stack>/codex.md /path/to/your-project/codex.md
```

### Gemini CLI (`GEMINI.md`)

상태: 기본 폴더는 생성되었고, 규칙은 곧 추가될 예정입니다.

구조 확인:
- [`rules/gemini-cli/`](/home/lay4/toy/awesome-ai-rules/rules/gemini-cli)

예상 복사 패턴:

```bash
cp rules/gemini-cli/<stack>/GEMINI.md /path/to/your-project/GEMINI.md
```

## 🧠 컨텍스트 엔지니어링 패턴

- 역할 프레이밍: 어시스턴트의 정체성과 경계를 처음에 명확히 정의합니다.
- 출력 계약: 응답 형식, 스타일, 필수 섹션을 명시합니다.
- 저장소 인식: 프로젝트 아키텍처와 코딩 컨벤션을 포함합니다.
- 작업 분해: 구현 전에 단계별 계획을 강제합니다.
- 안전 장치: 금지 동작과 리스크 에스컬레이션 규칙을 포함합니다.
- 스택별 제약: 프레임워크, 테스트, 린트 기대사항을 명문화합니다.
- 리뷰 루프: 자기 점검과 명시적 검증 단계를 요구합니다.

## 📊 도구 간 비교

| 기능 | Cursor | Claude Code | Copilot | Windsurf | Codex | Gemini CLI |
| --- | --- | --- | --- | --- | --- | --- |
| 기본 설정 파일 | `.cursorrules` | `CLAUDE.md` | `copilot-instructions.md` | `.windsurfrules` | `codex.md` | `GEMINI.md` |
| 저장소 내 규칙 파일 | 예 | 예 | 예정 | 예정 | 예정 | 예정 |
| 스택별 레이아웃 | 예 | 예 | 예 (디렉터리) | 예정 | 예정 | 예정 |
| 적합한 사용처 | IDE 페어 프로그래밍 | 에이전트형 터미널 코딩 | 인라인 제안 | IDE 네이티브 워크플로우 | 터미널 코딩 에이전트 | CLI 중심 AI 워크플로우 |

## 🤝 기여

기여를 환영합니다.

- `rules/<tool>/<stack>/` 아래에 새로운 스택별 규칙 파일을 추가해 주세요.
- 지침은 구체적이고, 검증 가능하며, 실전 지향적으로 작성해 주세요.
- 간단한 배경 설명과 사용 예시를 포함해 PR을 열어 주세요.

## 📄 라이선스

이 프로젝트는 [MIT License](./LICENSE)로 배포됩니다.

## ⭐ 이 저장소에 Star를 눌러주세요

이 저장소가 팀의 배포 속도를 높이는 데 도움이 되었다면, 저장소에 Star를 남기고 다른 AI 네이티브 개발자에게도 공유해 주세요.
