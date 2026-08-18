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

## QD-only path at a higher quality bar (Kevin's decision, 2026-08-18)

**Why this exists.** The 2026-08-18 expanded sweep (six screens, ~60 names clearing at least one) found the two halves of the paying signal no longer co-occurring: every name that cleared durability, dislocation, circle and the guidance kill had no insider cluster, and every name with a real cluster failed one of the others. Kevin's call was a QD-only path at a higher quality bar rather than accepting fewer candidates.

**The trade being made, stated once.** QD is the secondary engine in the n=13 baseline and INS is Kevin's stated edge. Removing the cluster leg removes the confirmation that a real insider thought the price was wrong. The bar below has to carry that weight, which is why every gate is set tighter than the INS path's equivalent, and why the PASS condition is a positive guidance event rather than the mere absence of a bad one.

### Gates, all required

1. **ROIC durability, hardened.** ROIC above 12% now, above 8% a year ago, and at least **90%** of the year-ago level. This replaces the 8%/5%/85% band from the [[Winner Attribution Screen 2026-08-11]]. Use a retention **band**, not a strict `now >= year_ago` inequality: the strict form dropped HLNE on 22.4 vs 22.5, a rounding edge, and dropped ADSK from earlier sweeps. A one-decimal wobble is not decay.
2. **Balance sheet not deteriorating.** Debt/equity no worse than 1.05x the year-ago level.
3. **Cash generative, not just profitable.** Positive TTM free cash flow AND FCF margin above 5% of TTM revenue. A quality compounder that does not convert is not one.
4. **Real demand growth.** Revenue growth at least 4% y/y, AND the WING guard applies: for franchisors and unit-expansion models, reported revenue is not demand, so check same-store or organic growth by hand before the name advances.
5. **Operating margin not contracting** year over year.
6. **Piotroski 6 or better.** Raised from the INS path's floor of 4 because the insider leg is gone. Caveat kept on the record: Piotroski ran *backwards* in the n=4 attribution test, so treat it as a floor, never as a ranker.
7. **Insider veto, both sides.** Zero insider activity is acceptable here, that is the point of the path. **Net discretionary selling kills**, same as the INS path (the DINO/GSHD/AZO lesson).
8. **Dislocation as a setup marker, not a cause.** At least 20% off the 12-month high to qualify as a setup. It stays a display column and is never the reason, per the 2026-08-10 finding that raw drawdown selects for guidance cutters.

### The PASS condition, and why it is not just "passes the gates"

Gates 1 to 8 are all database-side and get a name to WATCHLIST at best. **A QD-only name reaches PASS only on the GWRE configuration: results delivered and guidance raised or reaffirmed healthy, while the price fell.** Guidance merely maintained is a WATCHLIST. Guidance cut, reset, or a reset flagged as expected by the street is a **KILL**, no exceptions and no size-down compromise.

This is the one gate that cannot be run against the database, and it is the gate that has done all the killing: FISV, PODD and TSCO on 2026-08-10, CSGP on 2026-08-18. CSGP is the case to remember, because it cleared every mechanical leg and cleared them well before the guidance cut killed it.

### Proposed amendment 2026-08-18, NOT live, Kevin's call

Backtested point-in-time against 2026-06-30 ([[QD Bar Backtest 2026-08-18]]): the eight gates returned 13 names averaging +20.2% to 8/17 against SPY +3.5%, 12 of 13 positive, and the single loser was the one name the qualitative layer independently killed. Two gate-level findings came out of it:

- **Keep the insider veto exactly as written.** IDXX cleared every quality gate, was blocked only on net insider selling, and then returned +3.7%, essentially the index. The veto removed the weakest quality name in the cohort.
- **Proposed: change the operating-margin gate to a 95% retention band**, matching ROIC. ADSK failed it on 22.0 versus 22.3, a 0.3-point move on a noisy ratio, and returned +24.3%. Same defect class as HLNE at 22.4 versus 22.5. Adopt it for the reason (strict inequalities on noisy ratios are measurement error) and then re-audit every gate for that phrasing at once, rather than loosening one gate per winner. Flagged against itself: this is the second gate loosened in two days after a name I liked failed it, which is how overfitting starts.

### Standing cautions

- **Promotion cap.** The one-verdict-per-run cap from the [[Agent Context]] daily amendment still applies. It exists to keep a daily feed scarce, and a QD-only path produces more raw candidates than the INS path, not fewer.
- **The gate was calibrated on a board already seen.** The first names through it on 2026-08-18 (BR, ADSK) were already on that day's shortlist. That is not independent evidence the gate works; it is evidence it was fitted to the day. Judge it forward, at the monthly re-scores, on names it surfaces that nothing else did.
- **No PASS is a buy.** Same fixed suffix as every other verdict: agent conviction, not Kevin's. Three-question check before any buy, and the Philosophy elevated-risk deep dive first for any financial or opaque model (HLNE is the live case, the same gate RYAN still owes).

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
- **2026-08-18.** Added the **QD-only path at a higher quality bar** on Kevin's instruction, after the expanded sweep showed the cluster and quality legs no longer co-occurring. Eight database gates plus a mandatory guidance check, with PASS reserved for the GWRE configuration (results up, guidance raised or healthy, price down). Two changes worth flagging as method, not just thresholds: ROIC durability now uses a **90% retention band instead of a strict inequality**, because the strict form was discarding names on one-decimal noise (HLNE at 22.4 vs 22.5); and **Piotroski rises to 6 on this path only**, to compensate for the missing insider confirmation, while staying a floor rather than a ranker. First run returned 9 names from ~10,300, of which 2 reached PASS (BR, ADSK) and 1 was gated on the elevated-risk regime (HLNE). Under test, calibrated on a board already seen, judge it forward.
