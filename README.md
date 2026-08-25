# GPT Test — High-End Local Business Website Research

This repository is a design-research and implementation playbook for building demo websites that **do not look AI-generated**.

The project starts with four commercial niches:

1. Handwerk / trades
2. Ferienwohnungen / vacation rentals
3. Friseur & Kosmetikstudio / hair & beauty
4. KFZ-Werkstatt / auto repair

## Goal

The goal is **not** to clone reference websites. The goal is to identify the decisions that make excellent real-world websites feel intentional — hierarchy, photography, typography, information architecture, trust, copy, motion and conversion flow — and then synthesize those principles into original demo sites.

A successful demo should be strong enough that a prospective client can realistically say:

> “I would keep roughly 90% of this and replace the demo content with my own photos, logo, services and details.”

## Repository map

- `reference-analysis/` — current live-site research and category-specific conclusions
- `demo-prompts/` — detailed build briefs/prompts for ChatGPT or Codex
- `demos/` — concrete Phase-2 demo implementations
- `docs/ANTI_AI_DESIGN_RULES.md` — hard rules against common AI/template aesthetics
- `docs/IMAGE_LICENSING.md` — rules for legally reusable demo photography
- `docs/RESEARCH_METHOD.md` — how references are selected and audited
- `docs/MASTER_BUILD_PROCESS.md` — shared production process for every future demo

## Phase 2 status

### Handwerk — KANTE & KERN

Path: `demos/handwerk-kante-kern/`

The first concrete demo is a fictional Schreinerei / Innenausbau business for the Nordschwarzwald.

Implemented so far:

- original art direction
- complete German homepage composition
- mobile-specific responsive design
- curated real Pexels photography set
- exact source/license manifest
- Windows + Linux image download scripts
- restrained motion and accessible reduced-motion fallback
- no fake reviews, statistics, awards or staff identities
- client-swap and ChatGPT/Codex modification instructions

The next meaningful step is browser/device QA rather than adding more sections.

## Research snapshot

Initial research date: **2026-08-25**.

The reference sites were selected from current live company websites and recent 2026 design roundups, then judged again on their own merits. A site appearing in a design roundup is not treated as proof that it is good. We only keep patterns that make sense for the actual business goal.

## Core principle

**AI is the implementation engine, not the art director.**

Before code is written, every demo must define its own:

- business positioning
- visual thesis
- photography direction
- type system
- spacing rhythm
- layout grammar
- conversion goal
- voice
- interaction budget
- explicit list of forbidden patterns

Only after those decisions are frozen should ChatGPT/Codex implement the site.

## Copyright rule

Reference websites are used only for analysis. Their source code, copy, illustrations, photography and unique compositions must not be copied.

Demo photography must come from sources that explicitly permit reuse, and the license/source must be logged as described in `docs/IMAGE_LICENSING.md`.
