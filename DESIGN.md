# Biggs Website Design System

This file is the working design system for the Biggs HVAC, Plumbing & Electrical website redesign. It should guide future homepage sections, service pages, location pages, landing pages, CTAs, and reusable content blocks.

This document is a living file. Update it as new sections are designed, tested, approved, and reused.

---

## Related Project Documents

- `HOMEPAGE-BLUEPRINT.md` is the source of truth for homepage section order, SEO purpose, conversion purpose, section markers, remaining homepage build priorities, and open homepage planning questions.
- `DESIGN.md` is the source of truth for visual design rules, colors, typography, buttons, spacing, backgrounds, cards, accessibility, and reusable component patterns.
- `TESTING.md` is the source of truth for local build, screenshot, and responsive testing workflow.

---

## 1. Brand Foundation

### Brand Name

Use:

- Biggs HVAC, Plumbing & Electrical
- Biggs

Avoid creating alternate brand names unless supplied by the client.

### Brand Tagline

Offical Biggs Brand tagline:

- Big enough to serve, small enough to care

### Website URL

Current website:

- https://www.biggshvac.com/

### Business Type

Local home services company

Core Services:

- HVAC
- Plumbing
- Electrical
- Septic & Sewer

Secondary Service:

- Heating
- Air Conditioning
- Water Filtration
- Drain Cleaning
- Water Heaters
- Hydro-Jetting
- Solar Power
- Generators

### Main Goal of Website

Generate more phone calls, appointment requests, service inquiries, and membership signups.

### Secondary Goals

- Build immediate trust with homeowners through reviews, credentials, local history, service guarantees, and technician professionalism.
- Clearly communicate that Biggs offers complete home services including heating, air-conditioning, plumbing, electrical, septic, sewer, drain cleaning, and water filtration.
- Make it easy for visitors to quickly find the service they need from any device.
- Improve local SEO visibility for core services and service-area pages across the Raleigh Metro, Wake County, and Johnston County.
- Increase Priority Service Agreement membership signups by explaining the value of preventive maintenance and member savings.
- Promote high-value services such as new HVAC systems, water heaters, generators, water filtration systems, septic services, and major repairs.
- Support emergency service conversions by making urgent phone calls easy from mobile and desktop.
- Educate homeowners with helpful, easy-to-understand service content, FAQs, maintenance tips, and seasonal guidance.
- Showcase Biggs as a local, family-owned & operated company that has served the area since 1996.
- Improve lead quality by guiding users to the right service, location, and contact path before they submit a form or call.
- Highlight financing options for larger repairs, replacements, and installations.
- Strengthen brand consistency across the website, email, social media, and future marketing campaigns.
- Reduce confusion by simplifying navigation, service categories, and calls to action.
- Create a flexible website structure that can support future specials, seasonal campaigns, new service areas, and additional services.

### Brand Positioning

Biggs should feel:

- Local
- Reliable
- Professional
- Family-owned & operated
- Licensed
- Local Community Focused
- Experienced
- Expertly Trained
- Helpful without feeling overly corporate

### Core Brand Message

Use this idea consistently across the site:

> One trusted local team for HVAC, plumbing, electrical, septic, sewer, drain cleaning, and water filtration services across the Raleigh Metro.

### Preferred Trust Language

Use:

- Since 1996
- Locally owned & operated
- Licensed & insured
- Trusted by homeowners across the Raleigh Metro
- Big enough to serve, small enough to care
- Complete Home Services

Avoid:

- Overstated claims that cannot be verified
- Generic national-brand language
- Copy that sounds like a franchise
- Never use Em dashes in copy

### Brand Voice

The website copy should sound:

- Clear
- Confident
- Helpful
- Trustworthy
- Local
- Professional without feeling cold

Avoid:

- Overly corporate language
- Pushy sales language
- Generic contractor clichés
- Long paragraphs
- Confusing technical jargon
- Never use Em dashes in copy

### Target Audience

Primary Audience:

Homeowners in the Raleigh Metro area who need reliable HVAC, plumbing, electrical, septic, sewer, or water filtration service.

Secondary Audiences:

- Existing customers
- PSA members
- New homeowners
- Real estate/property managers
- Emergency service customers

### Customer Concerns

Customers may be worried about:

- Cost
- Trust
- Technician quality
- Speed of service
- Emergency availability
- Cleanliness
- Scheduling
- Warranties
- Long-term reliability

### Customer Motivations

Customers want:

- Fast response
- Clear pricing
- Expert service
- Local company they can trust
- One company for multiple home systems
- Preventive maintenance
- Emergency help when needed

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

Buttons should feel strong, clear, professional, and easy to understand at a glance. The Biggs button system should support a clear hierarchy of action across light sections, dark sections, service pages, location pages, landing pages, forms, and CTA panels.

The button system uses **solid colors only**. Do not use gradients for buttons. Gradients should be reserved for section backgrounds, hero overlays, CTA panels, and premium feature areas.

---

### Button Design Principles

Use buttons to guide users toward the next best action.

Buttons should be:

- Easy to identify
- Easy to tap on mobile
- High contrast
- Consistent across pages
- Clear in hierarchy
- Strong but not flashy
- Professional and service-business appropriate
- Usable with mouse, touch, and keyboard input

Avoid:

- Gradient button fills
- Glow effects
- Low-contrast outlines
- Too many button colors in one section
- Multiple competing primary CTAs in the same section
- Small buttons that are difficult to tap on mobile
- Hover states that are too subtle to notice
- Hover-only content or hover-only meaning

---

### Button Hierarchy

Use one primary CTA per major section whenever possible.

Recommended hierarchy:

1. **Primary CTA:** Yellow button
2. **Secondary CTA:** Biggs Blue button or outline button
3. **Alternative CTA:** Red or Green only when context requires it
4. **Text Link CTA:** Inline navigation or lower-priority action

---

### Global Button Shape

Use rounded buttons with a modern home-services feel.

Recommended default radius:

```html
rounded-xl
```

Use this for most CTA buttons.

Use `rounded-lg` only for smaller utility buttons or compact nav-style buttons.

Use `rounded-full` only for pill links, town buttons, badges, or small icon-only buttons.

---

### Global Button Size

Most primary and secondary CTAs should be large enough to feel important and easy to tap.

Recommended standard CTA sizing:

```html
inline-flex min-h-14 items-center justify-center gap-3 rounded-xl px-6 py-4
```

For larger feature CTAs:

```html
inline-flex min-h-[3.75rem] items-center justify-center gap-3 rounded-xl px-7
py-5
```

For compact buttons:

```html
inline-flex min-h-11 items-center justify-center gap-2 rounded-lg px-5 py-3
```

Use padding for button comfort and spacing. Use `min-h` to guarantee a consistent minimum height and mobile tap target. Most primary and secondary CTAs should use both.

Mobile rule:

- Buttons should have at least `min-h-11`.
- Primary CTAs should usually use `min-h-14`.
- Full-width mobile buttons are acceptable when space is tight.
- Small controls may use `pointer-coarse:` if they need larger touch targets.

Example touch-target enhancement:

```html
pointer-coarse:min-h-12 pointer-coarse:px-5
```

Primary and secondary CTAs usually do not need `pointer-coarse:` because they already use `min-h-14`.

---

### Global Button Typography

Button labels should usually be bold and uppercase.

Recommended base:

```html
text-sm font-black tracking-wide uppercase sm:text-base
```

For larger CTAs:

```html
font-heading text-lg leading-none font-black uppercase sm:text-xl
```

Use short, action-oriented labels.

Good examples:

- Call Now
- Schedule Service
- Explore Services
- View Services
- Learn More
- Emergency Service
- View Membership Plans
- Get Financing

Avoid vague labels:

- Click Here
- Submit
- More Info
- Continue

---

### Button Interaction States

Every button and CTA link should include states for mouse, touch, and keyboard users.

Use:

- `hover:` for desktop mouse and trackpad interaction
- `active:` for touch, tap, and pressed states
- `focus-visible:` for keyboard accessibility

Tailwind v4 automatically scopes standard `hover:` styles to devices that support hover. This helps prevent sticky hover behavior on touch devices. Do not override this default behavior.

Hover states are desktop enhancements only. Do not rely on hover to reveal important content, controls, CTA meaning, pricing, service details, or navigation.

All clickable elements must be clear and understandable in their default state.

Recommended global interaction pattern:

```html
transition duration-200 hover:-translate-y-0.5 active:translate-y-0
active:scale-[0.98] focus-visible:ring-4 focus-visible:outline-none
```

Use color-specific focus rings:

```html
focus-visible:ring-biggs-yellow/40 focus-visible:ring-biggs-blue/30
focus-visible:ring-biggs-red/30 focus-visible:ring-biggs-green/30
```

#### Interaction State Rules

| State         | Purpose                                | Recommended Treatment                                            |
| ------------- | -------------------------------------- | ---------------------------------------------------------------- |
| Default       | Normal visible button state            | Clear color, readable text, obvious CTA                          |
| Hover         | Desktop mouse and trackpad enhancement | Darker fill, stronger shadow, subtle lift                        |
| Active        | Touch, tap, and pressed feedback       | Slight scale down, return lift to neutral, darker fill if useful |
| Focus Visible | Keyboard accessibility                 | Visible ring using the appropriate brand color                   |

#### Touch Device Rule

Because mobile phones and tablets do not use hover the same way desktop computers do, important interaction feedback must not depend on hover alone.

For touch users, use:

```html
active:scale-[0.98] active:translate-y-0
```

For keyboard users, use:

```html
focus-visible:ring-4 focus-visible:outline-none
```

For smaller touch targets, use `pointer-coarse:` only when needed:

```html
pointer-coarse:min-h-12 pointer-coarse:px-5
```

---

### Global Hover Behavior

Hover states should be obvious at a glance.

For filled buttons, hover states should generally use:

- Darker solid fill
- Slightly stronger shadow
- Subtle upward movement
- No glow
- No gradient

Recommended hover motion:

```html
transition duration-200 hover:-translate-y-0.5
```

Hover states should not feel like a completely different button, but they should be clearly more active and interactive.

---

### Global Active Behavior

Active states are especially important for mobile and tablet users.

For filled buttons, active states should generally use:

- Slight scale down
- Return vertical lift to neutral
- Same darker color used for hover, if appropriate
- No glow
- No layout shift

Recommended active motion:

```html
active:translate-y-0 active:scale-[0.98]
```

For outline buttons, active states may add a subtle background fill:

```html
active:bg-white/15
```

or on light backgrounds:

```html
active:bg-biggs-blue active:text-white
```

---

### Global Focus Behavior

Every interactive button and CTA link should include a visible keyboard focus state.

Use `focus-visible:` instead of only `focus:` for button patterns.

Recommended focus classes:

```html
focus-visible:ring-4 focus-visible:outline-none
```

Use color-specific focus rings:

```html
focus-visible:ring-biggs-yellow/40 focus-visible:ring-biggs-blue/30
focus-visible:ring-biggs-red/30 focus-visible:ring-biggs-green/30
```

Focus states are required for keyboard accessibility.

---

### Updated Base Button Pattern

Use this base pattern for most primary and secondary CTA buttons:

```html
inline-flex min-h-14 items-center justify-center gap-3 rounded-xl px-6 py-4
text-sm font-black tracking-wide uppercase
shadow-[0_12px_26px_rgba(13,39,77,0.28)] transition duration-200
hover:-translate-y-0.5 hover:shadow-[0_16px_34px_rgba(13,39,77,0.34)]
active:translate-y-0 active:scale-[0.98] focus-visible:ring-4
focus-visible:outline-none sm:text-base
```

Use this as the shared structural pattern, then add the appropriate background, text color, hover color, active color, and focus ring for each button type.

---

### Primary CTA Button

Use the Primary CTA for the most important conversion action in a section.

Common uses:

- Call Now
- Schedule Service
- Get Started
- Request Service

Primary CTA default:

```html
bg-biggs-yellow text-biggs-blue-darkest
```

Primary CTA hover:

```html
hover:bg-biggs-yellow-dark hover:-translate-y-0.5
```

Primary CTA active:

```html
active:bg-biggs-yellow-dark active:translate-y-0 active:scale-[0.98]
```

Primary CTA focus:

```html
focus-visible:ring-4 focus-visible:ring-biggs-yellow/40
focus-visible:outline-none
```

Recommended full class pattern:

```html
<a
  href="tel:9193298288"
  class="bg-biggs-yellow text-biggs-blue-darkest hover:bg-biggs-yellow-dark active:bg-biggs-yellow-dark focus-visible:ring-biggs-yellow/40 inline-flex min-h-14 items-center justify-center gap-3 rounded-xl px-6 py-4 text-sm font-black tracking-wide uppercase shadow-[0_12px_26px_rgba(13,39,77,0.28)] transition duration-200 hover:-translate-y-0.5 hover:shadow-[0_16px_34px_rgba(13,39,77,0.34)] focus-visible:ring-4 focus-visible:outline-none active:translate-y-0 active:scale-[0.98] sm:text-base"
>
  Call Now
</a>
```

Usage rules:

- Use yellow for the highest-priority action.
- Use only one yellow primary CTA per section when possible.
- Yellow buttons work on both light and dark backgrounds.
- Text should use `biggs-blue-darkest`, not black.
- Do not use gradients on primary buttons.

---

### Secondary CTA Button on Light Backgrounds

Use this for strong secondary actions on white, pale, or light blue backgrounds.

Common uses:

- Our Services
- Explore Services
- View Membership Plans
- View Service Area

Secondary CTA default:

```html
bg-biggs-blue text-white
```

Secondary CTA hover:

```html
hover:bg-biggs-blue-dark
```

Secondary CTA active:

```html
active:bg-biggs-blue-dark active:translate-y-0 active:scale-[0.98]
```

Secondary CTA focus:

```html
focus-visible:ring-4 focus-visible:ring-biggs-blue/30 focus-visible:outline-none
```

Recommended full class pattern:

```html
<a
  href="/services/"
  class="bg-biggs-blue hover:bg-biggs-blue-dark active:bg-biggs-blue-dark focus-visible:ring-biggs-blue/30 inline-flex min-h-14 items-center justify-center gap-3 rounded-xl px-6 py-4 text-sm font-black tracking-wide text-white uppercase shadow-[0_12px_26px_rgba(13,39,77,0.24)] transition duration-200 hover:-translate-y-0.5 hover:shadow-[0_16px_34px_rgba(13,39,77,0.32)] focus-visible:ring-4 focus-visible:outline-none active:translate-y-0 active:scale-[0.98] sm:text-base"
>
  Explore Services
</a>
```

Usage rules:

- Use on light backgrounds when yellow is already present or when the action is secondary.
- Avoid placing too many blue filled buttons together.
- Blue filled buttons are preferred over red or green unless there is a service-specific reason.
- Do not use gradients on secondary buttons.

---

### Secondary CTA Button on Dark Backgrounds

On dark Biggs-blue backgrounds, secondary buttons should remain visible without competing with the primary yellow CTA.

Recommended default:

```html
border-2 border-white/35 bg-white/5 text-white
```

Recommended hover:

```html
hover:border-biggs-yellow hover:bg-white/10
```

Recommended active:

```html
active:border-biggs-yellow active:bg-white/15 active:translate-y-0
active:scale-[0.98]
```

Recommended focus:

```html
focus-visible:ring-4 focus-visible:ring-biggs-yellow/30
focus-visible:outline-none
```

Recommended full class pattern:

```html
<a
  href="/services/"
  class="hover:border-biggs-yellow active:border-biggs-yellow focus-visible:ring-biggs-yellow/30 inline-flex min-h-14 items-center justify-center gap-3 rounded-xl border-2 border-white/35 bg-white/5 px-6 py-4 text-sm font-black tracking-wide text-white uppercase backdrop-blur transition duration-200 hover:-translate-y-0.5 hover:bg-white/10 focus-visible:ring-4 focus-visible:outline-none active:translate-y-0 active:scale-[0.98] active:bg-white/15 sm:text-base"
>
  Explore Services
</a>
```

Usage rules:

- Use this when a yellow primary CTA is already present in a dark section.
- Keep the border visible enough to read against dark blue.
- Use `hover:border-biggs-yellow` to connect the hover state to the brand CTA color.
- Use `active:bg-white/15` to give touch users a clear pressed state.

---

### Outline Button on Light Backgrounds

Use outline buttons for lower-priority actions and informational navigation.

Common uses:

- Learn More
- Read More
- About Us
- See Details

Default:

```html
border-2 border-biggs-blue bg-transparent text-biggs-blue
```

Hover:

```html
hover:bg-biggs-blue hover:text-white
```

Active:

```html
active:bg-biggs-blue active:text-white active:translate-y-0 active:scale-[0.98]
```

Focus:

```html
focus-visible:ring-4 focus-visible:ring-biggs-blue/20 focus-visible:outline-none
```

Recommended full class pattern:

```html
<a
  href="/about-us/"
  class="border-biggs-blue text-biggs-blue hover:bg-biggs-blue active:bg-biggs-blue focus-visible:ring-biggs-blue/20 inline-flex min-h-14 items-center justify-center gap-3 rounded-xl border-2 bg-transparent px-6 py-4 text-sm font-black tracking-wide uppercase transition duration-200 hover:-translate-y-0.5 hover:text-white hover:shadow-[0_12px_26px_rgba(13,39,77,0.18)] focus-visible:ring-4 focus-visible:outline-none active:translate-y-0 active:scale-[0.98] active:text-white sm:text-base"
>
  Learn More
</a>
```

Usage rules:

- Use outline buttons when the action should be visible but not dominant.
- On light backgrounds, outline buttons should usually use Biggs Blue.
- Do not use outline buttons for the main phone CTA.
- Make sure outline buttons still look clickable before hover.

---

### Outline Button on Dark Backgrounds

Use for low-priority secondary actions on dark sections.

Default:

```html
border-2 border-white/45 bg-transparent text-white
```

Hover option 1, subtle:

```html
hover:border-biggs-yellow hover:bg-white/10 hover:text-white
```

Hover option 2, stronger:

```html
hover:border-biggs-yellow hover:bg-biggs-yellow hover:text-biggs-blue-darkest
```

Active for subtle version:

```html
active:border-biggs-yellow active:bg-white/15 active:translate-y-0
active:scale-[0.98]
```

Recommended subtle pattern:

```html
<a
  href="/about-us/"
  class="hover:border-biggs-yellow active:border-biggs-yellow focus-visible:ring-biggs-yellow/30 inline-flex min-h-14 items-center justify-center gap-3 rounded-xl border-2 border-white/45 bg-transparent px-6 py-4 text-sm font-black tracking-wide text-white uppercase transition duration-200 hover:-translate-y-0.5 hover:bg-white/10 focus-visible:ring-4 focus-visible:outline-none active:translate-y-0 active:scale-[0.98] active:bg-white/15 sm:text-base"
>
  Learn More
</a>
```

Usage rules:

- Use subtle hover when a primary yellow CTA is nearby.
- Use stronger yellow hover only when the outline button needs more attention.
- Do not make every dark-section outline button turn yellow. Use judgment.
- Keep the default border clear enough to be understood on dark backgrounds.

---

### Urgent / Emergency CTA Button

Use red buttons only for urgent, emergency, or high-priority service needs.

Common uses:

- Emergency Service
- 24/7 Emergency
- Need Help Now

Default:

```html
bg-biggs-red text-white
```

Hover:

```html
hover:bg-biggs-red-dark
```

Active:

```html
active:bg-biggs-red-dark active:translate-y-0 active:scale-[0.98]
```

Focus:

```html
focus-visible:ring-4 focus-visible:ring-biggs-red/30 focus-visible:outline-none
```

Recommended full class pattern:

```html
<a
  href="/emergency-service/"
  class="bg-biggs-red hover:bg-biggs-red-dark active:bg-biggs-red-dark focus-visible:ring-biggs-red/30 inline-flex min-h-14 items-center justify-center gap-3 rounded-xl px-6 py-4 text-sm font-black tracking-wide text-white uppercase shadow-[0_12px_26px_rgba(191,8,19,0.24)] transition duration-200 hover:-translate-y-0.5 hover:shadow-[0_16px_34px_rgba(143,6,16,0.34)] focus-visible:ring-4 focus-visible:outline-none active:translate-y-0 active:scale-[0.98] sm:text-base"
>
  Emergency Service
</a>
```

Usage rules:

- Use red sparingly.
- Red should mean urgency or emergency.
- Do not use red as a general secondary CTA.
- Avoid placing red and yellow CTAs side-by-side unless both actions are clearly different.
- Do not use gradients on emergency buttons.

---

### Septic / Sewer CTA Button

Use green buttons primarily for Septic/Sewer content.

Common uses:

- Septic Services
- Septic & Sewer
- Schedule Septic Service

Default:

```html
bg-biggs-green text-white
```

Hover:

```html
hover:bg-biggs-green-dark
```

Active:

```html
active:bg-biggs-green-dark active:translate-y-0 active:scale-[0.98]
```

Focus:

```html
focus-visible:ring-4 focus-visible:ring-biggs-green/30
focus-visible:outline-none
```

Recommended full class pattern:

```html
<a
  href="/septic-sewer/"
  class="bg-biggs-green hover:bg-biggs-green-dark active:bg-biggs-green-dark focus-visible:ring-biggs-green/30 inline-flex min-h-14 items-center justify-center gap-3 rounded-xl px-6 py-4 text-sm font-black tracking-wide text-white uppercase shadow-[0_12px_26px_rgba(41,111,45,0.24)] transition duration-200 hover:-translate-y-0.5 hover:shadow-[0_16px_34px_rgba(31,88,36,0.34)] focus-visible:ring-4 focus-visible:outline-none active:translate-y-0 active:scale-[0.98] sm:text-base"
>
  Septic & Sewer
</a>
```

Usage rules:

- Use green primarily for Septic/Sewer.
- Do not use green as a general “success” color across the website unless approved.
- Green should appear intentionally tied to service category meaning.
- Do not use gradients on Septic/Sewer buttons.

---

### Text Link CTA

Use text links for inline or lower-priority navigation.

Text links should also include hover, active, and focus-visible states.

Light background default:

```html
text-biggs-blue
```

Light background hover:

```html
hover:text-biggs-blue-dark
```

Light background active:

```html
active:text-biggs-blue-dark
```

Dark background default:

```html
text-white
```

Dark background hover:

```html
hover:text-biggs-yellow
```

Dark background active:

```html
active:text-biggs-yellow
```

Recommended light background pattern:

```html
<a
  href="/services/"
  class="group border-biggs-yellow text-biggs-blue hover:text-biggs-blue-dark active:text-biggs-blue-dark focus-visible:ring-biggs-yellow/30 inline-flex items-center gap-3 border-b-2 pb-1 text-sm font-black tracking-wide uppercase transition focus-visible:ring-4 focus-visible:outline-none sm:text-base"
>
  View All Services
  <svg
    class="h-4 w-4 transition duration-200 group-hover:translate-x-1 group-active:translate-x-0.5"
    viewBox="0 0 24 24"
    fill="none"
    aria-hidden="true"
  >
    <path
      d="M5 12h14"
      stroke="currentColor"
      stroke-width="2.3"
      stroke-linecap="round"
    />
    <path
      d="m13 6 6 6-6 6"
      stroke="currentColor"
      stroke-width="2.3"
      stroke-linecap="round"
      stroke-linejoin="round"
    />
  </svg>
</a>
```

Recommended dark background pattern:

```html
<a
  href="/services/"
  class="group border-biggs-yellow hover:text-biggs-yellow active:text-biggs-yellow focus-visible:ring-biggs-yellow/30 inline-flex items-center gap-3 border-b-2 pb-1 text-sm font-black tracking-wide text-white uppercase transition focus-visible:ring-4 focus-visible:outline-none sm:text-base"
>
  View All Services
  <svg
    class="h-4 w-4 transition duration-200 group-hover:translate-x-1 group-active:translate-x-0.5"
    viewBox="0 0 24 24"
    fill="none"
    aria-hidden="true"
  >
    <path
      d="M5 12h14"
      stroke="currentColor"
      stroke-width="2.3"
      stroke-linecap="round"
    />
    <path
      d="m13 6 6 6-6 6"
      stroke="currentColor"
      stroke-width="2.3"
      stroke-linecap="round"
      stroke-linejoin="round"
    />
  </svg>
</a>
```

Usage rules:

- Use text links when a full button is too heavy.
- Text links can include an arrow.
- Arrow icons should move slightly on hover.
- Arrow icons should also have a small active movement for touch feedback.
- Text links should not replace the primary CTA in high-conversion sections.

---

### Icon Rules for Buttons

Icons can improve recognition, but they should not be overused.

Use icons for:

- Phone CTAs
- Emergency CTAs
- Directional links
- Service-specific CTAs
- Membership or financing CTAs when helpful

Avoid icons for every button on the page.

Recommended icon sizing:

```html
h-5 w-5 shrink-0
```

For phone CTAs:

```html
h-6 w-6 shrink-0
```

Button icon placement:

- Phone icons usually go before the label.
- Arrow icons usually go after the label.
- Service icons may go before the label if they improve clarity.

Arrow hover behavior:

```html
group-hover:translate-x-1
```

Arrow active behavior:

```html
group-active:translate-x-0.5
```

Use `transition duration-200` on arrow icons.

---

### Button Shadows

Use shadows to create depth, not glow.

Primary yellow CTA shadow:

```html
shadow-[0_12px_26px_rgba(13,39,77,0.28)]
```

Primary yellow CTA hover shadow:

```html
hover:shadow-[0_16px_34px_rgba(13,39,77,0.34)]
```

Blue CTA shadow:

```html
shadow-[0_12px_26px_rgba(13,39,77,0.24)]
```

Blue CTA hover shadow:

```html
hover:shadow-[0_16px_34px_rgba(13,39,77,0.32)]
```

Red CTA shadow:

```html
shadow-[0_12px_26px_rgba(191,8,19,0.24)]
```

Red CTA hover shadow:

```html
hover:shadow-[0_16px_34px_rgba(143,6,16,0.34)]
```

Green CTA shadow:

```html
shadow-[0_12px_26px_rgba(41,111,45,0.24)]
```

Green CTA hover shadow:

```html
hover:shadow-[0_16px_34px_rgba(31,88,36,0.34)]
```

Do not use bright glow effects around buttons.

Avoid:

```html
shadow-[0_0_30px_rgba(...)]
```

---

### No Button Halo or Glow Effects

Do not use glowing halo effects around buttons.

Avoid large blurred outer shadows that make buttons look like they are glowing, floating in a haze, or surrounded by a light aura.

Buttons may use clean, directional shadows for subtle depth, but the shadow should feel natural and grounded.

Avoid patterns like:

```html
shadow-[0_0_30px_rgba(...)] shadow-[0_0_40px_rgba(...)]
shadow-[0_20px_60px_rgba(...)]
```

Preferred button depth should be subtle or minimal:

```html
shadow-sm shadow-md
```

or no shadow at all when the surrounding section already has enough depth.

For Biggs buttons, interaction feedback should come from:

- darker solid hover colors
- slight lift
- active press state
- clear focus-visible ring
- strong color contrast

Do not use glow or halo effects as button interaction feedback.

### Button Placement Rules

Primary CTA placement:

- Place primary CTAs near the main section headline or value proposition.
- On mobile, primary CTAs may stack full-width.
- On desktop, primary and secondary CTAs may sit side-by-side.
- Primary CTA should usually appear first.

Recommended mobile stack:

```html
flex flex-col gap-3 sm:flex-row
```

Recommended button group:

```html
<div class="mt-6 flex flex-col gap-3 sm:flex-row">...</div>
```

Button groups should maintain enough spacing to avoid accidental taps on mobile.

---

### Button Color Usage by Background

#### Light Backgrounds

Recommended CTA combinations:

- Yellow primary + Blue secondary
- Blue primary-style secondary + Blue outline
- Red urgent only when emergency context exists
- Green only for Septic/Sewer

Example:

```text
Primary: Yellow
Secondary: Blue fill or Blue outline
Text Link: Biggs Blue
```

#### Dark Backgrounds

Recommended CTA combinations:

- Yellow primary + White outline secondary
- Yellow primary + White text link
- Red urgent only when emergency context exists
- Green only for Septic/Sewer

Example:

```text
Primary: Yellow
Secondary: White outline
Text Link: White with Yellow underline
```

---

### Button Design Rules

Buttons should use solid brand fills only.

Do not use gradients for buttons.

Use darker solid hover states, subtle shadow changes, and slight lift to create interaction feedback.

Use active states for touch and pressed feedback.

Use focus-visible states for keyboard accessibility.

Reserve gradients for:

- Section backgrounds
- CTA panels
- Hero overlays
- Premium feature areas
- Large visual containers

Do not use gradients for:

- Primary buttons
- Secondary buttons
- Emergency buttons
- Septic/Sewer buttons
- Text link CTAs

---

### Touch and Hover Rules for the Biggs Website

Do:

- Keep hover as desktop polish.
- Add `active:` to important buttons, links, and clickable cards.
- Add `focus-visible:` to buttons and links.
- Add `focus-within:` to clickable cards where helpful.
- Keep default states clear and complete.
- Make all CTA meaning visible before hover.
- Use `pointer-coarse:` only when smaller controls need improved touch sizing.

Do not:

- Hide important text, CTAs, pricing, service information, or controls until hover.
- Depend on hover for mobile usability.
- Use hover-only arrows as the only indication that a card is clickable.
- Use sticky hover workarounds unless there is a proven issue in testing.
- Override Tailwind v4’s default hover behavior.
- Use gradients for button hover states.

---

### Clickable Card Interaction Rule

Cards that behave like links should not rely on hover alone.

Clickable cards should include:

```html
transition duration-200 hover:-translate-y-1 active:translate-y-0
active:scale-[0.99] focus-within:ring-4 focus-within:ring-biggs-yellow/25
```

Clickable card rules:

- The card must look clickable in its default state.
- A visible CTA cue should be present by default.
- Do not reveal essential content only on hover.
- Hover may lift the card, strengthen the shadow, or move an arrow.
- Active should provide a subtle pressed state for touch users.
- Keyboard focus should be visible through `focus-within:` or a direct `focus-visible:` state on the link.

---

### Default Button Labels by Action

Use consistent wording across the site.

| Action               | Preferred Button Label |
| -------------------- | ---------------------- |
| Phone CTA            | Call Now               |
| General booking CTA  | Schedule Service       |
| Service category CTA | Explore Services       |
| Service page CTA     | Request Service        |
| Emergency CTA        | Emergency Service      |
| Membership CTA       | View Membership Plans  |
| Financing CTA        | View Financing Options |
| Service area CTA     | View Service Area      |
| Learn more CTA       | Learn More             |
| Reviews CTA          | Read More Reviews      |

---

### TODO: Confirm Button Label Standards

Confirm the final preferred labels for:

- Primary service booking
- Emergency service
- Financing
- Membership
- Contact form submissions
- Free estimate or quote language
- Commercial service CTAs if added later

---

### TODO: Add Form Button Rules

Add final rules for form submit buttons after forms are designed.

Needed decisions:

- Submit button label
- Form loading state
- Disabled state
- Error state
- Success state
- Required field styling
- Mobile form button width

---

### TODO: Add Disabled Button State

Add disabled state rules when needed.

Possible direction:

```html
opacity-50 cursor-not-allowed
```

Disabled buttons should remain readable but clearly inactive.

---

### TODO: Add Small Button / Header Button Rules

The header phone button and compact nav buttons may need their own finalized sizing rules.

Add final guidance after the header/navigation system is fully approved.

---

### TODO: Audit Existing Homepage Interactions

Review the current homepage and update any interactive element that uses hover but does not include an active or focus-visible/focus-within state.

Prioritize:

- Hero CTA buttons
- Header phone button
- Service cards
- Text link CTAs
- Award/review links
- Service area town links
- PSA CTA buttons
- Any clickable card with `group-hover:` styles

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
1280px
1440px
1536px
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
