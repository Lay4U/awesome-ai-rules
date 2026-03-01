# GitHub Copilot Instructions: React

## Core Principles
- Build React applications with TypeScript and functional components.
- Prioritize composability, accessibility, and predictable state flow.
- Keep components focused on one responsibility.
- Prefer simple, explicit patterns over abstraction-heavy designs.

## Component Architecture
- Use function components exclusively; do not write class components.
- Type all props and state with explicit TypeScript interfaces/types.
- Prefer named exports for reusable components and utilities.
- Keep presentational and data-fetching concerns separated.
- Extract complex UI behavior into reusable hooks.

## Shared Logic
- Use custom hooks for shared stateful logic.
- Name hooks with `use*` prefix and clear intent.
- Keep hooks pure with side effects isolated in `useEffect`.
- Return stable, typed APIs from hooks.

## Styling
- Use Tailwind CSS for all component styling.
- Prefer utility classes over ad-hoc inline styles.
- Keep class lists readable and grouped by layout/spacing/visuals.
- Use shared design tokens/config where available.
- Ensure responsive behavior across common breakpoints.

## State and Data
- Favor local state first; lift state only when needed.
- Derive computed values instead of duplicating state.
- Handle loading, empty, and error states explicitly.
- Validate external data at boundaries before rendering.

## Accessibility
- Use semantic HTML elements whenever possible.
- Provide labels, roles, and ARIA attributes when needed.
- Ensure keyboard navigation and visible focus states.
- Include alt text for meaningful images.

## Testing
- Use React Testing Library for component and interaction tests.
- Test behavior from a user perspective, not implementation details.
- Prefer queries by role/label/text over test IDs.
- Cover critical paths, edge states, and accessibility behavior.
- Keep tests deterministic and isolated.

## Code Quality
- Keep files organized: component, hook, test, and type boundaries.
- Avoid prop drilling with thoughtful composition/context usage.
- Avoid `any`; prefer strict TypeScript typing throughout.
- Remove dead code and stale TODOs.
- Update tests alongside behavior changes.
