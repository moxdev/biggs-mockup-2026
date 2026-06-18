# Biggs Website Redesign Project

This project contains the working homepage files, design system, homepage blueprint, and testing workflow for the Biggs HVAC, Plumbing & Electrical website redesign.

## Project Reference Files

Use `DESIGN.md` for visual design system rules, including colors, typography, buttons, spacing, cards, backgrounds, accessibility, and reusable component patterns.

Use `HOMEPAGE-BLUEPRINT.md` for homepage structure, SEO strategy, conversion goals, current section order, future section planning, and remaining homepage build priorities.

Use `TESTING.md` for local build instructions, Tailwind CSS compilation, screenshot testing, and responsive review workflow.

Use `PROJECT-NOTES.md` for personal notes, reminders, ideas, and scratchpad items that are not official design system or build instructions.

## Core Files

- `index.html` contains the current homepage HTML.
- `src/input.css` contains the Tailwind CSS v4 source and project design tokens.
- `dist/output.css` contains the compiled CSS output.
- `assets/` contains images, logos, icons, awards, and other visual assets.

## Build Rule

After editing HTML or CSS, rebuild the compiled Tailwind CSS before testing:

```bash
npm run build:css
```

## Testing Rule

Use `TESTING.md` for the current screenshot workflow and breakpoint review process.
