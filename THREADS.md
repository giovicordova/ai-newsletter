# Tracked Threads — last updated 2026-06-25 07:00 Europe/Rome

Continuity state for the AI/LLM briefing. Read first, rewritten last, on every run
(including skips). Committed to the repo so cloud runs share memory. Keep it small.

Fields per thread:
- **Status** — developing | steady | dormant | closed
- **Last material update** — date the situation last actually moved
- **Last POSTED** — the run slot that last shipped a beat on this thread (or "never")
- **One-line state** — what we currently understand, so the next run builds on it
- **Watch for** — the specific next development that would justify a post
- **Receipts** — primary-source URLs

---

## Active threads

### T1 — Anthropic × policy / legislation ("the mythos")
- **Status:** developing
- **Last material update:** 2026-06-18 (bipartisan House letter demanding legal basis)
- **Last POSTED:** never (tracked, not yet posted)
- **One-line state:** On 12 Jun the US government (Commerce Sec. Lutnick) issued a national-security export-control directive forcing Anthropic to suspend Claude Fable 5 and Mythos 5 for all foreign nationals — three days after Fable 5's 9 Jun public launch. Cited reason: a narrow "jailbreak" (getting the model to read a codebase and flag software flaws), with reported fear the models could reach Chinese/Russian military intelligence. A bipartisan House letter (18 Jun) demanded the directive's legal justification; Anthropic and the administration are reported to be negotiating. As of 25 Jun (07:00) both models remain offline (Day 13); Anthropic's newest newsroom post is still "Introducing Claude Tag" (23 Jun), unrelated to the suspension. No restoration date, no formal written rescission. NOTE (still unconfirmed by primary): reporting that Commerce talks have grown smoother with Anthropic co-founder/chief compute officer Tom Brown leading negotiations, and Chris Ciauri's 18 Jun "confident… in the coming days" line — all secondary, no Anthropic/government primary. The earlier NSA red-team claim (Mythos breaching NSA systems) still traces only to Sen. Mark Warner relaying NSA Director Gen. Joshua Rudd's briefing; NSA/DoD/White House have not corroborated and no primary document exists. A "Beijing blacklisted 56 American firms" retaliation item surfaced via aggregators only — no allowlisted primary (China MOFCOM not on the gov allowlist). None shippable. (Separately: "Project Glasswing" is Anthropic's own vulnerability-disclosure partner program — not the NSA test codename; earlier blog conflation noted and discarded.)
- **Watch for:** restoration of Fable 5 / Mythos 5 access (a dated announcement), a formal/written government order or rescission, a court filing, a fresh Anthropic policy statement, or a PRIMARY government source on the NSA red-team claim (transcript/official statement — a senator's relayed account doesn't clear it). Any of these = post (ADVANCE this thread).
- **Receipts:**
  - https://www.anthropic.com/news/fable-mythos-access
  - https://www.whitehouse.gov/presidential-actions/2026/06/promoting-advanced-artificial-intelligence-innovation-and-security/

### T2 — EU sovereign AI / open-vs-closed
- **Status:** developing
- **Last material update:** 2026-06-19 (EUROPA consortium selected)
- **Last POSTED:** 2026-06-22 20:00 (EUROPA selection)
- **One-line state:** The European Commission selected the EUROPA consortium, led by Italian firm Domyn, to build an open-source frontier model (>400B parameters) covering all 24 official EU languages on European infrastructure — winner of its Frontier AI Grand Challenge (launched Feb 2026) and part of the EU Technological Sovereignty Package (3 Jun). A sovereignty/open-weights bet against the US-lab closed frontier.
- **Watch for:** a concrete training milestone, a named compute/EuroHPC allocation or funding figure, a model card / weights release, or a benchmark from EUROPA. Speculation/timeline chatter does not clear the gate.
- **Receipts:**
  - https://digital-strategy.ec.europa.eu/en/news/commission-selects-europa-consortium-winner-frontier-ai-grand-challenge-project-build-european-open

### T3 — AI for cyber-defence / vulnerability discovery
- **Status:** developing
- **Last material update:** 2026-06-22 (OpenAI Daybreak expansion: GPT-5.5-Cyber + Codex Security + Patch the Planet)
- **Last POSTED:** never (opened 06-22; still not shipped — primary unverifiable, now stale)
- **One-line state:** On 22 Jun OpenAI expanded its Daybreak security platform (launched 11 May) with a cyber-specialised model, GPT-5.5-Cyber, plus Codex Security (an agentic harness that runs models inside repos to find/validate/patch vulnerabilities) and "Patch the Planet" (an open-source-maintainer program with Trail of Bits). Reported benchmark gains for GPT-5.5-Cyber (85.6% CyberGym vs 81.8% GPT-5.5; 39.5% ExploitGym; 69.8% SEC-bench Pro) remain NON-verified from primary: openai.com 403s to automated fetch on every relevant page, so the numbers come only from non-allowlisted blogs. TechCrunch (allowlisted Tier-2) confirms only the Patch the Planet / Codex Security half. As of 25 Jun the launch is 3 days old → not net-new. Thematically mirrors T1: the "read a codebase, flag flaws" capability that got Fable 5 pulled is now a shipped OpenAI product.
- **Watch for:** an openable allowlisted primary (openai.com page or model card) confirming GPT-5.5-Cyber + its benchmark numbers; OR a Tier-2 allowlisted outlet carrying the model-release framing that I can open. Given staleness, only a fresh primary now justifies a beat.
- **Receipts:**
  - https://openai.com/news/rss.xml (RSS confirms the 22 Jun Daybreak / GPT-5.5-Cyber / Codex Security items; the live post still 403s to fetch; benchmarks blog-only)
  - https://techcrunch.com/2026/06/22/openai-launches-new-initiative-to-help-find-and-patch-open-source-bugs/ (Patch the Planet + Trail of Bits; no model/benchmark)

### T4 — OpenAI custom silicon / Nvidia challenge
- **Status:** developing
- **Last material update:** 2026-06-24 (Jalapeño chip unveiled)
- **Last POSTED:** 2026-06-24 20:00 (Jalapeño unveiling)
- **One-line state:** On 24 Jun OpenAI and Broadcom unveiled Jalapeño, OpenAI's first custom inference chip (an "Intelligence Processor") — built for inference, i.e. serving a trained model to users. Manufactured by Broadcom in collaboration with OpenAI, still in testing; reported (unverified) aim is initial deployment by end of 2026. Extends the Oct 2025 OpenAI–Broadcom partnership and is OpenAI's bid to make its own silicon and lean less on Nvidia GPUs. OpenAI's primary page 403s and Broadcom's IR release 503s to automated fetch, so the beat linked TechCrunch (allowlisted Tier-2, openable). The "performance-per-watt substantially better than state-of-the-art" line is unbenchmarked (no number) and was not shipped.
- **Watch for:** a confirmed tape-out/manufacturing or first-deployment milestone, named specs or an independent benchmark, a successor chip in the multi-generation roadmap, or an openable primary (openai.com / Broadcom IR) carrying specs. Roadmap/timeline chatter alone does not clear the gate.
- **Receipts:**
  - https://techcrunch.com/2026/06/24/openai-unveils-its-first-custom-chip-built-by-broadcom/
  - https://openai.com/index/openai-broadcom-jalapeno-inference-chip/ (primary; 403s to automated fetch)

---

## Dormant threads (watch, don't post unless reignited)

_none yet_

---

## Recently closed

_none yet_
