# Biggs Homepage SEO + Conversion Blueprint

Updated working blueprint for the redesigned Biggs HVAC, Plumbing & Electrical homepage.

This document replaces the earlier homepage blueprint as the active planning reference for the new homepage. It keeps the same SEO and conversion strategy, but updates the section order, design direction, section names, and implementation notes to match the current `index.html` and current `DESIGN.md`.

This is a living blueprint. Update it as sections are redesigned, tested, approved, or moved.

---

## 1. Homepage Strategy Summary

The Biggs homepage should act as a local home-services hub for homeowners in the Raleigh Metro.

The page should quickly answer:

1. What does Biggs do?
2. Where does Biggs provide service?
3. Why should homeowners trust Biggs?
4. What services can the visitor choose from?
5. How can the visitor call, schedule, or learn more?

The homepage should support both conversion and SEO by linking to dedicated service pages, future service-area pages, reviews, membership content, financing/specials, and helpful homeowner resources.

---

## 2. Current Design Direction

The homepage design direction has shifted from contained, rounded card-style sections toward stronger full-width sections with clear background changes, strong brand color usage, and reusable section patterns.

### Current Design Principles

Use:

- Full-width section backgrounds
- Inner content containers with `max-w-[1540px]`
- Clean spacing between sections
- Strong Biggs Blue brand presence
- Yellow as the primary CTA and highlight color
- Dark Biggs Blue sections for trust, brand confidence, and high-impact conversion areas
- White and soft-blue sections for readable informational content
- Solid-color buttons only
- Darker solid hover states
- Active states for touch users
- Focus-visible states for keyboard users

Avoid:

- Floating trust bars
- Unnecessary rounded outer section containers
- Glowing halo effects around buttons
- Gradient buttons
- Overusing red or green outside of their intended context
- Hiding important information behind hover interactions

---

## 3. Current Homepage Section Order

This is the active homepage structure based on the current `index.html`.

| Order | Section                    | Current Status               | Design Direction                                   |
| ----- | -------------------------- | ---------------------------- | -------------------------------------------------- |
| 1     | Navigation                 | Built                        | Utility nav + main nav with strong Call Now CTA    |
| 2     | Hero                       | Built                        | Full-width dark image hero with Biggs Blue overlay |
| 3     | Homeowner Highlights       | Built                        | White reassurance section directly below hero      |
| 4     | Trust Points               | Built                        | Compact dark trust strip, no longer floating       |
| 5     | SEO Intro                  | Built                        | Local SEO H1 section with service-area support     |
| 6     | Awards                     | Built                        | Reputation proof section with awards/trust badges  |
| 7     | Core Services Grid         | Built                        | Full-width white section with service cards        |
| 8     | Why Choose Biggs           | Built                        | Dark brand feature section                         |
| 9     | Service Area               | Built                        | Local service-area section with map and town links |
| 10    | Reviews / Reputation       | Built, likely redesign later | Needs full-width redesign direction                |
| 11    | Priority Service Agreement | Built                        | Premium dark membership section                    |
| 12    | Fast Response CTA          | Future                       | Urgent need / quick call conversion                |
| 13    | About Biggs Preview        | Future                       | Local company story and trust                      |
| 14    | Specials / Financing       | Future                       | Offers, financing, cost objection handling         |
| 15    | Helpful Resources          | Future                       | Internal links to homeowner education              |
| 16    | FAQ Section                | Future                       | Long-tail SEO and objection handling               |
| 17    | Final CTA                  | Future                       | Final call/schedule conversion point               |
| 18    | Footer                     | Future                       | NAP, services, towns, legal, social, deep links    |

---

## 4. Recommended Final Homepage Order

This is the recommended order to continue following as the homepage is completed.

```text
Navigation
Hero
Homeowner Highlights
Trust Points
SEO Intro
Awards
Core Services Grid
Why Choose Biggs
Service Area
Reviews / Reputation
Priority Service Agreement
Fast Response CTA
About Biggs Preview
Specials / Financing
Helpful Resources
FAQ Section
Final CTA
Footer
```

### Reasoning

The first half of the page now prioritizes:

- Immediate conversion
- Trust reinforcement
- Local SEO clarity
- Reputation proof
- Service discovery

The lower half of the page should then finish the original conversion journey with:

- Reviews
- Membership value
- Urgent service intent
- Local company story
- Price/financing support
- Helpful content
- FAQs
- Final CTA
- Footer crawl paths

---

## 5. Global Homepage Design Rules

### Section Width

Homepage sections should usually be full-width.

Use an inner content wrapper like:

```html
<div class="mx-auto w-full max-w-[1540px] px-5 sm:px-6 md:px-8 lg:px-10">
  ...
</div>
```

or the existing project spacing pattern:

```html
px-5 md:px-10 2xl:px-20
```

### Section Backgrounds

Use background changes to create separation instead of relying on rounded outer containers.

Recommended reusable section backgrounds:

| Section Type        | Recommended Background                                     |
| ------------------- | ---------------------------------------------------------- |
| Clean content       | White                                                      |
| SEO / informational | Soft Blue to White                                         |
| Trust strip         | Biggs Blue Darkest                                         |
| Major trust feature | Dark Biggs Blue gradient section                           |
| Premium conversion  | Dark Biggs Blue feature section with subtle radial accents |
| CTA panel           | Dark Biggs Blue or White with strong yellow CTA            |

### Rounded Outer Containers

Avoid using large rounded outer containers as the primary section structure.

Large rounded panels may still be used inside sections for:

- CTA cards
- Highlight panels
- Plan cards
- Review cards
- Map cards
- Service cards

But the section itself should generally feel full-width and integrated into the page.

### Buttons

Follow the current `DESIGN.md` button system:

- Solid colors only
- No gradient buttons
- No glowing halo effects
- Use `min-h` for tap targets
- Use `hover:` for desktop polish
- Use `active:` for touch feedback
- Use `focus-visible:` for keyboard accessibility
- Use `focus-within:` for clickable cards where helpful

---

## 6. Section-by-Section Blueprint

---

# 1. Navigation

## Current Marker

```html
<!-- NAVIGATION START -->
```

## Current Status

Built.

## Purpose

Help visitors quickly call, browse services, understand the company, and navigate to important pages.

## SEO Value

Supports crawl paths to service pages, service-area pages, reviews, contact, and other major pages.

## Conversion Value

Keeps the phone CTA highly visible and reduces friction for high-intent visitors.

## Recommended Content

- Biggs logo
- Utility navigation
- Main navigation
- Core service links
- Service Area
- Reviews
- About
- Contact
- Prominent Call Now button

## Design Direction

Use the current two-tier navigation pattern:

- Utility bar for quick trust/help links
- Main nav with logo, links, and yellow phone CTA
- Keep desktop and mobile states clean and easy to use

## CTA

Primary CTA:

```text
Call Now
```

## Internal Links

- HVAC
- Plumbing
- Electrical
- Septic & Sewer
- Service Area
- About
- Reviews
- Contact

## TODO

Confirm final navigation structure once all service pages and location pages are mapped.

---

# 2. Hero

## Current Marker

```html
<!-- HERO SECTION START -->
```

## Current Status

Built.

## Purpose

Immediately communicate Biggs’ main value proposition and push high-intent users toward calling or exploring services.

## SEO Value

Introduces core services and local relevance naturally near the top of the page.

## Conversion Value

Captures visitors who are ready to call, schedule, or choose a service.

## Recommended Content

- Large visual headline
- Local home-services H1
- Supporting copy
- Service category pills or quick service labels
- Call Now CTA
- Explore Services CTA
- Residential technician/home visual

## Design Direction

Use the current full-width hero direction:

- Biggs Blue overlay
- Strong white/yellow headline hierarchy
- Residential service imagery
- Solid-color CTA buttons
- Readable mobile overlay
- No button glow effects

## CTA

Primary:

```text
Call Now
```

Secondary:

```text
Explore Services
```

## Internal Links

- Phone link
- Core Services section anchor or services page

## TODO

Confirm final hero image and final headline/H1 language before launch.

---

# 3. Homeowner Highlights

## Current Marker

```html
<!-- HOMEOWNER HIGHLIGHTS START -->
```

## Current Status

Built.

## Purpose

Quickly reassure homeowners after the hero with practical reasons to trust and contact Biggs.

## SEO Value

Supports helpful, people-first content by highlighting service benefits and customer concerns.

## Conversion Value

Reduces hesitation before users reach deeper service content.

## Recommended Content

Current/highly recommended highlights:

- 24/7 Emergency Help
- Same-Day Availability
- Financing Available
- Upfront Pricing

## Design Direction

Use as a full-width white or very light section directly under the hero.

Design should feel:

- Clean
- Compact
- Trustworthy
- Easy to scan
- Benefit-driven

## CTA

No primary CTA required.

This section supports the hero CTA rather than competing with it.

## Internal Links

Optional future links:

- Emergency service page
- Financing page
- Reviews page

## TODO

Confirm whether each highlight is legally/operationally accurate before launch.

---

# 4. Trust Points

## Current Marker

```html
<!-- TRUST POINTS START -->
```

## Current Status

Built.

## Important Update

This is no longer a “Floating Trust Bar.”

Use the name:

```text
Trust Points
```

or:

```text
Compact Trust Strip
```

Do not refer to this as floating in future planning unless the design changes again.

## Purpose

Give quick credibility proof immediately after the hero and homeowner highlights.

## SEO Value

Supports trust, experience, and local business credibility.

## Conversion Value

Reassures visitors before they reach service choices and longer content.

## Recommended Content

Current/highly recommended trust points:

- Locally Owned
- Since 1996
- Licensed & Insured
- Satisfaction Guaranteed

Possible future additions:

- Background Checked
- 24/7 Emergency Service
- Factory Certified
- Google Rating

## Design Direction

Use a compact full-width dark blue strip.

Recommended style:

- `bg-biggs-blue-darkest`
- White text
- Small icon or badge treatments
- Tight vertical spacing
- No floating layout
- No large rounded outer container

## CTA

None.

## Internal Links

Optional future links:

- About page
- Reviews page
- Licensing/trust page if created

## TODO

Confirm exact trust claims and whether “Satisfaction Guaranteed” has final approved wording.

---

# 5. SEO Intro

## Current Marker

```html
<!-- SEO INTRO SECTION START -->
```

## Current Status

Built.

## Purpose

Provide a clear local SEO-focused introduction that explains what Biggs does and where Biggs serves.

## SEO Value

This is one of the most important homepage SEO sections.

It should support:

- Raleigh HVAC services
- Raleigh plumbing services
- Raleigh electrical services
- Raleigh septic/sewer services
- Raleigh Metro service area
- Wake and Johnston County relevance where appropriate

## Conversion Value

Confirms the visitor is in the right place and that Biggs handles multiple home service needs.

## Recommended Content

Include:

- Search-focused H1
- Short supporting paragraph
- Core services
- Raleigh Metro language
- Service area support
- Map or local visual element

## Design Direction

Use a full-width soft-blue/white section.

Recommended feel:

- SEO-friendly but not plain
- Strong heading hierarchy
- Local map or service-area visual
- Light background to create contrast after dark trust strip
- No rounded outer section container

## CTA

Optional:

```text
View Service Area
```

or:

```text
Explore Services
```

## Internal Links

- Core service pages
- Service Area section
- Future city/location pages

## TODO

Finalize H1 and supporting paragraph after keyword review.

---

# 6. Awards

## Current Marker

```html
<!-- AWARDS SECTION START -->
```

## Current Status

Built.

## Purpose

Show third-party proof and trust signals before users reach the services grid.

## SEO Value

Supports reputation, credibility, and trustworthiness.

## Conversion Value

Strengthens confidence early in the page.

## Recommended Content

Current/highly recommended awards:

- Google 4.9 rating
- BBB A+ rating
- Nextdoor award
- Lennox award

## Design Direction

Use a clean full-width white section.

Design should feel:

- Credible
- Simple
- Not cluttered
- Badge-focused
- Balanced on mobile and desktop

## CTA

Usually none.

Optional:

```text
Read Reviews
```

## Internal Links

- Reviews page
- BBB profile if appropriate
- Google review profile if appropriate

## TODO

Confirm final award assets, review rating, and whether each award/badge can be linked.

---

# 7. Core Services Grid

## Current Marker

```html
<!-- Core Services Grid Section -->
```

## Current Status

Built.

## Purpose

Help visitors quickly choose the service they need.

## SEO Value

Provides strong internal links to core service pages and supports topical authority.

## Conversion Value

Helps homeowners self-select and move toward relevant service content.

## Recommended Content

Current/highly recommended services:

- Heating
- Air Conditioning
- HVAC
- Plumbing
- Electrical
- Drain Cleaning
- Water Filtration
- Septic Services

Possible future additions:

- Water Heaters
- Sewer Services
- Generators, only if still active
- Commercial Services, only if part of final site structure

## Design Direction

Use a full-width white section with service cards.

Cards should include:

- Service icon
- Service title
- Short benefit-driven description
- Visible arrow or CTA cue
- Full-card link behavior
- `active:` and `focus-within:` interaction states

Avoid:

- Hidden hover-only content
- Overly long descriptions
- Glow effects
- Inconsistent icon styles

## CTA

Primary/secondary CTA:

```text
View All Services
```

## Internal Links

Each service card should link to the corresponding dedicated service page.

## TODO

Confirm final service list and exact URLs.

---

# 8. Why Choose Biggs

## Current Marker

```html
<!-- WHY CHOOSE BIGGS SECTION -->
```

## Current Status

Built.

## Purpose

Explain why Biggs is the right local choice compared with other providers.

## SEO Value

Adds unique brand content, local relevance, experience signals, and trust differentiators.

## Conversion Value

Converts comparison shoppers who need reasons to choose Biggs.

## Recommended Content

Include:

- Local experience
- Since 1996
- Multi-trade convenience
- Licensed and insured
- Professional technicians
- Clear communication
- Upfront pricing or honest recommendations
- Family-owned/local service values

## Design Direction

Use a full-width dark Biggs Blue feature section.

Recommended feel:

- Premium
- Trustworthy
- Strong
- Brand-forward
- Easy to scan

Use dark cards or feature blocks inside the section, but avoid a single large rounded outer container that makes the whole section feel boxed in.

## CTA

Primary:

```text
Call Biggs Today
```

Secondary:

```text
Learn More About Biggs
```

## Internal Links

- About page
- Reviews page
- Contact page

## TODO

Confirm final differentiators and avoid claims that cannot be verified.

---

# 9. Service Area

## Current Marker

```html
<!-- SERVICE AREA SECTION -->
```

## Current Status

Built.

## Purpose

Confirm whether Biggs serves the visitor’s area.

## SEO Value

Supports local relevance for Raleigh Metro, Wake County, Johnston County, and surrounding towns.

## Conversion Value

Reassures visitors that Biggs can come to their home.

## Recommended Content

Include:

- Map visual
- Raleigh Metro service language
- Wake County and Johnston County references where natural
- Town list or town chips
- “Don’t see your town?” reassurance
- Call CTA

## Design Direction

Use a full-width white or light section.

The map and town list can use cards/panels inside the section, but the section itself should remain full-width.

Avoid overloading the section with too many town names if it harms readability.

## CTA

Primary or secondary:

```text
Call for Details
```

or:

```text
View Service Area
```

## Internal Links

Future:

- Raleigh service area page
- Garner service area page
- Clayton service area page
- Cary service area page
- Apex service area page
- Fuquay-Varina service area page
- Wake Forest service area page
- Johnston County / Smithfield area pages if created

## TODO

Confirm final town list and future city page strategy.

---

# 10. Reviews / Reputation

## Current Marker

```html
<!-- REVIEWS / REPUTATION SECTION -->
```

## Current Status

Built, but likely redesign later.

## Important Design Update

The current rounded container/card-style direction may not match the newer full-width section design system.

When redesigned, this section should move toward a full-width background treatment with internal cards instead of one large rounded outer section container.

## Purpose

Validate Biggs’ claims with customer proof and reputation signals.

## SEO Value

Supports local trust, reputation, and experience signals.

## Conversion Value

Builds confidence before the visitor chooses to call or schedule.

## Recommended Content

Include:

- Google rating visual
- Review snippets
- Customer names or initials, if available/approved
- Service context if available
- BBB trust mention if appropriate
- Link to more reviews

## Design Direction

Recommended redesign direction:

- Full-width white or soft-blue section
- Strong headline and intro copy
- Review cards inside the section
- Google rating card or summary panel
- Optional BBB proof card
- No large rounded outer container containing the entire section
- Keep cards readable and not overly dense

## CTA

Primary/secondary:

```text
Read More Reviews
```

Optional:

```text
Call Now
```

## Internal Links

- Reviews page
- Google review profile
- BBB profile if appropriate

## TODO

Redesign this section to match the current full-width section direction.

Confirm final review rating, review count, review snippets, and review source links.

---

# 11. Priority Service Agreement

## Current Marker

```html
<!-- PRIORITY SERVICE AGREEMENT SECTION -->
```

## Current Status

Built.

## Purpose

Promote recurring maintenance, long-term customer value, and the benefits of membership.

## SEO Value

Adds service depth around HVAC maintenance, plumbing inspection, electrical inspection, and whole-home care.

## Conversion Value

Creates higher lifetime-value leads and gives homeowners a reason to stay connected with Biggs.

## Recommended Content

Include:

- Priority Service Agreement
- Whole-home coverage
- HVAC maintenance
- Plumbing inspection
- Electrical inspection
- Repair savings
- Priority scheduling
- Waived diagnostic fee if accurate and properly qualified
- Membership CTA

## Design Direction

Use a premium dark Biggs Blue feature section.

This can be more expressive than standard sections because PSA is a major conversion area.

Use:

- Dark blue background
- Yellow highlights
- Plan cards or benefit cards
- Clear CTA area
- Solid-color buttons only
- No button glow effects

## CTA

Primary:

```text
View Membership Plans
```

Secondary:

```text
Call (919) 329-8288
```

## Internal Links

- Membership / PSA page
- Contact page
- Phone link

## TODO

Confirm all PSA benefits and disclaimers.

---

# 12. Fast Response CTA

## Current Marker

Future section.

Recommended future marker:

```html
<!-- FAST RESPONSE CTA SECTION START -->
```

## Current Status

Future.

## Purpose

Capture urgent service intent after the visitor has seen services, trust, reviews, and membership.

## SEO Value

Supports urgent service language where accurate, without overloading the hero.

## Conversion Value

Pushes immediate-need visitors toward calling.

## Recommended Content

Include short urgent prompts such as:

- No AC?
- No heat?
- Plumbing issue?
- Electrical concern?
- Septic problem?
- Need help fast?

Use only accurate emergency/response language.

## Design Direction

Recommended full-width section style:

- Dark Biggs Blue background
- Strong yellow CTA
- Compact service icons or service labels
- Short copy
- Phone-first conversion
- No large rounded outer container
- Optional internal dark panel if needed

## CTA

Primary:

```text
Call Now
```

Secondary:

```text
Schedule Service
```

## Internal Links

- Phone link
- Contact page
- Emergency service page if created

## TODO

Confirm whether Biggs wants a dedicated emergency service page and final 24/7 wording.

---

# 13. About Biggs Preview

## Current Marker

Future section.

Recommended future marker:

```html
<!-- ABOUT BIGGS PREVIEW SECTION START -->
```

## Current Status

Future.

## Purpose

Humanize the company and reinforce local trust.

## SEO Value

Supports experience, local history, and business clarity.

## Conversion Value

Builds trust with homeowners who want to know who they are hiring.

## Recommended Content

Include:

- Family-owned/local company language
- Since 1996
- Raleigh Metro service
- Big Enough to Serve, Small Enough to Care
- Technician/team/truck/home image
- Short story, not a long About page duplicate

## Design Direction

Recommended full-width section style:

- White or soft-blue background
- Split layout with copy and image
- Strong local trust headline
- Small trust badges or proof points
- Link to full About page

## CTA

Secondary:

```text
Learn More About Biggs
```

Optional primary:

```text
Call Now
```

## Internal Links

- About page
- Reviews page
- Contact page

## TODO

Confirm final About page positioning and preferred company story.

---

# 14. Specials / Financing

## Current Marker

Future section.

Recommended future marker:

```html
<!-- SPECIALS FINANCING SECTION START -->
```

## Current Status

Future.

## Purpose

Address price objections, seasonal offers, and financing needs.

## SEO Value

Can support offer-based and seasonal search intent when content is accurate and updated.

## Conversion Value

Reduces cost hesitation for large-ticket services.

## Recommended Content

Possible content:

- Current monthly special
- Financing available
- Equipment offers
- Maintenance promos
- Seasonal HVAC or IAQ offer
- Link to specials page
- Link to financing page

## Design Direction

Recommended full-width section style:

Option 1:

- White section with two cards: Specials + Financing

Option 2:

- Soft-blue section with featured promo panel

Option 3:

- Dark CTA panel inside a light section

Use yellow CTA for the main offer action. Do not make the entire section look like a coupon unless that is the goal.

## CTA

Primary:

```text
View Current Specials
```

Secondary:

```text
View Financing Options
```

## Internal Links

- Specials page
- Financing page
- Contact page

## TODO

Confirm whether Specials and Financing should be one combined section or two separate sections.

Confirm final financing provider language and compliance/disclaimer needs.

---

# 15. Helpful Resources

## Current Marker

Future section.

Recommended future marker:

```html
<!-- HELPFUL RESOURCES SECTION START -->
```

## Current Status

Future.

## Purpose

Serve research-stage homeowners and create internal links to helpful content.

## SEO Value

Supports informational SEO, long-tail searches, and topical authority.

## Conversion Value

Keeps early-stage visitors engaged and routes them to deeper content.

## Recommended Content

Include 3 helpful resources, such as:

- Seasonal HVAC guide
- Plumbing maintenance guide
- Electrical safety guide
- Septic/sewer homeowner guide
- Water filtration guide
- Indoor air quality guide

## Design Direction

Recommended full-width section style:

- White or soft-blue background
- Card grid
- Category labels
- Short summaries
- Clear “Read More” or “View Resources” CTA
- Cards should look clickable by default

## CTA

Secondary:

```text
View Resources
```

## Internal Links

- Blog/resource pages
- Related service pages

## TODO

Confirm whether the new site will include a blog, resources section, or guide library at launch.

---

# 16. FAQ Section

## Current Marker

Future section.

Recommended future marker:

```html
<!-- FAQ SECTION START -->
```

## Current Status

Future.

## Purpose

Answer common questions, reduce friction, and support long-tail search.

## SEO Value

Supports question-based searches and can support FAQ schema when implemented correctly.

## Conversion Value

Removes objections before calling or scheduling.

## Recommended Content

Recommended homepage FAQs:

1. What services does Biggs provide?
2. What areas does Biggs serve?
3. Do you offer emergency service?
4. Do you service HVAC, plumbing, electrical, and septic systems?
5. Do you offer maintenance plans?
6. Are you licensed and insured?
7. What if I do not see my town listed?
8. How do I schedule service?

## Design Direction

Recommended full-width section style:

- White or soft-blue background
- Accordion or clean stacked Q&A
- Short answers
- CTA at the end
- Keep accessible keyboard behavior if using accordion

## CTA

Secondary:

```text
Call for Details
```

or:

```text
Schedule Service
```

## Internal Links

- Service Area
- Contact
- Membership
- Relevant service pages

## TODO

Confirm final FAQ answers and whether FAQ schema will be implemented.

---

# 17. Final CTA

## Current Marker

Future section.

Recommended future marker:

```html
<!-- FINAL CTA SECTION START -->
```

## Current Status

Future.

## Purpose

Give bottom-of-page visitors one final clear action.

## SEO Value

Reinforces local service relevance and core offerings near the bottom of the page.

## Conversion Value

Captures visitors after they have reviewed services, trust, proof, FAQs, and offers.

## Recommended Content

Include:

- Strong headline
- Raleigh Metro service mention
- Core service mention
- Phone CTA
- Schedule CTA
- Trust reminder

Example direction:

```text
Ready to schedule HVAC, plumbing, electrical, or septic service?
Call Biggs today for trusted home service across the Raleigh Metro.
```

## Design Direction

Recommended full-width section style:

- Dark Biggs Blue background
- Yellow primary CTA
- White outline secondary CTA
- Short, direct copy
- No button glows
- No gradient buttons

## CTA

Primary:

```text
Call Now
```

Secondary:

```text
Schedule Service
```

## Internal Links

- Phone link
- Contact page

## TODO

Confirm whether “Schedule Service” should link to a contact page, scheduling form, or external booking tool.

---

# 18. Footer

## Current Marker

Future section.

Recommended future marker:

```html
<!-- FOOTER START -->
```

## Current Status

Future.

## Purpose

Provide complete business information, navigation, service links, service area links, and legal/social links.

## SEO Value

Supports crawlability, NAP consistency, service linking, location context, and structured data support.

## Conversion Value

Gives visitors another chance to call, browse, or confirm service details.

## Recommended Content

Include:

- Biggs logo
- Business name
- Phone number
- Address or service-area business location info
- Hours
- Core services
- Service area/town links
- Social links
- Legal links
- License info if required
- Copyright
- Final Call Now CTA

## Design Direction

Recommended full-width section style:

- Dark Biggs Blue or very dark footer background
- Organized columns
- Clear service links
- Clear town/location links
- Strong phone visibility
- Avoid clutter
- Use white text with good contrast

## CTA

Primary:

```text
Call Now
```

## Internal Links

- All important service pages
- Service area pages
- About
- Reviews
- Contact
- Membership
- Specials
- Financing
- Resources

## TODO

Confirm final footer link map, NAP details, business hours, social links, and legal pages.

---

## 7. Homepage SEO Checklist

### On-Page SEO

- One clear homepage H1
- Keyword-focused title tag
- Helpful meta description
- Descriptive H2s
- Clear service-related copy
- Optimized image alt text
- Semantic HTML
- Logical heading order

### Local SEO

- Mention Raleigh Metro naturally
- Mention Wake County and Johnston County where appropriate
- Include core service towns
- Add service-area reassurance
- Link future city pages from service-area content
- Keep NAP consistent

### Internal Linking

Homepage should link to:

- HVAC page
- Heating page
- Air Conditioning page
- Plumbing page
- Electrical page
- Septic/Sewer page
- Drain Cleaning page
- Water Filtration page
- Service Area page
- Reviews page
- About page
- Membership page
- Specials page
- Financing page
- Contact page
- Helpful resources

### Trust Signals

Include where accurate:

- Since 1996
- Locally owned
- Licensed and insured
- Google rating
- BBB A+ rating
- Nextdoor award
- Lennox award
- Customer review snippets
- Professional technician imagery

### Conversion

Use conversion points:

- Header phone button
- Hero CTA
- Services CTA
- Service Area CTA
- Reviews CTA
- PSA CTA
- Fast Response CTA
- Final CTA
- Footer CTA

### Structured Data

Recommended:

- LocalBusiness schema
- Organization schema if appropriate
- FAQ schema only for visible FAQs
- Review/rating schema only if compliant and accurate
- Breadcrumb schema if page structure supports it

### Performance

- Compress images
- Use responsive image sizes
- Lazy-load below-the-fold media
- Avoid unnecessary scripts
- Keep HTML semantic and clean
- Keep CSS build optimized

### Mobile UX

- Stack sections cleanly
- Keep CTAs thumb-friendly
- Use `min-h` on buttons
- Use `active:` states for touch feedback
- Avoid hover-only content
- Make town chips and service cards easy to tap

---

## 8. Remaining Homepage Build Priorities

Recommended next build order:

1. Redesign Reviews / Reputation to match the current full-width section direction.
2. Build Fast Response CTA.
3. Build About Biggs Preview.
4. Build Specials / Financing.
5. Build Helpful Resources.
6. Build FAQ Section.
7. Build Final CTA.
8. Build Footer.
9. Review full homepage flow from top to bottom.
10. Final SEO, accessibility, performance, and responsive pass.

---

## 9. Known Design System Notes to Carry Forward

Use these rules when building all remaining homepage sections:

- Full-width sections are preferred.
- Inner content should use consistent max-width and padding.
- Use white, soft-blue, dark Biggs Blue, and premium dark feature sections intentionally.
- Do not use gradients for buttons.
- Do not use glowing halo effects around buttons.
- Use solid button fills.
- Use darker solid hover states.
- Use `active:` for touch feedback.
- Use `focus-visible:` for keyboard accessibility.
- Use `focus-within:` on clickable cards where helpful.
- Do not hide important information behind hover.
- Use Biggs Green primarily for Septic/Sewer content.
- Use Biggs Red primarily for urgency, emergency, heating, or high-attention moments.
- Use Biggs Yellow for the primary CTA and high-value highlights.
- Use Biggs Blue as the dominant brand color.

---

## 10. Open Questions

Fill these in as the site plan becomes more complete.

### Content Questions

- What is the final homepage H1?
- What is the final primary CTA label: Call Now, Schedule Service, or Request Service?
- What is the final emergency service wording?
- What towns should be listed on the homepage?
- Which towns will receive dedicated location pages?
- What are the final PSA benefits and disclaimers?
- What are the final financing details?
- What specials should appear at launch?
- Will the site launch with resources/blog pages?
- What FAQs should appear on the homepage?
- What final review snippets are approved?

### Design Questions

- Should Reviews / Reputation be white, soft-blue, or dark blue?
- Should Fast Response CTA be a compact strip or a larger dark feature section?
- Should About Biggs Preview include technician, truck, family/business, or home imagery?
- Should Specials / Financing be one section or two?
- Should Helpful Resources appear on the homepage at launch?
- Should the final CTA include a form link or only phone/contact links?

### Technical Questions

- Will Schedule Service link to a form, contact page, or scheduling tool?
- Will FAQ schema be implemented?
- Will LocalBusiness schema be placed in the homepage template?
- Will city pages exist at launch or later?
- Will review/rating schema be used, and if so, how will compliance be handled?

---
