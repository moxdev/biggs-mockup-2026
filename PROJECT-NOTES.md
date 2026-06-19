# Biggs Website Redesign Notes

Quick reference notes for local testing, screenshots, section IDs, GPT upload zips, and legacy color references.

---

## Quick Commands

### Build Tailwind CSS

Run this after editing `index.html` or `src/input.css`.

```bash
npm run build:css
```

---

### Screenshot One Section

Replace `home-awards` with the section ID you want to test.

```bash
SECTION=home-awards npm run screenshots:section
```

Example:

```bash
SECTION=home-hero npm run screenshots:section
```

---

### Screenshot Entire Homepage

Use this when checking full page flow, spacing between sections, header behavior, or overall responsive layout.

```bash
npm run screenshots
```

---

### Delete Old Screenshots

Use this before taking a fresh screenshot set.

```bash
rm -f testing/screenshots/*.png
```

Optional terminal alias:

```bash
alias screenshots-clean='rm -f testing/screenshots/*.png'
```

Then run:

```bash
screenshots-clean
```

---

### Create GPT Upload Zip

Builds Tailwind CSS first, then zips the files needed for GPT review or editing.

```bash
npm run zip:gpt:build
```

---

## Screenshot Testing Workflow

Use this workflow when testing a single section.

1. Edit the section in `index.html`.
2. Rebuild Tailwind CSS.

```bash
npm run build:css
```

3. Delete old screenshots.

```bash
rm -f testing/screenshots/*.png
```

4. Run the section screenshot command.

```bash
SECTION=home-awards npm run screenshots:section
```

5. Review screenshots in:

```text
testing/screenshots/
```

6. Fix layout issues and repeat as needed.

---

## Full Homepage Testing Workflow

Use this when checking overall page flow.

1. Rebuild Tailwind CSS.

```bash
npm run build:css
```

2. Delete old screenshots.

```bash
rm -f testing/screenshots/*.png
```

3. Screenshot the full homepage.

```bash
npm run screenshots
```

4. Review screenshots in:

```text
testing/screenshots/
```

---

## Current Screenshot Breakpoints

````js
const viewports = [
  { name: "mobile-375", width: 375, height: 1800 },
  { name: "mobile-640", width: 640, height: 1800 },
  { name: "tablet-768", width: 768, height: 1800 },
  { name: "desktop-1024", width: 1024, height: 1400 },
  { name: "desktop-1280", width: 1280, height: 1400 },
  { name: "desktop-1536", width: 1536, height: 1400 },
  { name: "wide-1920", width: 1920, height: 1400 },
];

---

## Homepage Section IDs

Use these IDs when running section screenshots.

| Section                    | Section ID                  |
| -------------------------- | --------------------------- |
| Hero                       | `home-hero`                 |
| Homeowner Highlights       | `home-homeowner-highlights` |
| Trust Points Strip         | `home-trust-points`         |
| SEO Intro                  | `home-intro`                |
| Awards                     | `home-awards`               |
| Service Highlights         | `home-service-highlights`   |
| Why Choose Biggs           | `home-why-biggs`            |
| Service Area               | `home-service-area`         |
| Reviews                    | `home-reviews`              |
| Priority Service Agreement | `home-psa`                  |
| Future Placeholder         | `next-section`              |

### Note

Rename `next-section` once the real section is designed and added.

---

## Project Reference Files

Use these files for project guidance.

| File                    | Purpose                                                                        |
| ----------------------- | ------------------------------------------------------------------------------ |
| `README.md`             | Project overview and file map                                                  |
| `DESIGN.md`             | Visual design system rules                                                     |
| `HOMEPAGE-BLUEPRINT.md` | Homepage structure, SEO strategy, conversion goals, and remaining section plan |
| `TESTING.md`            | Local build and screenshot testing workflow                                    |
| `PROJECT-NOTES.md`      | Personal notes, reminders, quick commands, and scratchpad items                |

---

## Important Build Notes

Always rebuild Tailwind CSS after editing HTML or CSS.

This is important because new Tailwind utility classes added to `index.html` must be compiled into:

```text
dist/output.css
````

Build command:

```bash
npm run build:css
```

---

## Legacy Brand Colors

Reference only. Do not use these old colors in new design work.

```css
/* Original Biggs Brand Colors - Do Not Use */
--color-biggs-yellow: #facb06;
--color-biggs-red: #e00a17;
--color-biggs-blue: #234f91;
--color-biggs-green: #2e7d32;
```

---

## Current Brand Colors

Use these colors going forward.

```css
/* Biggs Brand Colors */
--color-biggs-blue: #1e457f;
--color-biggs-red: #bf0813;
--color-biggs-yellow: #efb800;
--color-biggs-green: #296f2d;
```

---

## Current Button Rules Reminder

Use the button system from `DESIGN.md`.

Key reminders:

- Use solid button colors only.
- Do not use gradient buttons.
- Do not use glowing halo effects around buttons.
- Use `min-h` for consistent button height and mobile tap targets.
- Use `hover:` for desktop polish.
- Use `active:` for touch feedback.
- Use `focus-visible:` for keyboard accessibility.
