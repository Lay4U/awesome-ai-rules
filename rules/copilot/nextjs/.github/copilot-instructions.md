# GitHub Copilot Instructions: Next.js

## Baseline
- Target Next.js 15+ with the App Router only (`app/`).
- Default to Server Components; opt into client code only when required.
- Keep routing and rendering decisions explicit and easy to review.

## App Router Conventions
- Use `layout.tsx`, `page.tsx`, `loading.tsx`, `error.tsx`, and `not-found.tsx` intentionally.
- Prefer nested layouts and route groups for domain boundaries.
- Use Route Handlers in `app/**/route.ts` instead of `pages/api`.
- Keep route segment files small and move logic into `lib/` or feature modules.

## Server Components and Client Boundaries
- Treat Server Components as the default for data access and heavy rendering.
- Add `'use client'` only for interactive UI, browser APIs, or client hooks.
- Keep client boundaries leaf-level to reduce bundle size.
- Never pass non-serializable values from server to client components.

## Server Actions and Mutations
- Prefer Server Actions for form and mutation flows.
- Validate action inputs at the server boundary (Zod or equivalent).
- Handle optimistic UX with React 19 primitives (`useOptimistic`, `useActionState`).
- Revalidate with `revalidatePath`/`revalidateTag` after successful writes.

## TypeScript and React 19
- Assume `strict: true` and avoid `any` in route params and payloads.
- Type `params`, `searchParams`, action inputs, and API responses explicitly.
- Prefer typed async components and narrow return contracts.
- Use `use` only where it improves clarity and aligns with suspense boundaries.

## Data, Caching, and Performance
- Fetch server-side first; avoid client fetching when SSR can satisfy the need.
- Set caching intent explicitly (`force-cache`, `no-store`, `revalidate`).
- Use `next/image`, `next/font`, and dynamic imports where beneficial.
- Keep metadata complete via `metadata` or `generateMetadata`.

## Copilot Suggestion Priorities
- Suggest minimal diffs aligned to existing structure.
- Prefer composable modules over large monolithic route files.
- Generate tests for Server Actions, route handlers, and key UI states.
- Output code that passes `typecheck`, `lint`, `test`, and `next build`.
