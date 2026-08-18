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

**What this path is, corrected 2026-08-18 after the pressure test.** It was adopted expecting alpha. Out of sample across three non-overlapping cohorts it returned +3.2% against a universe at +3.8% and SPY at +4.5% ([[QD Bar Pressure Test 2026-08-18]]). **It is therefore adopted as a risk filter and candidate qualifier, not as a source of return.** What it demonstrably does is raise the median and the hit rate and cut the left tail, winning on relative terms in falling tapes and giving up upside in rallies. That is a low-beta quality tilt. It is worth running because Kevin's documented failure mode is buying weaker names in haste, and this acts directly on that. It is not worth running as a reason to expect market-beating returns, and no output of it should be described that way.

**The trade being made, stated once.** QD is the secondary engine in the n=13 baseline and INS is Kevin's stated edge. Removing the cluster leg removes the confirmation that a real insider thought the price was wrong. The bar below is set tighter than the INS path's equivalent throughout, and the PASS condition is a positive guidance event rather than the mere absence of a bad one.

### Gates, all required

1. **ROIC durability, hardened.** ROIC above 12% now, above 8% a year ago, and at least **90%** of the year-ago level. This replaces the 8%/5%/85% band from the [[Winner Attribution Screen 2026-08-11]]. Use a retention **band**, not a strict `now >= year_ago` inequality: the strict form dropped HLNE on 22.4 vs 22.5 and ADSK on 19.4 vs 21.0. A one-decimal wobble is not decay.
2. **Balance sheet not deteriorating.** Debt/equity no worse than 1.05x the year-ago level.
3. **Cash generative, not just profitable.** Positive TTM free cash flow AND FCF margin above 5% of TTM revenue. A quality compounder that does not convert is not one.
4. **Real demand growth.** Revenue growth at least 4% y/y, AND the WING guard applies: for franchisors and unit-expansion models, reported revenue is not demand, so check same-store or organic growth by hand before the name advances.
5. **Operating margin at least 95% of the year-ago level.** Live from 2026-08-18. Previously a strict `now >= year_ago`, which failed ADSK on 22.0 vs 22.3 and cost a +24.3% name over 0.3 points. Same defect class as gate 1.
6. **Piotroski 6 or better.** Raised from the INS path's floor of 4 because the insider leg is gone. Caveat kept on the record: Piotroski ran *backwards* in the n=4 attribution test, so treat it as a floor, never as a ranker.
7. **Insider veto, both sides. Window 180 days. Two conditions, both required to veto:** discretionary selling exceeds buying by more than 10%, **AND** net selling exceeds **$250k**. Zero insider activity is acceptable here, that is the point of the path. The veto earned its place in the 6/30 backtest, where IDXX cleared every quality gate, was blocked solely on net selling of $1.1M, and then returned +3.7%, essentially the index.

   **Both the window and the floor were added 2026-08-18 after this gate misfired on its first live run**, and the failure is worth keeping because it is not a threshold problem. The original spec never stated a lookback window at all. The morning sweep used 180 days, the backtest used 120, and the first implementation inherited 120. Under 120 days, Broadridge's CEO buying $1.03M on 2026-03-06 fell outside the window while a single routine $305k sale by the Chief Legal Officer on 6/04 fell inside, so a name with **3.4x more insider buying than selling was vetoed as a net seller.** With no buys in the window at all, the original form also made *any* sale of *any* size a veto, which is not what "net selling kills" means and would have vetoed most large caps. An unstated parameter is a bug, not a judgement call: **every gate must name its measurement window.**
8. **Dislocation as a setup marker, not a cause.** At least 20% off the 12-month high to qualify as a setup. It stays a display column and is never the reason, per the 2026-08-10 finding that raw drawdown selects for guidance cutters.

### Near-miss rule (live 2026-08-18), the systemic fix

Gates 1, 5 and 7 were each patched after a good name failed on rounding. Patching them one at a time as winners are discovered is how a screen gets overfitted, so the general fix is at the reporting layer instead:

**Any name that clears every gate but one, and misses that one by less than 10% of its threshold, is reported as a NEAR MISS with the gate and the margin named.** It is not promoted and it does not become a verdict. It is simply visible, so nothing is ever again lost silently to a decimal place. If near-misses keep clustering on one gate, that gate is miscalibrated and gets fixed on the evidence at a monthly review, not on the day a name is wanted.

This replaces the instinct to loosen a gate every time it costs something.

### The PASS condition, and why it is not just "passes the gates"

Gates 1 to 8 are all database-side and get a name to WATCHLIST at best. **A QD-only name reaches PASS only on the GWRE configuration: results delivered and guidance raised or reaffirmed healthy, while the price fell.** Guidance merely maintained is a WATCHLIST. Guidance cut, reset, or a reset flagged as expected by the street is a **KILL**, no exceptions and no size-down compromise.

This is the one gate that cannot be run against the database, and it is the gate that has done all the killing: FISV, PODD and TSCO on 2026-08-10, CSGP on 2026-08-18. CSGP is the case to remember, because it cleared every mechanical leg and cleared them well before the guidance cut killed it.

### Live output at adoption, 2026-08-17 closes

Twelve names clear all ten gate conditions: **INTU, PGY, BR, HLNE, SEZL, ISRG, ADSK, WMG, TOST, JKHY, PCTY, LOGI** (ISRG and JKHY already held). Four near-misses surfaced by the new rule: **EPAM** (ROIC 11.2%, 93% of threshold), **WWW** (ROIC 11.4%, 95%), **RMD** (op margin 95.7% of the band), **BSY** (op margin 97.9%).

Two things to apply before any of this is used:

- **Only four have had the guidance check**, which is the actual PASS condition. BR (FY27 healthy, PASS), ADSK (FY27 raised, PASS), INTU (FY27 reset expected, WATCHLIST), HLNE (elevated-risk gate, WATCHLIST). The other eight clear the gates and nothing more.
- **The list is concentrated by construction**: five of twelve are Information Technology and four are Financials. The pressure test showed a good cohort can be one bet wearing twelve tickers, so the 30% theme cap gets applied across the list before any sizing.

**Untested-change note:** the pressure test measured a 120-day veto with no materiality floor. The corrected 180-day/$250k veto is the better rule on reasoning but it has not been backtested, so the +3.2% out-of-sample figure describes a slightly different filter than the one now live. Re-run the three cohorts with the corrected veto at the 8/21 review before quoting either number again.

### Gate re-audit, completed 2026-08-18

Kevin authorised fixing the strict-inequality defect at the class level rather than one gate at a time. Every gate was re-read for the same phrasing:

| Gate | Form | Verdict |
|---|---|---|
| ROIC retention | 90% band | already fixed |
| Operating margin | was strict `>=`, **now 95% band** | **fixed** |
| Debt/equity | 1.05x band | already tolerant |
| Insider veto | was strict net `>= 0`, **now 10% tolerance** | **fixed** |
| Piotroski >= 6 | integer, no measurement noise | no change needed |
| ROIC > 12%, FCF margin > 5%, revenue >= 4%, drawdown <= -20% | level thresholds, not comparisons | cliffs by design, handled by the near-miss rule above rather than by widening |

The four level thresholds are genuine cliffs and always will be. Widening each one to catch a near-miss is the overfitting path; surfacing near-misses instead is the honest one, which is why the near-miss rule exists.

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
- **2026-08-18 (second entry, same day).** **Pressure tested and the alpha claim was withdrawn.** Three non-overlapping out-of-sample cohorts with 3-month forward returns and three control baskets each ([[QD Bar Pressure Test 2026-08-18]]): the bar returned +3.2% against a universe at +3.8% and SPY at +4.5%. It underperformed both. The +20.2% that motivated the path was in-sample and regime-specific. What replicated instead is a low-beta quality tilt: it beat every control by 4-6 points in the falling tape (Aug 2025), lagged the universe by half in the ripping tape (Nov 2025), and beat the universe on median and hit rate in 2 of 3 cohorts. **Reclassified from alpha source to risk filter.** Also recorded: cluster-on-top variants returned n=1 and n=2 showing +33.7% and +17.4%, which are meaningless and are logged specifically so they are never quoted as evidence. Two EPS beats added nothing. Gate changes made live the same day: operating margin to a 95% band, insider veto to a 10% tolerance, and the **near-miss rule** added so future rounding losses are surfaced rather than fixed by widening gates one winner at a time.
- **2026-08-18.** Added the **QD-only path at a higher quality bar** on Kevin's instruction, after the expanded sweep showed the cluster and quality legs no longer co-occurring. Eight database gates plus a mandatory guidance check, with PASS reserved for the GWRE configuration (results up, guidance raised or healthy, price down). Two changes worth flagging as method, not just thresholds: ROIC durability now uses a **90% retention band instead of a strict inequality**, because the strict form was discarding names on one-decimal noise (HLNE at 22.4 vs 22.5); and **Piotroski rises to 6 on this path only**, to compensate for the missing insider confirmation, while staying a floor rather than a ranker. First run returned 9 names from ~10,300, of which 2 reached PASS (BR, ADSK) and 1 was gated on the elevated-risk regime (HLNE). Under test, calibrated on a board already seen, judge it forward.
