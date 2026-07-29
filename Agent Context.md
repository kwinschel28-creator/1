---
type: agent-context
tags: [investing/process, automation, memory]
updated: 2026-07-29
purpose: Standing context ported from Cowork desktop auto-memory so the mobile brief has the same knowledge. Read this first on every run.
---

# Agent Context

This file is the mobile equivalent of the desktop agent's saved memory. It was consolidated on 2026-07-29 from seven memory notes so the mobile pre-market brief, which cannot see desktop auto-memory, works from the same standing knowledge. No em-dashes anywhere in deliverables (Kevin's hard rule; sweep for U+2014 and U+2013 before shipping).

Sections: Investing style and caps, Daily brief preferences, Screen output format, No per-company thesis, Sourcing refinement loop, Mobile brief setup, Stock Research Agent project.

## 1. Kevin's investing style, circle, edge, biases, caps

Kevin invests in two lanes with different bars. Lane A quality compounders: durable high ROIC/ROCE, reinvestment runway, bought on dislocation. Lane B insider/special-situations: sourced from clustered, material, discretionary open-market insider buying in transitions, judged on fundamental inflection, balance-sheet repair, catalyst path, and asymmetry, NOT compounder quality. No momentum sleeve (decided 2026-06-30).

Circle of competence (updated 2026-06-30, amended 2026-07-16): generalist, NO hard sector exclusions. On 2026-07-16 he removed the financials/real-estate/utilities exclusions, the same day SLM (a bank) was killed on that rule in first-pass; stated reason "I can always learn a business if you tell me the essential information." The agent flagged the goalpost-move risk and recorded an amendment log in Philosophy.md. Opaque-balance-sheet models now enter only via an elevated-risk regime: agent essential-information brief, full deep dive, capped starter size, one-page test in his own words. Strongest footing remains recurring-revenue SaaS and commercial-stage biopharma/medtech/healthcare. Broadening pattern is two-step ("SaaS + healthcare" to "all minus three" on 6/30 to "everything" on 7/16, each within a day of wanting a specific name); watch it, and expect the "agent brief equals understanding" shortcut, which his own Checklist forbids.

Edge: primarily behavioral (long holding period, volatility tolerance), plus operating-thesis work on insider clusters and management-comp analysis (favors managers paid for outcomes vs activity). No informational edge in liquid large caps, yet his two biggest holdings, GOOG and ORCL, are exactly that.

Admitted biases (his own words, 2026-06-30): (1) research-as-reason / effort-justification (Doximity), (2) borrowed conviction / no independent long-term thesis (ORCL from Twitter, CRS from Perplexity, FRFHF and QXO from friends), (3) theme-as-thesis, narrative plus technicals over fundamentals (BellRing), (4) over-concentration / all-in, latent and masked by GOOG and ORCL wins. He wants the goalpost-movement check enforced, and flagging when multiple biases stack on one idea. He outsources idea sourcing (asks the agent for picks); guard against becoming his next borrowed-conviction source. Treat him as a user who wants a blunt, adversarial mentor, not agreement.

Concentration caps (Tight regime, set 2026-06-30): single-name 10% build / 20% ceiling (Lane A), 4% build / 7% ceiling (Lane B); starter 2 to 3% either lane. Theme cap 20% soft flag / 30% hard cap (a theme is a shared return driver, not a sector). Floor of at least 8 meaningful positions (each above roughly 2%). Residual is cash, not a bigger bet. See [[Portfolio Strategy]], [[Cognitive Biases]], [[Philosophy]].

## 2. Daily brief preferences

On 2026-07-13 Kevin said he does not need a daily price breakdown (he checks Fidelity himself). The brief is: market pulse, catalyst calendar (~2 weeks out), material holdings news, 5%+ movers explained only, guardrails compressed to one line (expand only on change), and 1 to 2 prospective first-pass ideas per day preferring non-AI-theme diversifiers. Why: the table duplicated Fidelity; his real need is staying on top of catalysts, news, and idea flow.

On 2026-07-16 Kevin asked to "stay ahead of the market" and go beyond tech/healthcare after two weeks of mixed results. Agreed changes: a per-holding Sell/trim triggers section lives in Holdings.md (the brief checks news against it and posts TRIGGER ALERT blocks); prospective ideas are explicitly all-sector (insider clusters, spinoffs, dislocated quality, unloved sectors); a weekly-portfolio-retest runs Sundays 5pm (trigger scorecard, guardrail deep check, one action item). He was told bluntly that "winners only" is not achievable and that the 7/2 no-thesis AI buys drove the losses; he accepted the process framing.

How to apply: lead with catalysts and news, not prices. Never dump a full position table unless asked. Keep guardrail reporting terse but never drop it silently: it enforces the caps in section 1. New ideas always carry the first-pass process gate.

## 3. Screen output format

When presenting stock screen results, do NOT show multiples or metric tables. The screen filters already enforce his thresholds, so repeating the numbers is noise. Give each hit a one-line bull case and a one-line bear case. Why: Kevin said (2026-07-16) he decides better from a framed bull/bear tension than from a chart of numbers; passing the screen already certifies the quantitative gates.

How to apply: run screens against his gates (section 1) as usual, then present each name as Ticker, one-line bull, one-line bear. Flag names where the one-liner rests on stale or thin knowledge rather than fresh research. Keep the process gate line (first-pass before any buy).

## 4. No per-company thesis

On 2026-07-23 Kevin retired the per-company one-sentence thesis requirement. Do NOT ask for or track a one-liner per stock, and do NOT report a "theses owed on N of M holdings" per-name counter. Why: he has built his system (Philosophy, Checklist, lanes, triggers, Sell Discipline) as the thesis framework and considers a separate per-stock one-liner redundant.

How to apply: a buy is justified by clearing the Checklist and its lane gates (Lane A falsifiers, Lane B operating-inflection checks) plus caps/sizing. Two things were NOT removed and still gate buys: the Lane A/B system checks themselves, and the Philosophy elevated-risk deep dive for financials/opaque models (banks, insurers, brokers, REITs, utilities) before those buys. Recorded in [[Checklist]] amendment 2026-07-23. Note: this change was made the same session two screen-sourced buys (ADT, RYAN) were flagged for missing theses, in the third such screen-to-buy event after 7/2 and 7/16; the vault logs that timing neutrally.

## 5. Sourcing refinement loop

Kevin wants idea sourcing continuously refined to catch more names like XRAY, GWRE, VRNS (the 2026-06-30 winners). Standing mechanism, set 2026-07-21:

- Idea Ledger (`Watchlist/Idea Ledger.md`): append-only, one row per surfaced idea with source bucket, dislocation-cause tag, in-circle flag, anchor price/date, action, and re-score column. Log every idea the brief or a screen surfaces.
- Sourcing Rules (`Watchlist/Sourcing Rules.md`): living method note, revised monthly from ledger hit-rate.
- Cadence: monthly re-score. Next review 2026-08-21.

Baseline finding (n=13, 3 weeks): the insider-cluster screen (INS) is the primary engine and Kevin's edge, but the paying signal is insider cluster PLUS financially healthy (Piotroski 4+) PLUS in-circle PLUS deep dislocation (~30%+ off high), not the cluster alone. Quality-dislocation (QD) is secondary; add a guidance-up/price-down overreaction screen (how GWRE surfaced). Recurring execution gap: best names get left on watchlist while weaker names get bought in haste.

## 6. Mobile brief setup

Kevin runs the daily pre-market brief twice: a desktop Cowork scheduled task named `daily-portfolio-check` that reads the local Obsidian vault and has the Shibui stock database MCP, and a mobile Claude Code session on claude.ai/code that reads this GitHub mirror at `kwinschel28-creator/1` (git remote `mobile-brief`, branch `main`) because he does not always have the desktop.

The git index cannot be written from the Cowork sandbox (FUSE mount throws a bus error on `git add`), so any repo sync has to be run by Kevin on the Mac.

Five recurring failure modes to re-check on future runs:

1. Percent moves lifted from headlines instead of the price pull (reported NBIS -15% for Fri 7/24 when the actual session was about -9%; -15% belonged to 7/16-7/17).
2. Month-old evidence presented as a fresh trigger fire (Meta Compute broke 7/1, surfaced as a new NBIS fire on 7/27).
3. Catalyst calendar stopping early rather than walking every ticker (missed VRTX 8/3 and ZTS 8/6, both confirmed and in window).
4. Trim signals on names the vault explicitly excludes (QXO is marked "monitor only if resized" in the Gainer trim lines Notes column).
5. Unattributed ATR inputs feeding the mechanical trailing-stop rule, since mobile has no Shibui MCP.

Chosen fixes: hard fail on ATR (no data source, no trim signal, ever), full process files in the repo, and each brief committed to `briefs/YYYY-MM-DD.md` so the next run has real prior-run memory instead of guessing at deltas. These fixes are implemented in `Mobile Brief Prompt 2026-07-27.md`.

## 7. Stock Research Agent project

Kevin is building a "Stock Research Agent": a Cowork plugin (`stock-research-agent`, currently v0.2) plus an Obsidian vault living in his selected "Stocks" folder under `Investment Process/`.

Plugin = 4 workflows (stress-test-thesis, first-pass, portfolio-fit, earnings-retest) over shared files (core-principles, philosophy-loader, rubric = Pass/Concern/Fail/Unknown, bias-library, default-frameworks, output-templates). The agent reads the vault live; the vault overrides generic defaults. Provenance tags: [vault] / [default] / [primary] / [secondary] / [estimate]. v0.2 added: loader treats SCAFFOLD/[YOURS] content as provisional (not [vault] conviction); rubric picks Lane A vs Lane B before scoring.

Ops notes (2026-07-07): Kevin calls the Shibui-backed daily-portfolio-check the "Shibu stock checker." Shibui stock_quotes/valuation are EOD with ~1-day lag (present by ~7:53 AM ET normally); sec_filings is near-real-time; no intraday/overnight data, so news must come from web search. The checker is weekdays-only (45 7 * * 1-5), with a freshness gate, web-quote fallback on stale/error, a mandatory source/date first line, and an overnight news sweep of top-5 weights plus movers. Scheduled runs do not auto-retry on crash; a missing brief means the run died.
