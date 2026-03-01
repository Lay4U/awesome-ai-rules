# GitHub Copilot Instructions: Java Spring Boot

## Core Principles
- Build Spring Boot 3.x applications with clear feature boundaries.
- Prefer explicit code, constructor injection, and testable services.
- Keep API behavior predictable and well-validated.

## Structure and Boundaries
- Use package-by-feature organization.
- Keep controllers thin and move business logic to services.
- Separate entity models from API DTOs.

## Dependency Injection
- Use constructor injection only.
- Never use field injection.
- Favor immutable dependencies and stateless services.

## DTO Conventions
- Prefer Java records for request and response DTOs.
- Use explicit mapping between entities and DTOs.
- Keep DTOs small and purpose-specific.

## Optional Handling
- Avoid nullable returns when absence is expected.
- Do not use `Optional.get()` without an explicit presence check.
- Prefer expressive Optional operations (`map`, `orElseThrow`, etc.).

## Error Handling
- Centralize exception translation with `@ControllerAdvice`.
- Return consistent API error formats.
- Hide internal stack details from external responses.

## Logging
- Use SLF4J for application logging.
- Include correlation and domain identifiers in key logs.
- Never log credentials or sensitive payload data.

## Testing
- Use JUnit 5 and Mockito.
- Write focused unit tests for service logic.
- Add controller tests for validation and error mapping behavior.

## Build System
- Follow existing Maven or Gradle conventions.
- Keep plugin/dependency setup consistent with Spring Boot 3.x.
- Avoid unnecessary build complexity.

## Lombok Guidance
- Use Lombok minimally.
- Prefer records and explicit constructors over broad Lombok use.
- Avoid annotations that reduce readability.

## Quality Bar
- Code compiles and tests pass.
- New code follows injection, Optional, logging, and error rules.
