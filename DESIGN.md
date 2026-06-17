# Biggs Website Design System

This file is the working design system for the Biggs HVAC, Plumbing & Electrical website redesign. It should guide future homepage sections, service pages, location pages, landing pages, CTAs, and reusable content blocks.

This document is a living file. Update it as new sections are designed, tested, approved, and reused.

---

## 1. Brand Foundation

### Brand Name

Use:

- Biggs HVAC, Plumbing & Electrical
- Biggs

Avoid creating alternate brand names unless supplied by the client.

### Brand Positioning

Biggs should feel:

- Local
- Reliable
- Professional
- Family-owned
- Safety-focused
- Experienced
- Helpful without feeling overly corporate

### Core Brand Message

Use this idea consistently across the site:

> One trusted local team for HVAC, plumbing, electrical, septic, sewer, drain cleaning, and water filtration services across the Raleigh Metro.

### Preferred Trust Language

Use:

- Since 1996
- Locally owned
- Licensed & insured
- Trusted by homeowners across the Raleigh Metro
- Big enough to serve, small enough to care

Avoid:

- Overstated claims that cannot be verified
- Generic national-brand language
- Copy that sounds like a franchise
- Em dashes in copy

### TODO: Add More Brand Details

Add these details when finalized:

- Final brand tagline usage rules
- Final legal/licensing language
- Final review count/rating source rules
- Final emergency service wording
- Final warranty and membership disclaimers

---

## 2. Technology and Build Rules

### CSS Framework

Use Tailwind CSS v4.

### CSS Source

```text
src/input.css
```

### Compiled CSS Output

```text
dist/output.css
```

### Build Command

```bash
npm run build:css
```

### Important Rule

Use compiled CSS only for testing and review. Do not rely on the Tailwind CDN for local testing.

---

## 3. Typography

### Fonts

The site uses two primary fonts:

```css
--font-heading: "League Spartan", ui-sans-serif, system-ui, sans-serif;
--font-body: "Open Sans", ui-sans-serif, system-ui, sans-serif;
```

### Heading Style

Use League Spartan for headings and major labels.

Common heading characteristics:

- Bold or black weight
- Tight line-height
- Tight letter spacing
- Often uppercase
- Strong visual hierarchy

Current global heading rule:

```css
h1,
h2,
h3,
.font-heading {
  font-family: "League Spartan", system-ui, sans-serif;
  letter-spacing: -0.025em;
}
```

### Body Style

Use Open Sans for paragraphs, explanations, lists, and utility text.

Body text should feel:

- Clear
- Helpful
- Easy to scan
- Not overly technical

### Heading Guidance

Large marketing headings should usually use:

```html
font-heading font-black tracking-tight uppercase
```

Common large heading sizing examples:

```html
text-4xl sm:text-5xl lg:text-6xl
```

```html
text-[clamp(2.85rem,8vw,4.8rem)]
```

Use clamp sizing for hero and major feature headings when the section needs stronger responsive control.

### TODO: Add Type Scale

Create a formal type scale after more sections are finalized. Include recommended sizes for:

- Hero display text
- Homepage H1
- Section H2
- Card H3
- Eyebrows
- Body copy
- Legal/disclaimer text
- Button labels

---

## 4. Color System

The color system should keep Biggs Blue dominant while using red, yellow, and green as purposeful accents.

### Official Biggs Brand Colors

Use these for primary brand expression, CTAs, icons, service labels, and key highlights.

Biggs Green is reserved primarily for Septic/Sewer content and should not become a general accent color across the site.

```css
--color-biggs-blue: #1e457f;
--color-biggs-red: #bf0813;
--color-biggs-yellow: #efb800;
--color-biggs-green: #296f2d;
```

#### Usage Notes

| Token          | Use                                                       |
| -------------- | --------------------------------------------------------- |
| `biggs-blue`   | Main brand blue, links, icons, key accents, service cards |
| `biggs-red`    | Urgency, heating, emergency, high-attention accents       |
| `biggs-yellow` | Primary CTA buttons, dividers, highlights, trust accents  |
| `biggs-green`  | Septic/Sewer content, occasional pricing/trust accent     |

### Brand State Colors

Use these for hover states, active states, stronger contrast, and small supporting accents. Do not use them as replacements for the official brand colors.

```css
--color-biggs-blue-dark: #153563;
--color-biggs-red-dark: #a30610;
--color-biggs-yellow-dark: #dfae00;
--color-biggs-green-dark: #1f5824;
```

#### Usage Notes

Use these for:

- Button hover states
- Active nav states
- Small dark icon states
- Stronger text contrast when needed
- Subtle interaction feedback

Avoid using these as main brand colors in large sections unless there is a clear readability reason.

### Brand-Aligned Dark Blue System

Use these when official Biggs Blue is too bright for large background areas.

```css
--color-biggs-blue-deep: #173966;
--color-biggs-blue-darker: #12305a;
--color-biggs-blue-darkest: #0d274d;
```

#### Usage Notes

| Token                | Use                                                                 |
| -------------------- | ------------------------------------------------------------------- |
| `biggs-blue-deep`    | Rich gradient middle tone, dark cards, dark visual transitions      |
| `biggs-blue-darker`  | Main dark section background, hero fallback background, dark panels |
| `biggs-blue-darkest` | Darkest gradient stop, trust strips, overlays, high-contrast areas  |

Recommended dark gradient pattern:

```html
bg-gradient-to-br from-biggs-blue-darker via-biggs-blue-deep
to-biggs-blue-darkest
```

### Supporting Service Accent Colors

These are additional non-logo colors for service-category icons and small visual distinctions. Use sparingly. Biggs Blue should remain dominant.

```css
--color-biggs-unc: #42b7f5;
--color-biggs-sky: #009fe3;
--color-biggs-teal: #00a6a6;
--color-biggs-orange: #f58220;
--color-biggs-steel: #3b6ea8;
```

#### Usage Notes

Use these for:

- Service-category icon circles
- Small card accents
- Supporting illustrations
- Visual variety inside larger content grids

Avoid using these for:

- Primary CTAs
- Main brand headers
- Large section backgrounds
- Navigation
- Global brand elements

### Surface, Text, and Utility Colors

Use these for page backgrounds, soft section surfaces, subtle highlights, and readable body text.

```css
--color-soft-blue: #eaf1fa;
--color-pale-sky: #f4f8fd;
--color-charcoal: #1f2937;
```

#### Usage Notes

| Token       | Use                                              |
| ----------- | ------------------------------------------------ |
| `soft-blue` | Light blue section separation, subtle gradients  |
| `pale-sky`  | Page background, soft neutral section background |
| `charcoal`  | Body text and readable dark copy                 |

### Color Usage Rules

Use Biggs Blue as the dominant brand color.

Use Biggs Yellow for primary CTAs and small high-value highlights.

Use Biggs Red for urgency, heating, emergency, and selective attention points.

Use Biggs Green mostly for Septic/Sewer or where a green meaning is clear.

Use the dark blue system for readability on large dark backgrounds.

Use supporting service accent colors only where extra service distinction is needed.

Do not introduce new colors unless they are added to `src/input.css` and documented here.

### TODO: Add Accessibility Contrast Rules

Add formal contrast guidance for:

- White text on each dark blue
- Biggs Yellow text on dark blue
- Biggs Blue text on light backgrounds
- Button text contrast
- Small text contrast requirements

---

## 5. Reusable Background Treatments

These are approved or in-progress background patterns based on the current homepage.

### White Section

Use for clean content, cards, awards, reviews, and service grids.

Recommended classes:

```html
bg-white text-biggs-blue-darker
```

Use when the content needs to feel clear, open, and easy to scan.

### Soft Blue Section

Use to separate light sections without switching to a full dark section.

Recommended classes:

```html
bg-linear-to-br from-soft-blue via-pale-sky to-white
```

Good for:

- SEO intro sections
- Informational content
- Location/service area intros
- Light trust-building sections

Use restrained geometric accents if needed:

```html
bg-biggs-blue/7 bg-biggs-blue-darker bg-biggs-blue/25
```

### Dark Trust Strip

Use for compact proof points and high-contrast trust bars.

Recommended classes:

```html
bg-biggs-blue-darkest text-white
```

Good for:

- Locally owned
- Since 1996
- Licensed & insured
- Satisfaction guaranteed
- Emergency availability

### Dark Feature Section

Use for high-impact, trust-building sections like Why Choose Biggs.

Recommended base:

```html
bg-biggs-blue-darker text-white
```

Recommended gradient overlay:

```css
linear-gradient(135deg,#12305A 0%,#173966 48%,#0D274D 100%)
```

Good for:

- Why Choose Biggs
- Strong trust sections
- Feature card grids
- About/company credibility sections

### Premium Dark Feature Section

Use for more expressive feature sections like Priority Service Agreement.

Current pattern:

```css
radial-gradient(circle_at_50%_0%,rgba(35,79,145,0.50),transparent_34%),
linear-gradient(135deg,#12305A_0%,#173966_48%,#0D274D_100%)
```

Good for:

- Membership / PSA
- Financing
- Major conversion sections
- Bundled service offers
- Seasonal offer landing sections

### Dark CTA Panel Inside Light Section

Use when a light section needs a conversion panel.

Recommended classes:

```html
bg-gradient-to-br from-biggs-blue-darker via-biggs-blue-deep
to-biggs-blue-darkest text-white
```

Good for:

- View all services CTA
- Service area reassurance panel
- Footer CTA cards
- Financing callouts

### TODO: Design Additional Reusable Backgrounds

Create and test additional reusable section backgrounds for future pages:

- Light blue card band
- Red emergency CTA section
- Yellow promotional CTA section
- Green septic/sewer section
- Neutral review/testimonial section
- Service page hero background
- Location page hero background
- Blog/resource page background

Only add new background patterns after they are tested visually at mobile, tablet, desktop, and wide desktop sizes.

---

## 6. Layout System

### Page Width

The main content container commonly uses:

```html
mx-auto max-w-[1540px]
```

Use this as the standard wide content width for homepage and major service page sections.

### Horizontal Padding

Common section padding:

```html
px-5 md:px-10 2xl:px-20
```

For sections inside a `max-w-[1540px]` container, use:

```html
px-5 sm:px-6 md:px-8 lg:px-10
```

### Vertical Padding

Typical section spacing:

```html
py-10 md:py-12 lg:py-14 xl:py-16
```

Large feature sections:

```html
py-16 md:py-20 lg:py-24
```

Compact strips:

```html
py-2.5 lg:py-2 xl:py-2.5
```

### Grid Patterns

Common responsive grids:

```html
grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4
```

```html
grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4
```

```html
grid gap-10 lg:grid-cols-[minmax(0,0.9fr)_minmax(0,1.15fr)]
```

### Layout Rule

Mobile comes first. Every section should stack cleanly at 375px before desktop refinements are added.

---

## 7. Cards and Panels

### Standard Light Card

Use for service cards, review cards, and light content panels.

Recommended style:

```html
rounded-2xl border border-slate-200 bg-white
shadow-[0_10px_30px_rgba(18,48,90,0.12)]
```

### Elevated Light Panel

Use for larger grouped content.

```html
rounded-3xl border border-slate-200 bg-white
shadow-[0_18px_55px_rgba(18,48,90,0.10)]
```

### Dark Glass Card

Use inside dark feature sections.

```html
rounded-2xl border border-white/15 bg-white/5
shadow-[0_18px_42px_rgba(0,0,0,0.18)] backdrop-blur-sm
```

### Rounded Corner Guidance

Use:

- `rounded-lg` for small buttons and pills
- `rounded-xl` for CTAs
- `rounded-2xl` for cards
- `rounded-3xl` for large panels
- `rounded-full` for icons, badges, and pills

---

## 8. Buttons and CTAs

### Primary CTA

Use Biggs Yellow for primary action buttons.

Recommended style:

```html
bg-biggs-yellow text-biggs-blue-darkest hover:bg-biggs-yellow-dark
```

Button text should usually be uppercase, bold, and set in League Spartan or heavy Open Sans depending on context.

### Secondary CTA on Dark Backgrounds

Use a white or transparent outline style.

```html
border-2 border-white/40 text-white hover:border-biggs-yellow hover:bg-white/10
```

### Text Link CTA

Use for lower-priority links.

```html
text-biggs-blue hover:text-biggs-blue-dark border-biggs-yellow border-b-2
```

### CTA Rules

Primary CTAs should be visually obvious.

Use yellow CTAs sparingly so they remain powerful.

Do not use green CTAs unless the CTA is specifically tied to Septic/Sewer or a green meaning.

---

## 9. Icons and Service Color Mapping

### Current Service Color Direction

| Service/Use      | Preferred Color        |
| ---------------- | ---------------------- |
| HVAC / Heating   | Biggs Red              |
| Air Conditioning | Biggs Sky or Biggs UNC |
| Plumbing         | Biggs Blue             |
| Electrical       | Biggs Yellow           |
| Septic / Sewer   | Biggs Green            |
| Water Filtration | Biggs Teal             |
| Water Heaters    | Biggs Orange           |
| Drain Cleaning   | Biggs Steel            |
| Trust / General  | Biggs Blue             |

### Icon Rules

Use icons as support, not decoration alone.

Icon circles should generally be:

```html
h-14 w-14 rounded-full
```

or for larger feature cards:

```html
h-16 w-16 rounded-full
```

Keep icons visually consistent in stroke weight, scale, and alignment.

### TODO: Add Official Icon Library Rules

Document:

- Approved icon style
- SVG stroke width
- Filled vs outlined icon rules
- When to use image icons vs inline SVG
- Accessibility rules for decorative icons

---

## 10. Imagery

### Current Direction

Use residential, homeowner-focused imagery whenever possible.

Images should support:

- Trust
- Comfort
- Home safety
- Local service
- Real trade work
- Professional technicians

### Hero Imagery

Hero images should leave room for readable text overlays.

Use dark Biggs blue overlays when text is placed over an image.

Mobile and tablet overlays should prioritize readability over showing the full image.

Desktop overlays may fade toward the image side when text remains readable.

### Image Rules

Do not crop important subjects awkwardly.

Do not distort vehicles, technicians, homes, maps, logos, or badges.

Use approved Biggs logo assets only.

### TODO: Add Image Asset Rules

Document:

- Approved hero image ratios
- Technician image rules
- Truck image rules
- Map image rules
- Award badge rules
- Preferred export sizes and formats
- Object-position guidance for responsive images

---

## 11. Current Homepage Section Patterns

These patterns are based on the current `index.html` and can be reused or adapted.

### Hero

Purpose:

- Immediate brand statement
- Primary service positioning
- Phone CTA
- Service category quick scan

Design notes:

- Dark Biggs blue image overlay
- Large white/yellow display text
- Official homepage H1 below display line
- Service pills in brand/service colors
- Yellow primary CTA

### Homeowner Highlights

Purpose:

- Quick reassurance directly below hero
- Homeowner benefit scan

Design notes:

- White background
- Yellow top rule
- Icon plus text layout
- Four benefit points

### Trust Points Strip

Purpose:

- Compact trust reinforcement

Design notes:

- Darkest Biggs blue background
- White text
- Compact icon/text items

### SEO Intro

Purpose:

- Local SEO support
- Search-focused H1 content
- Service area reinforcement

Design notes:

- Soft blue to white background
- Red eyebrow
- Large Biggs blue heading
- Map visual on desktop

### Awards

Purpose:

- Third-party trust and reputation

Design notes:

- White background
- Centered content
- Award grid
- Yellow divider accents

### Service Highlights

Purpose:

- Show core services quickly
- Route users into service pages

Design notes:

- White background
- Card grid
- Service color icon circles
- CTA panel at bottom

### Why Choose Biggs

Purpose:

- High-trust brand story section

Design notes:

- Dark Biggs blue feature background
- Yellow eyebrow/divider
- White heading and body text
- Dark glass feature cards

### Service Area

Purpose:

- Local relevance
- Town coverage
- Map support

Design notes:

- White background with subtle accents
- Map card
- Town pill links
- Dark gradient towns panel

### Reviews

Purpose:

- Reputation proof
- Social proof

Design notes:

- White or light panel background
- Google rating card
- BBB card
- Horizontal review cards

### Priority Service Agreement

Purpose:

- Membership conversion
- Recurring service value

Design notes:

- Premium dark gradient background
- Radial accents
- Benefit bar
- Timeline card
- CTA panel

### TODO: Update Section IDs

Some current homepage section wrappers should have consistent IDs for screenshot testing and future linking.

Recommended ID pattern:

```text
home-hero
home-homeowner-highlights
home-trust-points
home-intro
home-awards
home-service-highlights
home-why-biggs
home-service-area
home-reviews
home-psa
```

Add or correct these IDs as the homepage stabilizes.

---

## 12. SEO and Content Structure

### H1 Strategy

Use one clear H1 per page.

For the homepage, the H1 should include:

- Raleigh
- HVAC
- Plumbing
- Electrical
- Septic

The large hero display text can be styled visually as the main hero message, but the actual H1 should remain search-focused and meaningful.

### Service Page SEO

TODO: Add service page H1 and layout rules.

Each service page should likely include:

- Service name
- Raleigh or service area modifier
- Clear emergency/repair/install language when relevant
- Trust proof
- Conversion CTA
- FAQ content
- Related service links

### Location Page SEO

TODO: Add location page structure.

Each location page should likely include:

- Town/city name
- Core services
- Local relevance
- Nearby service area links
- Reviews/trust proof
- CTA

---

## 13. Accessibility and Usability

### General Rules

Text must remain readable at all breakpoints.

Buttons must remain easy to tap on mobile.

Avoid low-contrast text over images.

Use overlays when text appears over photography.

Decorative icons and images should use empty alt text or `aria-hidden="true"` when appropriate.

Meaningful images should have descriptive alt text.

### Mobile Rules

At 375px width:

- No horizontal overflow
- No clipped CTA text
- No squeezed cards
- No overlapping icons/text
- No unreadable image overlay text

### TODO: Add Formal Accessibility Checklist

Add detailed rules for:

- Focus states
- Keyboard navigation
- Color contrast ratios
- Form labels
- Error states
- ARIA usage

---

## 14. Responsive Testing Standards

Test all major sections at:

```text
375px
768px
1024px
1440px
1920px
```

Use section screenshots first when working on one section.

Use full homepage screenshots when checking page flow, spacing between sections, header behavior, or footer layout.

### Visual Review Checklist

Check for:

- Text readability
- Consistent spacing
- Clean stacking
- Balanced card heights
- No horizontal overflow
- No awkward image cropping
- CTA visibility
- Clear hierarchy
- Brand color consistency

---

## 15. Development Notes

### Tailwind Class Preference

Use theme tokens whenever possible instead of arbitrary hex colors.

Prefer:

```html
bg-biggs-blue-darker
```

Avoid:

```html
bg-[#12305A]
```

Exception: complex gradients may temporarily use raw RGB or hex values, but approved patterns should eventually be converted to reusable tokens or documented patterns.

### Debug Classes

Temporary debug classes exist in `src/input.css`:

```css
.test
.test-y
.test-m
```

Remove debug classes from production markup when no longer needed.

### TODO: Reduce Raw Color Usage

Audit `index.html` for raw color values in arbitrary Tailwind classes and convert approved values to documented design tokens or approved gradient recipes where practical.

---

## 16. Open Items to Fill In Later

Add these sections as the design system matures:

- Header and navigation rules
- Footer design rules
- Form design rules
- Service page template
- Location page template
- Blog/resource page template
- Offer/special landing page template
- Financing section rules
- Emergency service section rules
- Review/testimonial component rules
- FAQ component rules
- Membership/PSA page rules
- Animation and hover interaction rules
- Approved image asset library
- Final icon library
- Accessibility checklist
- SEO page blueprint
- Component naming conventions
