# GitHub Copilot Instructions: TypeScript

## Core Principles
- Write strict TypeScript-first code; JavaScript-only files should be avoided.
- Keep implementations simple, explicit, and maintainable.
- Prefer clarity over clever one-liners.
- Optimize for readability and safe refactoring.

## TypeScript Standards
- Enable and assume `strict: true` behavior in all code.
- Do not use `any`; use `unknown`, generics, or explicit unions instead.
- Avoid non-null assertions (`!`) unless unavoidable and documented.
- Model nullable values explicitly with `null`/`undefined` unions.
- Prefer discriminated unions over boolean flags for state variants.
- Use `readonly` when values are not intended to change.

## API and Module Conventions
- Prefer named exports for all modules.
- Avoid default exports except where framework constraints require them.
- Keep module public APIs minimal and intentional.
- Co-locate related types with implementation unless shared broadly.

## Object Modeling
- Use `interface` for object shapes and public contracts.
- Use `type` aliases for unions, intersections, mapped/utility compositions.
- Define explicit input/output types for exported functions.
- Avoid overly broad index signatures unless required.

## Error Handling
- Use custom error classes for domain and application failures.
- Include stable error codes/messages suitable for logs and tests.
- Throw typed errors at boundaries; avoid throwing plain strings.
- Handle errors with clear fallback or propagation strategy.
- Preserve original error context via `cause` when rethrowing.

## Testing
- Use Vitest for unit and integration tests.
- Keep tests deterministic and independent.
- Follow Arrange-Act-Assert structure.
- Test behavior and edge cases, not implementation internals.
- Use table-driven tests for repeated scenario coverage.

## Style and Formatting
- Use 2-space indentation.
- Always use semicolons.
- Use single quotes for strings.
- Prefer trailing commas where valid for cleaner diffs.
- Keep functions small and single-purpose.

## Project Hygiene
- Avoid dead code and commented-out blocks.
- Favor pure functions for business logic where practical.
- Keep side effects isolated at I/O boundaries.
- Write meaningful variable/function names.
- Update tests and types when changing behavior.
