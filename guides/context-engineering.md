# Context Engineering Guide (Practical, 2026)

## Definition And Why It Matters
Context engineering is the discipline of shaping the full information environment an AI coding agent receives.
It is broader than prompt writing and includes durable rules, task constraints, conversation decisions, and tool evidence.
A concise definition: context engineering is input architecture for model behavior.

In 2026, context engineering matters because agents now run long autonomous workflows.
They can plan, edit many files, execute commands, and report outcomes in one loop.
When context is weak, mistakes scale quickly across a repository.
When context is strong, quality improves before code review, not after.

Two quotes capture the shift.
Andrej Karpathy: "The hottest new programming language is English."
Shopify CEO Tobi Lutke has emphasized that effective AI use is now an expected baseline skill.
Together they imply that instruction quality is now an engineering multiplier.

## The 4 Layers Of Context
A practical model is four layers from stable policy to dynamic evidence.

### Layer 1: Project Rules
Project rules are durable standards, usually in files like `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, `.cursorrules`, or `copilot-instructions.md`.
This layer defines non-negotiable behavior and prevents re-explaining standards on every task.

Best practices for Project Rules:
- Start with a one-line role and scope statement.
- Separate hard constraints from preferences.
- Use precise, testable language.
- Keep conventions concise and scannable.
- End with definition-of-done checks.

### Layer 2: Task Context
Task context translates one request into specific execution constraints.
It should describe objective, boundaries, acceptance criteria, and required verification.

Best practices for Task Context:
- Put objective first.
- Name exact files/paths when known.
- State out-of-scope changes.
- Include compatibility or performance limits.
- List mandatory test/lint/typecheck commands.

### Layer 3: Conversation History
Conversation history stores decisions made during collaboration.
It captures assumptions, clarifications, and approved tradeoffs.

Best practices for Conversation History:
- Restate plan after major pivots.
- Resolve ambiguity before broad edits.
- Record temporary exceptions explicitly.
- Do not depend on implicit memory for critical constraints.

### Layer 4: Tool Results
Tool results are objective runtime evidence: errors, tests, lint output, typecheck output, logs, diffs.
This is the closest thing to ground truth during implementation.

Best practices for Tool Results:
- Re-run checks after edits.
- Cite failing command and key evidence.
- Distinguish observed output from inferred cause.
- Prefer tool evidence over assumptions.

## Layer Precedence
Use a clear precedence order:
1. Project Rules.
2. Task Context.
3. Conversation History.
4. Tool Results.

When instructions conflict:
- Prefer stricter safety constraints.
- Ask for clarification when high-priority rules disagree.
- Record exceptions in task context so they remain explicit.

## Best Practices By Layer (Quick Reference)

### Project Rules Checklist
- Role: one sentence, explicit responsibility.
- Constraints: typed, testable, and non-ambiguous.
- Conventions: naming, style, architecture, testing.
- Error handling: boundary behavior and exception policy.
- Definition of done: executable commands.

### Task Context Checklist
- Exact objective.
- Target paths.
- Non-goals.
- Acceptance criteria.
- Required verification commands.

### Conversation Checklist
- Confirm assumptions before significant edits.
- Track unresolved questions.
- Reconfirm after requirement changes.

### Tool Results Checklist
- Run relevant checks.
- Capture failures with file-level precision.
- Report passes and failures.
- Re-test after fixes.

## Common Patterns

### Pattern 1: Few-Shot Examples In Rules
Few-shot examples help when a rule is subtle and likely to be misread.
Keep examples short and representative; avoid turning rule files into tutorials.
Use them for high-impact conventions like input validation and boundary error mapping.

### Pattern 2: Negative Examples
Negative examples prevent common shortcuts that violate team standards.
Examples:
- TypeScript: avoid `any` in public interfaces.
- Python: avoid broad `except Exception` without context/re-raise.

Negative examples work because they remove plausible but undesirable interpretations.

### Pattern 3: Explicit Role Definitions
A short role line at the top aligns planning behavior.
Example: "You are the coding agent for this repository."
This reduces ambiguity between chat-style help and execution-style delivery.

### Pattern 4: Definition Of Done
A strong rules file ends with objective completion checks.
Definition of done should include commands and reporting expectations.
This closes the loop between generation and verification.

## Anti-Patterns

### Anti-Pattern 1: Overly Long Rules
Symptoms:
- Important constraints buried under prose.
- Low adherence due to poor scanability.

Fixes:
- Keep core rules short and explicit.
- Move rationale into guides.
- Remove duplicate statements regularly.

### Anti-Pattern 2: Conflicting Instructions
Symptoms:
- Different sections imply incompatible behavior.
- Agent output is inconsistent across similar tasks.

Fixes:
- Add precedence statements.
- Use one source of truth for each requirement.
- Standardize modal language (`must`, `should`, `may`).

### Anti-Pattern 3: Vague Guidance
Symptoms:
- "Write clean code" with no measurable standard.

Fixes:
- Replace with concrete criteria and commands.
- Tie expected behavior to tests and lint rules.

### Anti-Pattern 4: Tool-Blind Rules
Symptoms:
- Rules assume identical capabilities across tools.

Fixes:
- Add tool-specific sections.
- Keep shared policy portable and concise.

## Tool-Specific Tips

### Cursor
- Put durable style and architecture policy in `.cursorrules`.
- Keep instructions short and actionable.
- Prefer explicit file scope for large edits.

### Claude Code
- Put durable policy in `CLAUDE.md`.
- Define terminal workflow and required verification.
- Require explicit reporting when checks are skipped.

### GitHub Copilot
- Put repository policy in `copilot-instructions.md`.
- Keep constraints compact for inline generation.
- Enforce standards with CI rather than long instructions.

### Codex
- Put durable policy in `AGENTS.md`.
- Define autonomy boundaries and escalation conditions.
- Require command-backed verification before completion.

### Gemini CLI
- Put durable policy in `GEMINI.md`.
- Specify typing, testing, and error-handling conventions.
- Keep sections operational and easy to scan.

## Template For Effective Rules
Use this structure for new rule files.

### Role
- Who the agent is and what outcome it optimizes.

### Constraints
- Non-negotiable requirements and safety boundaries.

### Conventions
- Naming, formatting, architecture, testing, and error handling.

### Examples
- One positive example for a nuanced rule.
- One negative example for a recurring pitfall.

### Definition Of Done
- Required commands.
- Required evidence in the final report.

## Minimal Template
```md
# Project Rules

## Role
- You are the coding agent for this repository.

## Constraints
- TypeScript strict mode required.
- No `any` in public APIs.

## Conventions
- Prefer named exports.
- Use vitest.
- Use 2-space indentation and semicolons.

## Examples
- Good: validate unknown input before property access.
- Bad: cast external payloads to `any`.

## Definition Of Done
- `pnpm typecheck`
- `pnpm test`
- `pnpm lint`
```

## Rollout Plan
1. Start with one language-specific rules file.
2. Add definition-of-done commands.
3. Pilot on several real tasks.
4. Track rework rate and review comments.
5. Tighten ambiguous sections on a regular cadence.

## Final Checklist
- Rules are concise, concrete, and non-conflicting.
- Task prompts define acceptance criteria.
- Conversation history captures key decisions.
- Tool results validate outcomes.
- Completion criteria are executable.

Context engineering succeeds when guidance is layered, explicit, and verifiable.
