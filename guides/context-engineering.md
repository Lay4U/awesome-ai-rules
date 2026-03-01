# Context Engineering Guide (Practical, 2026)
## What Is Context Engineering?
Context engineering is the practice of designing the full input environment an AI coding agent uses.
It is more than prompting: it combines stable rules, task context, conversation decisions, and tool evidence.
A short definition: context engineering is input architecture for model behavior.
Why it matters in 2026:
- Agents run multi-step, multi-file workflows with terminal execution.
- Ambiguous inputs create expensive downstream regressions.
- Teams now share reusable rules across repos and tools.
- First-pass quality matters because review bandwidth is limited.
Two references that capture this moment:
- Andrej Karpathy: "The hottest new programming language is English."
- Shopify CEO Tobi Lutke has emphasized AI fluency as a baseline expectation for teams.
## The 4 Layers Of Context
Use four layers from stable policy to dynamic runtime evidence.
### Layer 1: Project Rules
Examples: `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, `.cursorrules`, `copilot-instructions.md`.
Purpose: define durable standards that should hold for every task.
Best practices:
- Start with a role statement and scope.
- Separate hard constraints from preferences.
- Keep each rule atomic, concrete, and testable.
- Use consistent modal language (`must`, `should`, `may`).
- End with definition-of-done checks.
### Layer 2: Task Context
Purpose: translate one request into precise execution constraints.
Best practices:
- Put objective first.
- Name specific files/paths where possible.
- State out-of-scope areas explicitly.
- Include acceptance criteria and required validation commands.
- Add performance/compatibility constraints when relevant.
### Layer 3: Conversation History
Purpose: preserve assumptions, clarifications, and chosen approaches during collaboration.
Best practices:
- Restate plan after major pivots.
- Confirm assumptions before broad edits.
- Record approved exceptions explicitly.
- Do not rely on implicit memory for critical constraints.
### Layer 4: Tool Results
Purpose: provide objective evidence from command execution and code changes.
Typical inputs: tests, lints, typechecks, logs, and diff summaries.
Best practices:
- Treat tool output as source of truth.
- Re-run relevant checks after edits.
- Report key evidence with file-level precision.
- Separate observed facts from inferred causes.
## Layer Precedence And Conflict Handling
Recommended precedence:
1. Project rules.
2. Task context.
3. Conversation decisions.
4. Tool results.
When conflicts occur:
- Prefer stricter safety constraints.
- Ask for clarification if high-priority instructions disagree.
- Record explicit exceptions in task context.
Working heuristic:
- Layer 1 sets policy.
- Layer 2 sets mission.
- Layer 3 sets coordination.
- Layer 4 validates reality.
## Best Practices Per Layer
### Project Rules Checklist
- One-line role definition.
- Clear constraints for typing, testing, style, and error handling.
- Concise conventions for naming and module boundaries.
- Executable definition of done.
### Task Context Checklist
- Exact objective.
- Target file list.
- Non-goals and boundaries.
- Acceptance tests.
- Required commands.
### Conversation Checklist
- Track unresolved questions.
- Confirm decisions before large edits.
- Reconfirm plan after requirement changes.
### Tool Results Checklist
- Run relevant checks.
- Capture failing command + key error lines.
- Report passes and failures.
- Re-test after fixes.
## Common Patterns
### Pattern: Few-Shot Examples In Rules
Use a small example when a rule is likely to be misinterpreted.
Keep examples short, realistic, and focused on high-impact behavior.
Do not fill rules files with tutorial-style content.
### Pattern: Negative Examples
State what to avoid for recurring mistakes.
Examples: avoid `any` in TypeScript public APIs; avoid broad Python exception catches without context/re-raise.
Negative examples reduce plausible but undesirable shortcuts.
### Pattern: Explicit Role Definitions
Start rule files with one clear role sentence.
This reduces drift between assistant-like responses and agent-like execution behavior.
### Pattern: Definition Of Done
End with commands and verification expectations.
Definition-of-done criteria should be objective and executable.
## Anti-Patterns
### Anti-Pattern: Overly Long Rules
Symptoms: key constraints buried; low adherence.
Fix: keep core rules short, move rationale to guides, prune duplicates regularly.
### Anti-Pattern: Conflicting Instructions
Symptoms: inconsistent outputs across similar tasks.
Fix: add precedence rules, remove duplicated constraints, standardize wording.
### Anti-Pattern: Vague Instructions
Symptoms: broad phrases like "write clean code" without checks.
Fix: replace with concrete requirements tied to commands and outputs.
### Anti-Pattern: Tool-Blind Guidance
Symptoms: rules assume identical capabilities across tools.
Fix: add tool-specific notes while keeping shared policy portable.
## Tool-Specific Tips
### Cursor
- Keep `.cursorrules` compact and high signal.
- Focus on codebase conventions and file-scope boundaries.
- Use short examples for recurring refactors.
### Claude Code
- Put durable policy in `CLAUDE.md`.
- Define terminal workflow and validation commands.
- Require explicit reporting when checks are skipped.
### GitHub Copilot
- Put repo policy in `copilot-instructions.md`.
- Keep instructions concise for inline generation.
- Enforce quality with CI rather than long prose.
### Codex
- Put durable policy in `AGENTS.md`.
- Define autonomy boundaries and escalation triggers.
- Require command-backed verification.
### Gemini CLI
- Put durable policy in `GEMINI.md`.
- Specify typing, testing, style, and error handling conventions.
- Keep guidance short and operational.
## Template For Effective Rules
Use this structure: Role, Constraints, Conventions, Examples, Definition of Done.
### Role
State who the agent is and what it should optimize.
### Constraints
List non-negotiable requirements and safety boundaries.
### Conventions
Specify naming, style, architecture, testing, and error-handling norms.
### Examples
Add one positive and one negative example for nuanced standards.
### Definition Of Done
List required commands and required evidence.
## Minimal Template Example
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
- Good: validate unknown input before access.
- Bad: cast external payloads to `any`.
## Definition Of Done
- `pnpm typecheck`
- `pnpm test`
- `pnpm lint`
```
## Rollout Plan
1. Start with one language-specific rules file.
2. Add explicit definition-of-done commands.
3. Pilot on several real tasks.
4. Measure rework and review friction.
5. Tighten ambiguous sections every two weeks.
## Final Checklist
- Rules are concise, concrete, and non-conflicting.
- Task prompts include acceptance criteria.
- Conversation preserves key decisions.
- Tool outputs validate results.
- Done criteria are executable.
Context engineering works best when guidance is layered, explicit, and verifiable.
