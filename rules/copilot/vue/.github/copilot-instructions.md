# GitHub Copilot Instructions: Vue.js

## Core Principles
- Generate Vue 3 code with Composition API and TypeScript by default.
- Keep components readable, strongly typed, and easy to test.

## Component Authoring
- Use `<script setup lang="ts">` in all new SFCs.
- Do not introduce Options API unless explicitly required.
- Type props with `defineProps<...>()`.
- Type emits with `defineEmits<...>()` and event payload signatures.

## Reactivity
- Prefer `ref` for primitive and optional values.
- Prefer `reactive` for cohesive object state.
- Avoid direct destructuring of reactive state without `toRefs`.
- Use `computed` for derived values; avoid sync duplication.

## State Management
- Use Pinia for shared and cross-route state.
- Keep store actions focused on business operations.
- Expose minimal store surface area to components.
- Use `storeToRefs` when consuming reactive store state.

## Routing Conventions
- Follow Vue Router with feature-oriented route modules.
- Use lazy-loaded route components where appropriate.
- Handle route param parsing/validation close to route boundaries.
- Keep authorization checks centralized in router guards/composables.

## Naming Rules
- Name component files in PascalCase.
- Use kebab-case for component tags in templates.
- Name composables `useXxx.ts`.
- Keep folder names stable and feature-oriented.

## Testing
- Use Vitest with Vue Test Utils for unit/component tests.
- Test renders, emits, reactive updates, and loading/error states.
- Prefer behavior-driven assertions over snapshot-only tests.
- Mock network and router integration points only when needed.

## Tooling
- Use `unplugin-auto-import` and `unplugin-vue-components` intentionally.
- Keep generated type declarations tracked by the project.
- Ensure lint, type-check, and tests pass after edits.
