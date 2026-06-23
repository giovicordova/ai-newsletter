# Scheduling the AI/LLM Briefing

## Overview

The briefing runs as **five scheduled cloud routines**:

- **Three daily runs** at 07:00, 13:00, 20:00 Europe/Rome — each runs the prompt in
  `routines/run.md`. The skill detects which slot it is and either posts the slot's beat
  or skips (silence when nothing material happened).
- **Weekly take** Friday 21:00 Europe/Rome — `routines/take.md`.
- **MODELS.md refresh** Sunday 18:00 Europe/Rome — `routines/models.md`.

Each execution is a fresh session against a fresh clone. Continuity comes from
`THREADS.md` (and the `editions/` archive), which every run reads, rewrites, and commits.

## Why cloud routines

Local Desktop tasks need your Mac awake and the app open at each trigger. With three runs
a day, every day, that's fragile — especially the 20:00 US-release slot. **Cloud/remote
routines** fire regardless of your machine, run against a fresh repo clone, and commit
their edition + `THREADS.md` back. That commit-back is what gives the next run its memory.

## Prerequisites

- Public GitHub repo `giovicordova/ai-drama` connected to your Claude routines.
- `TELEGRAM_BOT_TOKEN` and `TELEGRAM_CHAT_ID` available to the cloud run as environment
  variables / secrets (set in the routine's environment config — see `docs/TELEGRAM.md`).
- Web search enabled for the run.
- `editions/`, `editions/weekly/`, and `reference/` exist (already created).

## Setup — cloud routines

For each routine: **Schedule → + New task → New remote task**, connect the repo, paste
the prompt file's contents, set the cadence and time, model **Opus 4.8** (high reasoning
effort), permission mode **auto-approve file writes**, and add the Telegram secrets to the
run environment.

| Name | Prompt | Frequency | Time (Europe/Rome) |
|---|---|---|---|
| ai-drama Run 07:00 | `routines/run.md` | Daily | 07:00 |
| ai-drama Run 13:00 | `routines/run.md` | Daily | 13:00 |
| ai-drama Run 20:00 | `routines/run.md` | Daily | 20:00 |
| ai-drama Weekly Take | `routines/take.md` | Friday | 21:00 |
| ai-drama MODELS Refresh | `routines/models.md` | Sunday | 18:00 |

Or set them up conversationally: open a session with this repo connected and describe the
five triggers above.

## How a daily run works

1. Fresh session, fresh clone, repo as working dir.
2. Loads the `ai-llm-briefing` skill, detects the slot from the Europe/Rome clock.
3. Reads `THREADS.md` + today's edition; researches via verified feeds + web search.
4. Applies the materiality gate: POST / ADVANCE a thread / SKIP.
5. Writes the slot's section to `editions/YYYY-MM-DD.md`, rewrites `THREADS.md`.
6. Reviews, sends the slot's section to Telegram (only if it posted), commits + pushes.

A run takes ~2–5 minutes. Many slots correctly skip and send nothing.

## Important notes

- **Continuity depends on commit-back.** Each run pulls latest, then commits `THREADS.md`.
  Keep the rewrite atomic so a half-written state never lands on main.
- **Idempotency.** `.sent-log` prevents double-sends if a routine fires twice.
- **No paid news API yet.** The verified-feed spine (arxiv, Hugging Face, lab/gov feeds)
  is free and primary-source. A domain-allowlisted news API (NewsAPI.ai / Event Registry)
  can be added later as a secret — see the project plan.

## Manual run

In any session with this repo as working dir:

> Use the ai-llm-briefing skill to run the 20:00 briefing.

Or "run the AI briefing" — the skill triggers on that intent.

## Quality verification

```bash
scripts/review-edition.sh editions/YYYY-MM-DD.md
```

Exit code = number of failures (0 = pass). SKIPPED stubs pass.
