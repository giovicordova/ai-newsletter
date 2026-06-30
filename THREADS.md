# Tracked Threads — last updated 2026-06-30 20:00 Europe/Rome

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
- **Last material update:** 2026-06-26 (US government partially reversed the suspension — Mythos 5 cleared for 100+ trusted US organizations)
- **Last POSTED:** 2026-06-27 13:00 (partial restoration — Lutnick clears Mythos 5 for 100+ critical-infrastructure orgs; Fable 5 still down)
- **30 Jun 20:00 re-check:** Fable 5 still suspended (Day 18), unchanged from the 07:00 and 13:00 re-checks. anthropic.com/news/fable-mythos-access re-fetched — still dated 12 Jun, no addendum, still ends "working to restore access as soon as possible." NOTE: the newsroom DID gain two net-new 30 Jun items — "Introducing Claude Sonnet 5" and "Claude Science" — but these are new product/model releases, NOT a Fable 5 restoration, so they advance T6 (new), not T1. Search ("Anthropic Fable 5 access restored June 30 2026") still surfaces only the already-shipped 26 Jun Mythos re-release (govconwire), a 29 Jun Forbes "coming back this week?" piece, Manifold/Polymarket odds, an explainx.ai "Fable 5 is not back" blog, and an Anthropic X post quoting the 26 Jun Mythos text (social → hard-banned) — the search summary's own line: "Fable 5 remains offline for general access as of June 30, 2026." Legion docket still pre-ruling. Watch-for unmet → no ADVANCE.
- **One-line state:** On 12 Jun the US government (Commerce Sec. Lutnick, via BIS) issued a national-security export-control directive forcing Anthropic to disable Claude Fable 5 and Mythos 5 for all users worldwide (foreign nationals the stated reason) — three days after Fable 5's 9 Jun public launch. On 23 Jun an Anthropic customer (Legion LegalTech, Corp.) sued the United States / Commerce / BIS in D.D.C. (1:26-cv-02225) seeking to vacate the order and a preliminary injunction — POSTED 25 Jun 20:00; no PI ruling or government response primary-confirmable as of this session. On Fri 26 Jun Commerce Sec. Lutnick wrote to Anthropic (chief compute officer Tom Brown) determining "appropriate safeguards are in place to permit certain trusted partners to access the Claude Mythos 5 Model" — more than 100 US government agencies and companies that operate and defend critical infrastructure are cleared, and the foreign-national ban is lifted for staff at those orgs INCLUDING Anthropic's own non-American employees. Posted 27 Jun 13:00 from TechCrunch (allowlisted Tier-2). **Fable 5 — the public version — was NOT addressed in the letter and remains suspended** (Day 18, re-checked 30 Jun 20:00). The sibling arc (US government gating of frontier access) is tracked at T5; the Anthropic Claude 5 release line is now tracked separately at T6. Still secondary-only / unshippable: the NSA red-team claim (Mythos breaching NSA systems, via Sen. Warner relaying Gen. Rudd); the Garbarino "Fly Out Day" demo anecdote (Punchbowl); "Beijing blacklisted 56 American firms" (aggregators only).
- **Watch for:** a dated restoration of **Fable 5** (the public model still down); a formal/written Anthropic or government primary (newsroom post, Commerce/BIS publication of Lutnick's letter, a named partner list); a ruling on the Legion LegalTech preliminary-injunction motion (grant/deny) or the government's filed response, OR a second/Anthropic-led suit; or a PRIMARY government source on the NSA red-team claim. Any of these = ADVANCE. (Don't re-post the bare Mythos-restoration beat or the bare Legion filing — both shipped.) Note: re-verifying the docket needs a CourtListener API token or an openable allowlisted outlet (REST API 401s, page 403s this session).
- **Receipts:**
  - https://techcrunch.com/2026/06/26/trump-admin-releases-anthropic-mythos-to-be-used-by-more-than-100-us-companies-agencies/ (Lutnick clears Mythos 5 for 100+ US orgs; Fable 5 not addressed — POSTED 27 Jun 13:00)
  - https://www.courtlistener.com/docket/73520460/legion-legaltech-corp-v-united-states-of-america/ (Legion LegalTech v. United States, 1:26-cv-02225, D.D.C., filed 23 Jun 2026 — POSTED 25 Jun 20:00)
  - https://www.anthropic.com/news/fable-mythos-access (12 Jun suspension statement; no dated restoration addendum this session)
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
- **Last material update:** 2026-06-26 (GPT-5.6 family rated "High" cyber capability under OpenAI's Preparedness Framework)
- **Last POSTED:** never (the OpenAI cyber-capability arc; the 22 Jun Daybreak/GPT-5.5-Cyber primary stayed unverifiable, the 26 Jun GPT-5.6 cyber rating shipped under T5)
- **One-line state:** Two strands. (1) On 22 Jun OpenAI expanded its Daybreak security platform (launched 11 May) with GPT-5.5-Cyber, Codex Security (an agentic harness that runs models inside repos to find/validate/patch vulnerabilities) and "Patch the Planet" (open-source-maintainer program with Trail of Bits); reported GPT-5.5-Cyber benchmarks (85.6% CyberGym etc.) remain NON-verified from primary (openai.com 403s; numbers blog-only). TechCrunch confirms only the Patch the Planet / Codex Security half. (2) On 26 Jun OpenAI's new GPT-5.6 family (Sol/Terra/Luna) was rated "High" capability in Cybersecurity under the Preparedness Framework, per OpenAI's openable Deployment Safety Hub system card. Thematically mirrors T1: the "read a codebase, flag flaws" capability that got Fable 5 pulled is now both a shipped OpenAI product and a High-rated frontier model. Note: Claude Sonnet 5 (30 Jun, T6) also reports stronger cybersecurity capability per its release page — not yet pulled out as a separate cyber benchmark beat.
- **Watch for:** an openable allowlisted primary (openai.com page or model card) confirming GPT-5.5-Cyber + its benchmark numbers; a published GPT-5.6 cyber benchmark with a number; OR a Tier-2 allowlisted outlet carrying release framing I can open. Given staleness, only a fresh primary now justifies a beat.
- **Receipts:**
  - https://deploymentsafety.openai.com/gpt-5-6-preview (GPT-5.6 preview system card — "High" cyber capability; openable this session; basis of the 26 Jun 20:00 post under T5)
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

### T5 — US government gating of frontier-model release / access
- **Status:** developing
- **Last material update:** 2026-06-26 (OpenAI begins a government-vetted limited preview of GPT-5.6)
- **Last POSTED:** 2026-06-26 20:00 (GPT-5.6 limited preview, access held at the US government's request)
- **One-line state:** A pattern is forming where the US government conditions who can access frontier models on national-security grounds. First instance was T1 (12 Jun export-control directive forcing Anthropic to suspend Fable 5 / Mythos 5 for foreign nationals — coercive; partially reversed 26 Jun for Mythos 5). On 26 Jun OpenAI began a *limited preview* of its GPT-5.6 family (Sol flagship, Terra, Luna) and, per its openable Deployment Safety Hub system card, "At their request, we are starting with a limited preview for a small group of trusted partners whose participation has been shared with the government, before releasing more broadly," noting "ongoing engagement with the U.S. government." OpenAI rates all three "High" capability in Cybersecurity (and Bio/Chem). Posted 26 Jun 20:00 from the system card. As of 30 Jun 20:00, still a limited preview: no dated GA, no named/expanded-partner move, no fresh OpenAI/White House primary (OpenAI RSS newest items are 30 Jun "How ChatGPT adoption has expanded" Signals data + "Introducing GeneBench-Pro" / "Inside GeneBench-Pro" genomics benchmark + 29 Jun workforce report — none a frontier/access development). NOTE: Anthropic's 30 Jun Claude Sonnet 5 release (T6) was a normal public launch — NOT government-gated — so it is a counterpoint to, not an instance of, this thread.
- **Watch for:** general availability of GPT-5.6 (a dated public release lifting the preview), a named/expanded partner list or a formal government access program, an OpenAI or White House primary statement on the process, a similar government-gated release at another US lab, OR a published GPT-5.6 benchmark number. Restatement of the same preview does not re-clear the gate.
- **Receipts:**
  - https://deploymentsafety.openai.com/gpt-5-6-preview (GPT-5.6 preview system card — limited preview, government-shared partners, High cyber capability — POSTED 26 Jun 20:00)
  - https://openai.com/index/previewing-gpt-5-6-sol/ (canonical announcement; 403s to automated fetch this session)

### T6 — Anthropic Claude 5 family rollout (post-suspension release line)
- **Status:** developing
- **Last material update:** 2026-06-30 (Claude Sonnet 5 released, available now)
- **Last POSTED:** 2026-06-30 20:00 (Claude Sonnet 5 release)
- **One-line state:** On 30 Jun Anthropic released **Claude Sonnet 5**, available everywhere today (Claude.ai, the Claude API as `claude-sonnet-5`, AWS, Google Cloud, Microsoft Foundry). Anthropic frames it as "the most agentic Sonnet model yet" — making plans and using tools like browsers and terminals, running autonomously at a level it says recently required larger/more expensive models. Reported benchmarks on the release page: OSWorld-Verified (computer use) 78.5%; Humanity's Last Exam 34.6% no-tools / 46.8% with-tools; the page also notes stronger coding, science, and cybersecurity. Introductory pricing $2/M input + $10/M output through 31 Aug 2026, then standard $3/M + $15/M. A second 30 Jun item, "Claude Science" (an AI workbench for scientists, now available), shipped the same day but was not the chosen beat (one-beat-per-slot). This is Anthropic's mid-tier Claude 5 model shipping normally — distinct from the still-suspended Fable 5 public flagship (T1) and from the government-gated GPT-5.6 preview (T5). POSTED 30 Jun 20:00 from the release page.
- **Watch for:** a higher-tier Claude 5 release (e.g. an Opus/Fable 5-line model, or a dated Fable 5 restoration — that would ALSO advance T1), a published SWE-bench Verified or other coding number for Sonnet 5, an independent third-party benchmark, or a material capability/pricing change. A restatement of the 30 Jun launch does not re-clear the gate.
- **Receipts:**
  - https://www.anthropic.com/news/claude-sonnet-5 (Claude Sonnet 5 release — available today, pricing, OSWorld-Verified 78.5% — POSTED 30 Jun 20:00)
  - https://www.anthropic.com/claude/sonnet (product page; same availability + pricing text)

---

## Dormant threads (watch, don't post unless reignited)

_none yet_

---

## Recently closed

_none yet_
