# GitHub Copilot Instructions: Python

## Core Principles
- Write production-ready Python focused on readability and correctness.
- Prefer explicit, maintainable code over concise but opaque patterns.
- Keep functions focused and modules cohesive.
- Design for testability and static analysis from the start.

## Typing Requirements
- Type hints are required for all public functions, methods, and constants.
- Include return types on all functions, including `None` returns.
- Use `typing` and `collections.abc` abstractions appropriately.
- Avoid untyped containers like bare `list`/`dict`; parameterize types.
- Use `Literal`, `TypedDict`, and `Protocol` where they improve clarity.

## Documentation
- Use Google-style docstrings for public modules, classes, and functions.
- Keep docstrings concise: purpose, args, returns, raises.
- Keep docs synchronized with behavior and signatures.

## Data Modeling and Paths
- Prefer `pathlib.Path` over `os.path`.
- Use `dataclasses` for lightweight structured data models.
- Use `pydantic` for validated external/input schemas when needed.
- Avoid passing raw dictionaries across domain boundaries.

## Error Handling
- Raise specific exception types; avoid broad `Exception` where possible.
- Create custom exceptions for domain-level failures.
- Add contextual detail to errors without leaking sensitive data.
- Handle recoverable errors close to their boundary.

## Testing
- Use `pytest` as the default test framework.
- Write focused unit tests and integration tests for boundaries.
- Use fixtures to share setup and reduce duplication.
- Prefer parametrized tests for multiple scenarios.
- Keep tests deterministic and side-effect controlled.

## Tooling and Quality
- Use `ruff` for linting and formatting compliance.
- Keep code compliant with configured `ruff` rules before merging.
- Use `uv` for environment, dependency, and package management.
- Prefer reproducible dependency constraints and lockfiles.

## Code Style
- Follow PEP 8 with project-specific formatter/linter settings.
- Use clear names and avoid ambiguous abbreviations.
- Keep modules small and avoid circular imports.
- Prefer `Enum`/constants over magic strings.
- Remove unused imports and dead code promptly.
