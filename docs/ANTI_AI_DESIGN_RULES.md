# Anti-AI Design Rules

These are hard constraints for every demo in this repository. The purpose is not to hide the use of AI dishonestly; it is to prevent generic model defaults from becoming the visual identity.

## 1. Forbidden default aesthetic

Do not default to:

- purple/blue gradients
- glassmorphism cards
- glowing blobs
- floating dashboard mockups
- generic 3-column feature grids
- icon-in-circle feature cards
- giant rounded rectangles everywhere
- excessive pill-shaped labels
- dark SaaS backgrounds unless the business genuinely calls for it
- fake statistics such as `500+ clients`, `10k projects`, `99% satisfaction`
- fake awards, badges or press logos
- meaningless geometric decorations
- generic stock people shaking hands
- AI-generated humans where real photography is expected
- random marquee text used only because it looks fashionable
- animation on every element

## 2. Forbidden copy patterns

Do not write generic AI/agency language such as:

- “Where innovation meets excellence”
- “Bringing your vision to life”
- “Tailored solutions for every need”
- “Your trusted partner for quality and innovation”
- “We are passionate about delivering exceptional results”
- “Experience the difference” without a concrete explanation
- “Elevate your…” as a default headline formula

Every claim must be specific enough that a competitor could plausibly disagree with it.

Bad:

> Quality craftsmanship you can trust.

Better:

> Floorboards are acclimated on-site before installation, and every room is checked for moisture before the first plank goes down.

## 3. One visual thesis per site

Before implementation, write one sentence that defines the art direction.

Examples:

- Handwerk: “Architectural editorial photography with a restrained workshop character.”
- Ferienwohnung: “Quiet luxury travel journal where photography carries more weight than UI chrome.”
- Salon: “Fashion editorial with tactile beauty imagery and confident typography.”
- Werkstatt: “Calm technical confidence, not motorsport cosplay.”

If a component does not support that thesis, remove it.

## 4. Photography is structural

Images are not filler. The layout must be designed around the available image set.

For each demo, define before coding:

- hero image orientation
- 2–3 wide environmental images
- 3–6 detail images
- optional people/team images
- preferred crop ratios
- lighting direction
- color temperature

Do not repeat the same photo in several sections merely to fill space.

## 5. Use a real spacing system

Choose a spacing scale and keep it consistent.

Recommended starting point:

`4 / 8 / 12 / 16 / 24 / 32 / 48 / 64 / 96 / 128`

Sections should not all have identical top and bottom spacing. Editorial rhythm requires variation.

## 6. Limit radii

Do not apply `border-radius: 24px` to everything.

Choose one of these approaches:

- mostly square with one signature radius
- subtle 4–8px radius
- one deliberate large-radius motif used sparingly

Images, buttons, cards and containers do not all need the same radius.

## 7. Typography must have a job

Use at most two primary type families unless there is a strong reason.

Define roles:

- display
- body
- labels/navigation
- numbers/meta

Do not use an editorial serif merely to make the site “luxury”. It must fit the brand and photography.

## 8. Avoid component soup

A page should not read as:

Hero → 3 cards → logo row → 3 cards → testimonials → FAQ → CTA.

Instead, compose sections based on the business story.

Example Handwerk flow:

Hero → proof strip → flagship project → services integrated with photography → process → selected projects → local trust → quote CTA.

## 9. Motion budget

Motion should clarify hierarchy or add tactility.

Allowed examples:

- restrained image reveal
- subtle parallax on one or two hero/project images
- text fade/translate of 8–16px
- project thumbnail hover reveal
- nav transition

Avoid:

- every section animating from a different direction
- scroll-jacking
- long preloader sequences
- cursor gimmicks on service businesses
- WebGL unless it directly serves the concept

Respect `prefers-reduced-motion`.

## 10. Mobile is not a collapsed desktop

Mobile must be designed explicitly.

Check:

- CTA reachable with thumb
- phone/booking action obvious
- images cropped intentionally
- large display type does not wrap awkwardly
- no tiny multi-column layouts
- tap targets >= 44px where practical
- forms usable without zooming

## 11. Trust must be real

Only show proof we can substantiate.

Demo mode may use clearly marked fictional placeholders, but production sites must use actual:

- reviews
- certifications
- years in business
- team names
- project counts
- warranty terms
- partner logos

Never invent them just to make the layout look complete.

## 12. Local businesses need local specificity

A strong demo should visibly feel local through:

- service area
- nearby landmarks/region references
- local materials/climate where relevant
- actual opening/booking behavior
- real-world contact patterns

Generic global copy is a major AI tell.

## 13. Conversion without desperation

Premium sites can convert strongly without covering every viewport in buttons.

Use one primary CTA label consistently. Secondary CTAs are allowed only when they represent a genuinely different action.

Examples:

- `Projekt anfragen`
- `Verfügbarkeit prüfen`
- `Termin buchen`
- `Werkstatttermin anfragen`

## 14. Quality gate

Before calling a demo finished, ask:

1. Could this homepage belong to three unrelated industries if the logo were changed? If yes, redesign it.
2. Are there any claims that could have been written without knowing the business? Rewrite them.
3. Are images merely decorating cards? Recompose around imagery.
4. Are all sections visually equal? Introduce hierarchy.
5. Is there a recognizable signature motif? If not, define one.
6. Does mobile feel intentionally designed? If not, it is not finished.
7. Would a designer immediately identify a generic Tailwind/AI component pattern? Replace it.
