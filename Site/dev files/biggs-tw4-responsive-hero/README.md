# Biggs Responsive Hero Prototype

This package contains a responsive Biggs website header and hero prototype built with HTML and Tailwind CSS v4 using the browser CDN.

## Files

- `index.html` — full responsive prototype
- `assets/biggs-logo.svg` — official Biggs logo asset provided by user
- `assets/background.png` — desktop hero background image
- `assets/truck-cutout.png` — desktop foreground truck image with transparent background
- `assets/mobile-hero.png` — mobile/tablet truck and home image shown below content

## Responsive behavior

- Base / mobile through `md`:
  - Content stacks vertically.
  - Navy background and geometric shapes are generated in HTML/CSS.
  - `mobile-hero.png` appears below the title, services, copy, and buttons.
  - The desktop truck cutout is hidden.

- `lg` 1024px and up:
  - Desktop hero structure begins.
  - `background.png` is used as a full-width background image.
  - Blue geometric design layers are generated in HTML/CSS.
  - Text content is constrained inside a max-width content shell.
  - `truck-cutout.png` is placed as a foreground visual on the right.

- `3xl` 1920px and up:
  - Custom Tailwind breakpoint added with `--breakpoint-3xl: 120rem;`.
  - Main content uses `max-w-[1920px]`.

## Notes

This is a prototype build using:

```html
<script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
```

For production, compile Tailwind with your build process instead of using the browser CDN.
