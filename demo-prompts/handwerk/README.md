# Demo Build Prompt — Handwerk

Use this file as the execution brief for ChatGPT or Codex when the Handwerk demo is built.

## Mission

Create an **original, high-end but believable regional Handwerk website** that does not look AI-generated or template-derived.

The first demo should be a fictional premium **Schreinerei / Innenausbau / Holzmanufaktur** in southern Germany. It must feel like a real 8–25 person business with excellent work, not a luxury architecture corporation.

The demo must be strong enough that a real carpenter could keep most of the composition and replace only brand data, photos, projects, services and copy.

## Required reading before coding

Read these files completely:

1. `docs/ANTI_AI_DESIGN_RULES.md`
2. `docs/MASTER_BUILD_PROCESS.md`
3. `docs/IMAGE_LICENSING.md`
4. `reference-analysis/handwerk.md`

Do not write implementation code before summarizing the resulting art direction.

# Phase 1 — Define the fictional business

Create a believable demo identity with:

- German business name that is not a real local company discovered in search
- region such as Schwarzwald / Freudenstadt / Ortenau, but avoid a precise fake street address unless clearly marked demo
- focus: custom interior woodwork, built-ins, stairs, kitchens or furniture
- 4 core services maximum on the homepage
- one distinctive method/process
- one primary CTA: `Projekt anfragen`

Do not invent:

- awards
- association memberships
- employee names presented as real people
- customer counts
- Google ratings
- certifications

For demo trust modules, label unverifiable values as placeholders in data/config, not in polished production copy.

# Phase 2 — Art direction first

Before coding, output a file or section called `ART_DIRECTION` defining:

## Visual thesis

Target direction:

> Architectural editorial photography with workshop tactility: quiet confidence, precise grid, warm materials, zero construction-template clichés.

You may improve this sentence, but keep one coherent direction.

## Palette

Use a restrained palette derived from real wood/workshop photography.

Recommended starting concept:

- warm off-white background
- near-black charcoal text
- one muted timber/clay accent
- optional cool utility grey

No gradients.

## Typography

Use two families maximum.

Suggested roles:

- display: characterful but restrained serif or humanist grotesk
- body/UI: highly readable grotesk

Do not use a luxury serif simply because the business uses wood.

## Grid

Define:

- max width around 1280–1440px
- desktop 12-column logic
- intentionally asymmetric project compositions
- mobile stack designed separately
- image ratios chosen before components

## Signature motif

Choose exactly one:

- small project numbers (`01`, `02`, `03`)
- measurement/ruler-inspired micro labels
- thin joinery-like line intersections

Do not use all three.

# Phase 3 — Source legal real photography

Before building the page, find a coherent set of freely reusable images according to `docs/IMAGE_LICENSING.md`.

Required set:

- 1 hero image: exceptional finished interior / custom wood installation
- 2 wide completed-project images
- 2 detail shots of wood/joinery
- 1 workshop/craft process image
- 1 optional person-at-work image where the face is not falsely presented as the owner

Create `public/assets/ASSETS.md` with source and license data.

Do not use imagery from White Maple, Nehalem, Schmitt, Never Stop Building or Kato.

# Phase 4 — Homepage architecture

Do not use generic card sections.

Build this story:

## 1. Navigation

- small wordmark
- `Arbeiten`
- `Leistungen`
- `Ablauf`
- `Manufaktur`
- `Kontakt`
- primary CTA `Projekt anfragen`

## 2. Hero

Must contain:

- one large project image
- specific regional/niche headline
- one short line of supporting copy
- one CTA

Avoid two-button SaaS hero.

The hero should communicate within five seconds:

- custom wood/interior work
- region
- premium craftsmanship

## 3. Proof transition

Use a narrow text/metadata strip, not cards.

Possible content types:

- `Innenausbau · Möbel · Treppen`
- region
- project model

No fake statistics.

## 4. Flagship project

Treat this like an editorial spread:

- oversized image
- project name
- short location/type metadata
- 2–3 sentences
- optional detail image

## 5. Services

Maximum four services.

Do not create four identical icon cards.

Use alternating editorial rows or a structured list with image response/hover on desktop.

## 6. Process

4 steps maximum:

1. Kennenlernen
2. Aufmaß & Entwurf
3. Fertigung
4. Montage & Übergabe

Explain what makes each step concrete.

## 7. Selected work

Use varied image ratios and project names.

No masonry grid that looks like Pinterest by default.

## 8. Material / craft detail

One tactile section explaining the demo company's approach to materials, finish or joinery.

This section should be the site's signature business-specific section.

## 9. Trust

Use a clearly fictional/demo testimonial only if marked in source data as placeholder. Prefer process/warranty language over fake social proof.

## 10. Region

Explain the service radius naturally.

## 11. Enquiry

Short project form:

- name
- email/phone
- project type
- location/postcode
- desired timeframe
- short description

Optional budget range only if it fits the positioning.

# Phase 5 — Copy rules

German copy only for the demo.

Tone:

- concise
- knowledgeable
- understated
- no agency language
- no exaggerated superlatives

Never write:

- „Ihre Vision, unsere Leidenschaft“
- „Qualität trifft Innovation“
- „maßgeschneiderte Lösungen für jeden Anspruch“

Write concrete craft language instead.

# Phase 6 — Implementation rules

Preferred technical outcome:

- TypeScript
- componentized but not over-componentized
- semantic HTML
- responsive images
- local data/config for easy client swap
- no API secrets
- accessible navigation and forms
- reduced motion support

Tailwind is allowed only if it does not result in obvious Tailwind component aesthetics. Plain CSS/CSS Modules is equally acceptable.

# Phase 7 — Build in checkpoints

Do not generate the entire website in one pass.

Checkpoint A:

- nav
- hero
- first transition

Stop and inspect.

Checkpoint B:

- flagship project
- services

Stop and inspect hierarchy.

Checkpoint C:

- process
- work
- craft section

Stop and inspect rhythm.

Checkpoint D:

- contact
- mobile
- accessibility
- performance

# Phase 8 — Mandatory rejection tests

Reject and redesign if:

- there is a 3-card “Warum wir” row
- icons are used as visual filler
- every container has rounded corners
- the hero could belong to a SaaS company
- the copy could describe any carpenter
- the page contains fake numbers
- the photography styles do not match
- mobile is simply stacked desktop

# Definition of done

The site is done only when:

- it has one recognizable visual signature
- real licensed images are documented
- first viewport feels custom
- services are clear
- project proof dominates generic claims
- mobile CTA is obvious
- content can be swapped for a client through a central data layer
- no reference site has been copied directly
