# Master Build Process

This is the mandatory workflow for every demo website in this repository.

## Phase 0 — Do not code yet

Before touching React, Next.js, HTML or CSS, read:

1. `docs/ANTI_AI_DESIGN_RULES.md`
2. the relevant file in `reference-analysis/`
3. the relevant `demo-prompts/<category>/README.md`
4. `docs/IMAGE_LICENSING.md`

The first output should be a short design specification, not code.

## Phase 1 — Define the fictional business

Create a believable demo company with:

- name
- city/region
- exact niche
- customer type
- price position
- 4–8 services/features
- one primary conversion goal
- tone of voice
- realistic opening/booking model

Do not invent extraordinary awards, customer numbers or certifications.

## Phase 2 — Art direction

Write and freeze:

### Visual thesis
One sentence only.

### Palette
Maximum:

- 1 background family
- 1 text family
- 1 accent
- optional utility color

### Typography
Define:

- display family
- text family
- fallback stacks
- size scale
- line-height scale
- tracking behavior

### Layout grammar
Define:

- max content width
- gutters
- section spacing
- grid behavior
- image ratios
- border/radius strategy
- signature motif

### Motion budget
List only the animations that are allowed.

## Phase 3 — Image set before page composition

Find and license the images first.

Create `public/assets/ASSETS.md`.

Then classify images into:

- hero
- wide environmental
- portrait/detail
- service
- project/gallery
- optional people

The page design should react to the image set instead of forcing arbitrary images into pre-built cards.

## Phase 4 — Information architecture

Write the homepage as a content outline only.

For each section define:

- business question it answers
- content required
- visual role
- CTA, if any

Do not add a section simply because most templates have one.

## Phase 5 — Build the hero only

Implement:

- nav
- hero
- first transition below hero

Then inspect at:

- 1440px desktop
- 1024px laptop/tablet landscape
- 768px tablet
- 390px mobile

Do not continue until the hero feels bespoke.

### Hero rejection test

Reject it if it looks like:

- SaaS landing page
- generic Tailwind starter
- theme marketplace template
- hero + two buttons + floating feature cards

## Phase 6 — Build section by section

For each section:

1. implement desktop composition
2. implement mobile composition intentionally
3. remove unnecessary wrappers/cards
4. check copy specificity
5. check image crop
6. check spacing in context with the previous section

Never generate the whole homepage in one unattended pass.

## Phase 7 — Conversion layer

Verify:

- one obvious primary CTA
- repeated at sensible decision points
- phone/booking action visible on mobile where appropriate
- form fields are minimal
- proof appears close to high-friction actions
- no fake urgency

## Phase 8 — Technical quality

Minimum requirements:

- semantic HTML
- useful alt text
- keyboard navigation
- visible focus states
- reduced-motion support
- responsive images
- no layout shift caused by missing image dimensions
- good metadata
- Open Graph metadata
- sitemap/robots where applicable
- structured data suitable for the business category where truthful
- no exposed secrets
- no client-side API secrets
- forms protected against trivial spam before production

## Phase 9 — Performance

Aim for a visually rich site without careless payload.

Check:

- optimized WebP/AVIF where suitable
- lazy loading below the fold
- preload only genuinely critical fonts/assets
- minimal JS for static sections
- no animation library if CSS is sufficient
- no enormous background video by default

## Phase 10 — AI-tell audit

Before completion, search the project for:

- `gradient`
- excessive `rounded-*`
- repeated `shadow-*`
- generic `feature` card structures
- placeholder statistics
- lorem ipsum
- generic copy phrases

Then manually answer:

- What is this site's signature visual move?
- Why does the layout belong to this specific industry?
- Which section would be impossible to design properly without knowing this business?
- Is the photography doing real work?
- Does the copy sound like the operator or like a marketing generator?

If the answers are weak, redesign before polishing.

## Phase 11 — Client-swap readiness

A finished demo should be easy to customize for a real client.

Centralize:

- business name
- contact details
- service list
- opening hours
- CTA labels
- social links
- image paths
- colors where practical

The goal is that swapping client content changes the identity without breaking the composition.

## Phase 12 — Final deliverables

Each demo should include:

- working source
- its category README/build brief
- `ASSETS.md`
- setup instructions
- content/config location
- notes on which elements are intentionally custom
- screenshot checklist for desktop and mobile

Do not call a demo finished until both desktop and mobile feel designed rather than merely responsive.
