# GitHub Copilot Instructions: Svelte

## Core Principles
- Build Svelte 5 + SvelteKit code with TypeScript-first practices.
- Prefer clear rune-based state over implicit reactive magic.
- Keep UI behavior accessible and progressively enhanced.

## State and Runes
- Use `$state` for local mutable state.
- Use `$derived` for computed values instead of duplicated fields.
- Use `$effect` for side effects only; keep it minimal and cleanup-safe.
- Avoid introducing legacy patterns in new components.

## Components and Props
- Use `<script lang="ts">` for all components.
- Read typed inputs through `$props()`.
- Keep prop contracts explicit and minimal.
- Split large components into focused, reusable parts.

## SvelteKit Conventions
- Use proper route file names (`+page.svelte`, `+layout.svelte`).
- Put route data loading in `load` functions.
- Keep load output serializable and stable.
- Keep server-only concerns out of client modules.

## Stores and Shared Data
- Prefer runes for local state.
- Use stores when multiple distant components need shared state.
- Keep stores typed and domain-focused.

## Styling and CSS
- Prefer component-scoped styles by default.
- Use `:global` only for deliberate global rules.
- Avoid broad selectors that leak styles across features.

## Forms and Progressive Enhancement
- Use SvelteKit form actions for mutations.
- Apply `use:enhance` when improving UX while preserving no-JS fallback.
- Handle success, validation, and failure states explicitly.

## Accessibility and Tests
- Respect Svelte accessibility diagnostics.
- Use semantic elements and robust keyboard behavior.
- Write tests with `vitest` and `@testing-library/svelte`.
- Assert user-observable outcomes, not internals.

## Quality Bar
- Keep TypeScript strict and avoid `any`.
- Update tests whenever behavior changes.
