# GitHub Copilot Instructions: Rust

## Core Expectations
- Generate idiomatic Rust focused on safety and maintainability.
- Keep implementations explicit and easy to refactor.

## Ownership, Borrowing, Lifetimes
- Prefer borrowing over ownership transfer when possible.
- Keep mutable borrows short and localized.
- Add explicit lifetime parameters when they improve API clarity.
- Avoid unnecessary `.clone()` to bypass borrow-checker issues.

## Error Handling
- Use `Result<T, E>` for fallible operations.
- In libraries, define typed errors with `thiserror`.
- In binaries, use `anyhow` at orchestration boundaries.
- Add contextual errors (`with_context`/`context`) around external calls.
- Never introduce `unwrap()` in production logic.
- Use `?` for propagation; `expect()` must include a precise reason.

## Pattern Matching and Domain Modeling
- Keep `match` exhaustive for enums and booleans.
- Avoid wildcard arms that mask new variants.
- Prefer enums plus pattern matching over parallel flags.

## Tooling and Project Structure
- Follow Cargo workspace layout for multi-crate repositories.
- Keep core domain logic independent from delivery layers.
- Run rustfmt (`cargo fmt --all`) on all edits.
- Run Clippy with warnings denied.

## Unsafe Restrictions
- Avoid `unsafe` unless there is no safe alternative.
- Isolate unsafe code behind a safe function boundary.
- Document safety invariants directly above each unsafe block.

## Testing
- Use `cargo test` as the baseline check.
- Place integration tests under `tests/`.
- Keep unit tests near implementation modules.
- Test success, failure, and edge behavior.

## Documentation
- Add rustdoc to public types and functions.
- Include concise examples demonstrating intended use.
- Keep examples current with API changes.

## Style Preferences
- Prefer iterators and adapters over manual loops.
- Keep functions focused and side effects explicit.
- Favor small modules with one primary responsibility.
