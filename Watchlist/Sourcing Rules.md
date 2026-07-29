---
type: sourcing-rules
tags: [investing/process, sourcing]
created: 2026-07-21
updated: 2026-07-21
review_cadence: monthly
---

# Sourcing Rules

What this note is for: the living definition of how I generate prospective ideas, refined monthly from what [[Idea Ledger]] shows actually paid. Goal Kevin set 2026-07-21: catch more ideas like XRAY, GWRE, VRNS. These are rules under test, not locked. Every change is logged in the changelog with the evidence. Decision support, not advice.

## Primary engine: Lane B insider-cluster screen (INS)

The Form 4 clustered-buying screen is the primary sourcing engine. It is Kevin's stated edge, it produced the single best name (XRAY) and the top-3 concentration in the 2026-07-21 baseline, and it is a signal the whole market cannot cheaply replicate. Keep the existing contamination filter strict (discretionary open-market only, `tx_code='P'`, `is_10b5_1=false`, 2+ distinct insiders in 30 days, cluster >= $250k, exclude recent-IPO fund-subscription noise). See [[Insider-Cluster Screen 2026-06-30]] for the method.

The insider signal alone is not the edge. In the baseline, the discriminator between winners and the one laggard was health and circle, not the presence of a cluster. Apply these gates on top of the cluster:

- **Deep dislocation:** prefer names roughly 30%+ off the 52-week high. The winners were -37% (XRAY, VRNS); the bought laggard VRTX was only -12%. Rank the funnel by dislocation depth among not-broken names, NOT by cluster dollar value (own finding: dollar value is an anti-signal).
- **Financial-health floor:** soft Piotroski floor of 4. Below 4 is a falling-knife flag, not an auto-pass; if taken, size down. GEHC at Piotroski 2 was the INS laggard.
- **Circle first:** in-circle names (SaaS, commercial healthcare/medtech) get priority and full size. Out-of-circle names (e.g. LW) can be surfaced but are size-capped per the "learning is not competence" guard.
- **Dislocation cause:** tag each name SENT (sentiment/multiple drop, business intact) vs BREAK (fundamental deterioration) at surface time. Baseline winners were all SENT; the one BREAK name (GEHC) lagged. Track whether this holds.

## Secondary feed: quality-dislocation (QD) with an overreaction screen

Do not kill the Lane A quality-dislocation lane. It produced GWRE (+21.2%), the second-best name overall. Demote it to secondary but add one mechanical, repeatable screen it currently lacks:

- **Guidance-up / price-down:** flag quality franchises that fell on an earnings reaction despite raising or holding guidance. That is exactly how GWRE surfaced. This is the cleanest addition to test because it is mechanical, not judgment.

Keep the QD discipline that already works: lead with the bear case, require a one-sentence thesis in Kevin's own words, and treat rich-multiple names as a price-discipline call (IDXX).

## Under test (hypotheses, added 2026-07-21)

1. Dislocation depth > cluster dollar value as the INS ranking key.
2. Piotroski >= 4 soft floor within INS.
3. SENT names outperform BREAK names; validate over more cohorts before weighting.
4. Guidance-up/price-down as a standing QD screen.
5. Execution note (not a sourcing rule, but the ledger keeps surfacing it): the best names were left on watchlist while weaker names were bought in haste. Sourcing quality is being lost at the buy step. Flag to Kevin at each review.

## Monthly review checklist (next: 2026-08-21)

1. Re-price every open row in [[Idea Ledger]]; stamp the date.
2. Compute hit-rate and average return by bucket (INS vs QD vs SS) and by cause tag (SENT vs BREAK).
3. Check whether the under-test hypotheses are holding; promote, demote, or drop each with the evidence.
4. Note the watchlist-vs-bought execution gap.
5. Log every rule change below.

## Changelog

- **2026-07-21.** Created from the first ledger re-score (n=13, 3 weeks). Set INS as primary engine with dislocation-depth ranking, Piotroski-4 floor, circle-first, and SENT/BREAK tagging. Added QD as secondary with a guidance-up/price-down overreaction screen. All flagged under test. Sample is tiny; nothing here is proven yet.
