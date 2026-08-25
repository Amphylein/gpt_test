# ART_DIRECTION — KANTE & KERN

Status: Phase 2 / Handwerk demo
Date: 2026-08-25

## Fictional business

**KANTE & KERN** is a fictional Schreinerei / Innenausbau company for the Nordschwarzwald. The demo must feel like a real 8–25 person regional workshop, not a design studio pretending to be a carpenter.

Core offer:

- Innenausbau
- Einbaumöbel
- Küchen
- Treppen

Region used in demo copy:

- Freudenstadt
- Baiersbronn
- Horb
- Calw
- surrounding Nordschwarzwald

Primary CTA: **Projekt anfragen**

No precise fake address, awards, certifications, employee names, ratings, customer counts or years in business are used.

---

## Visual thesis

> **Architectural editorial photography with workshop tactility: quiet confidence, precise proportions and visible material honesty.**

The page should feel closer to a well-designed architecture journal than to a typical German Handwerker template, while still making services, region and contact obvious within seconds.

It must not drift into generic beige luxury branding. The workshop side of the business is deliberately visible.

---

## Brand idea

The name `KANTE & KERN` is based on two physical woodworking ideas rather than a vague lifestyle word:

- **Kante** = precision, finish, geometry
- **Kern** = material, construction, substance

This creates a useful copy system around exact edges, honest materials and rooms that are planned from the inside out.

The wordmark is text-only. No saw blade, tree, roof, hammer or monogram icon.

---

## Signature motif

Use **project / section numbers only**:

`01`, `02`, `03`, ...

They appear as small technical markers beside editorial sections. They are not badges or decorative pills.

Do not add ruler graphics, joinery line intersections or coordinate gimmicks on top of this. One motif is enough.

---

## Palette

```text
Bone / page:       #F1EEE8
Paper / light:     #FAF8F4
Ink:               #171715
Graphite:          #4A4945
Timber accent:     #9A6847
Fine line:         #C9C4BB
Dark workshop:     #23211E
```

Rules:

- no gradients
- timber accent is used sparingly
- photography provides most of the warmth
- no black/yellow construction cliché
- dark sections are allowed only when tied to workshop/process content

---

## Typography

Two-family maximum.

### Display

**Newsreader** — used selectively for large editorial lines and one or two statements.

Reason: it has enough character to create an authored feeling without turning the carpentry business into a fashion label.

### UI / body

**Manrope** — navigation, body, labels, forms and technical metadata.

Reason: precise, contemporary and readable.

Both are available under open-source font licenses through Google Fonts. Production may self-host later.

### Type behavior

- large headlines use tight line-height and restrained width
- body copy rarely exceeds 65 characters per line
- labels are small and uppercase only where they function as metadata
- no giant `clamp(8rem)` headline merely for effect
- mobile headline is separately tuned instead of simply shrinking desktop

---

## Grid

Desktop:

- max content width: 1420px
- 12-column mental model
- 24–32px gutters depending on viewport
- hero: text approximately 5 columns, image approximately 7 columns
- project layouts intentionally vary: 7/5, 5/7, full-width interruption

Tablet:

- 8-column mental model
- project layouts simplify before they become cramped

Mobile:

- 4-column mental model
- 20px side padding
- hero becomes text → image, not a squeezed split screen
- service rows retain hierarchy with number / title / description

---

## Image direction

The finished-work images should share:

- warm natural wood
- contemporary residential interiors
- neutral architecture
- clean lines
- little visual clutter
- mostly natural / soft interior light

The workshop images may be rougher and darker. That contrast is intentional: **finished precision vs. workshop reality**.

Avoid:

- rustic cabin imagery
- hyper-luxury marble mansions
- construction helmets as generic decoration
- staged handshake photos
- obvious tool-brand advertising
- mixing ten unrelated interior styles

---

## Homepage narrative

### 01 — Hero

Message:

> **Innenausbau, der sich dem Raum anpasst. Nicht umgekehrt.**

Support:

> Schreinerei für Einbauten, Küchen, Treppen und Einzelmöbel im Nordschwarzwald.

The right side is one strong finished interior image. No floating cards over the image.

### Proof strip

A narrow, rule-based metadata transition:

`Innenausbau · Einbaumöbel · Küchen · Treppen`

`Freudenstadt · Baiersbronn · Horb · Calw`

No fake years, project counts or review scores.

### 02 — Flagship project

One large interior is treated as an editorial spread. The project is explicitly a demo project in source data; polished copy does not pretend it is a real client reference.

### 03 — Leistungen

Four services as a typographic list, not four cards. Each row should feel useful even without an icon.

### 04 — Ablauf

Four practical stages:

1. Kennenlernen
2. Aufmaß & Entwurf
3. Fertigung
4. Montage & Übergabe

Language must explain what actually happens.

### 05 — Arbeiten

Asymmetric project layout with varied ratios. No Pinterest masonry wall.

### 06 — Material / craft

Signature statement:

> **Das Maß kommt vor der Maschine.**

This section combines close-up measurement/sanding photography with concise material/process copy.

### 07 — Region + enquiry

Natural regional language, then a short project form.

---

## Motion

Motion budget is deliberately low.

Allowed:

- 8–14px reveal on text blocks
- image opacity / slight scale settle once per section
- nav state change after scrolling
- service underline / text response on hover
- mobile menu transition

Forbidden:

- scroll-jacking
- cursor replacement
- every section flying in from a different direction
- continuous parallax
- autoplay video hero

`prefers-reduced-motion` must disable non-essential motion.

---

## Copy constraints

Tone:

- calm
- concrete
- technically literate
- regional without dialect cosplay
- no sales-agency vocabulary

Examples of desired language:

- `Einbauten werden für die Wand geplant, die tatsächlich da ist – nicht für das Idealmaß im Katalog.`
- `Aufmaß, Material und Beschläge werden vor Fertigungsbeginn festgelegt.`
- `Wir planen im Nordschwarzwald und montieren im vereinbarten Projektgebiet.`

Never use:

- `Ihre Vision, unsere Leidenschaft`
- `Qualität trifft Innovation`
- `maßgeschneiderte Lösungen für jeden Anspruch`
- `Wir machen Wohnträume wahr`
- `Tradition trifft Moderne`

---

## Anti-AI rejection test

Redesign if any of the following is true:

1. Replacing the logo would make the hero plausible for a SaaS company.
2. The page contains a row of three generic benefit cards.
3. There are decorative icons with no informational function.
4. Every section has the same spacing and width.
5. Every image has the same aspect ratio.
6. Copy could be used unchanged by a roofer, consultant or marketing agency.
7. Wood is represented through fake textures rather than real project photography.
8. The site uses fake social proof to make the layout feel complete.
9. Mobile is only desktop stacked vertically.

---

## Phase 2 checkpoint goal

The first implementation should already answer, within five seconds:

- what the business does
- where it works
- what visual quality level it represents
- what the visitor should do next

The test is not whether it looks `modern`. The test is whether it feels **authored and specific**.
