# Tracked Threads — last updated 2026-06-23 07:00 Europe/Rome

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
- **One-line state:** On 12 Jun the US government (Commerce Sec. Lutnick) issued a national-security export-control directive forcing Anthropic to suspend Claude Fable 5 and Mythos 5 for all foreign nationals — three days after Fable 5's 9 Jun public launch. Cited reason: a narrow "jailbreak" (getting the model to read a codebase and flag software flaws), with reported fear the models could reach Chinese/Russian military intelligence. A bipartisan House letter (18 Jun) demanded the directive's legal justification; Anthropic and the administration are reported to be negotiating. As of 23 Jun both models remain offline (Anthropic newsroom shows nothing newer than the 17 Jun Seoul-office post); an exec earlier said access should return "in coming days," still no date, no formal written rescission. Sits alongside Trump's 2 Jun executive order creating a voluntary 30-day federal pre-release review for frontier models.
- **Watch for:** restoration of Fable 5 / Mythos 5 access (a dated announcement), a formal/written government order or rescission, a court filing, or a fresh Anthropic policy statement. Any of these = post (ADVANCE this thread).
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
- **Last POSTED:** never (opened 06-22; still not shipped — primary unverifiable)
- **One-line state:** On 22 Jun OpenAI expanded its Daybreak security platform (launched 11 May) with a cyber-specialised model, GPT-5.5-Cyber, plus Codex Security (an agentic harness that runs models inside repos to find/validate/patch vulnerabilities) and "Patch the Planet" (an open-source-maintainer program with Trail of Bits). Reported benchmark gains for GPT-5.5-Cyber (85.6% CyberGym vs 81.8% GPT-5.5; 39.5% ExploitGym; 69.8% SEC-bench Pro) remain NON-verified from primary: openai.com 403s to automated fetch on every relevant page (incl. /index/gpt-5-5-with-trusted-access-for-cyber/), so the numbers come only from non-allowlisted blogs. TechCrunch (allowlisted Tier-2, openable) confirms the broader launch but only the Patch the Planet / Codex Security half — it does not mention GPT-5.5-Cyber or any benchmark. Thematically mirrors T1: the "read a codebase, flag flaws" capability that got Fable 5 pulled is now a shipped OpenAI product.
- **Watch for:** an openable allowlisted primary (openai.com page or model card) confirming GPT-5.5-Cyber + its benchmark numbers; OR a Tier-2 allowlisted outlet carrying the model-release framing (find/patch tooling, not a "best at X" superlative) that I can open. Either clears the gate as a model release → post then (ADVANCE).
- **Receipts:**
  - https://openai.com/news/rss.xml (RSS confirms the 22 Jun Daybreak / GPT-5.5-Cyber / Codex Security items; primary pages 403, benchmarks blog-only)
  - https://techcrunch.com/2026/06/22/openai-launches-new-initiative-to-help-find-and-patch-open-source-bugs/ (Patch the Planet + Trail of Bits; no model/benchmark)

---

## Dormant threads (watch, don't post unless reignited)

_none yet_

---

## Recently closed

_none yet_
