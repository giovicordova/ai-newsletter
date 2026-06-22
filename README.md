# AI/LLM Briefing

A short, factual AI/LLM news briefing pushed to Telegram up to **three times a day, every
day** — and only when something materially new happens. New models as they ship, the
infrastructure worth knowing (chips, inference, cost), benchmarked capability shifts, and
the AI policy/legislation arc. Plus a labelled weekly take on Fridays and a living
"which model is best at what" reference.

Sibling to [ai-finance-newsletter](https://github.com/giovicordova/ai-finance-newsletter) —
same DNA, aimed at AI/LLM evolution instead of markets.

## Subscribe

**[t.me/aidramaa](https://t.me/aidramaa)** — follow on Telegram. Up to three short posts a
day, only when something material happens. Most slots stay silent on purpose.

## What makes it different

- **Trust no one.** Primary-source-first sourcing — lab model cards, arxiv, official
  pricing pages, government/regulator publications. A hard allowlist; rumor blogs, social
  screenshots, and aggregator newsletters are banned. Every claim is clickable.
- **Silence is a feature.** Three slots a day, but most slots ship nothing. A post only
  goes out when there's a genuinely new, sourced, material movement.
- **Continuity.** `THREADS.md` tracks the big situations as they evolve (the Anthropic ×
  policy arc, the open-vs-closed model race, the chip regime) so each post lands in
  context, never in isolation.
- **Verified feeds, not vibes.** Research pulls from the arxiv API, the Hugging Face Hub,
  official lab feeds, and government press feeds before any general web search.

## How it runs

- 07:00 — overnight US window + the arxiv batch + the Asian business day.
- 13:00 — European hours, EU/UK policy, late-Asia drops.
- 20:00 — the US-lab launch window (= 11:00 PT). The most important slot.
- Friday 21:00 — Claude's weekly take, synthesising the week's threads.
- Sunday 18:00 — refresh of `reference/MODELS.md`.

Each run is a Claude routine driven by `.claude/skills/ai-llm-briefing/SKILL.md`. See
`docs/SCHEDULING.md` for setup and `routines/` for the exact prompts.

## Layout

```
.claude/skills/ai-llm-briefing/SKILL.md   # the briefing's brain
editions/YYYY-MM-DD.md                    # one file/day, 3 timestamped run sections
reference/MODELS.md                       # living "best at what", weekly, opinion-with-receipts
THREADS.md                                # ongoing tracked situations (continuity state)
scripts/                                  # send-to-telegram.py, review-edition.sh
routines/                                 # scheduled-run prompts
docs/                                     # Telegram + scheduling setup
```

## Disclaimer

Editorial summaries of public AI news. Capability claims cite named benchmarks, which are
gameable and often self-reported — treat `MODELS.md` as evidence, not gospel.
