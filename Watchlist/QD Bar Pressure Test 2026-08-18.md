---
type: screen-pressure-test
tags: [investing/process, sourcing, backtest]
created: 2026-08-18
verdict: "Does not demonstrate alpha out of sample. Adopt as a risk filter, not an alpha source."
---

# QD Bar Pressure Test, 2026-08-18

Kevin's instruction was to pressure test the bar so it generates alpha. A pressure test that sets out to confirm is not a test, so this one tried to break it: out-of-sample cohorts on dates the gates were never fitted to, control baskets that isolate what the gates actually add, and variant tests on the legs.

**Headline: the bar does not demonstrate alpha out of sample. The +20.2% result that motivated it was in-sample and regime-specific.** Detail below, then what the evidence does support.

## Design

Three **non-overlapping** as-of dates before the one the gates were designed on, each with a **3-month forward return**. Non-overlapping matters: overlapping windows share price history and manufacture apparent consistency.

Point-in-time discipline identical to the 6/30 backtest: fundamentals restricted to period ends at least 90 days before the as-of date (so they were actually filed), 12-month high computed only from closes at or before the as-of date, Form 4s from the four months before it.

Three controls per cohort, because "beat SPY" is the wrong bar for a screen that selects drawdown plus quality:
- **Dip only:** everything 20%+ off its 12-month high.
- **Quality only:** everything with ROIC above 12%.
- **Whole universe:** all US common stocks above $1B that survive the data joins.

## Results

| As-of | Fwd | **BAR** | median | hit | Dip ctrl | Qual ctrl | Universe | SPY |
|---|---|---|---|---|---|---|---|---|
| 2025-08-18 | 3mo | **+2.5%** (n=9) | -0.9% | 44% | -3.2% | -2.8% | -1.1% | +2.6% |
| 2025-11-17 | 3mo | **+5.4%** (n=17) | +5.7% | 59% | +7.8% | +9.1% | +10.4% | +2.6% |
| 2026-02-17 | 3mo | **+1.7%** (n=15) | +0.2% | 53% | +3.1% | -0.1% | +2.2% | +8.2% |
| **Mean of 3** | | **+3.2%** | | 52% | +2.6% | +2.1% | **+3.8%** | **+4.5%** |
| _2026-06-30 (in-sample)_ | _7wk_ | _+20.2% (n=13)_ | _+15.3%_ | _92%_ | _n/a_ | _n/a_ | _n/a_ | _+3.5%_ |

**Out of sample the bar returned +3.2% against a universe at +3.8% and SPY at +4.5%. It underperformed both.**

## What actually happened, cohort by cohort

The pattern is consistent and it is not alpha, it is **beta**.

- **Aug 2025, falling tape.** Universe -1.1%, dip control -3.2%, quality control -2.8%. Bar **+2.5%**. It beat every control by 4 to 6 points and was the only group positive.
- **Nov 2025, ripping tape.** Universe +10.4%. Bar **+5.4%**, roughly half. It lagged every control.
- **Feb 2026, choppy tape.** Universe +2.2% on a **-2.4% median** (a few big winners carrying a broadly negative cross-section). Bar +1.7% on a **+0.2% median** and a 53% hit rate against the universe's 43%.

That is a low-beta quality tilt: it wins on relative terms when things fall, gives up upside when they rise, and clips both tails. Averaged over a period when the market rose, that nets out to slightly behind.

The medians tell the more useful story than the means. Bar median beat universe median in 2 of 3 cohorts, and in both of the bad tapes. Mean hit rate 52% against the universe's 49%. **The bar improves the typical outcome and reduces disaster risk. It does not raise expected return.**

## Variant tests, and one trap

Tested on the two largest cohorts: bar alone, bar plus an insider cluster (2+ discretionary buyers), bar plus two consecutive EPS beats, bar plus both, and cluster alone without the bar.

**The cluster-on-top variants returned n=2 and n=1.** They showed +17.4% and +33.7%. Those numbers are meaningless and are recorded here specifically so they are not quoted later as evidence. One or two names is not a result, however good it looks, and a screen this restrictive stacked on a bar this restrictive will keep producing tiny samples that occasionally look brilliant. **This is the single most seductive output of the whole exercise and it should be ignored.**

**Cluster alone (no bar)** had real sample sizes and repeated the same beta pattern: Nov 2025 n=116 at +8.6% against the bar's +5.4%; Feb 2026 n=101 at **-2.2% with a 41% hit rate** against the bar's +1.7% and 53%. Cluster-only wins the rally, loses the chop. Neither leg is an alpha source on this evidence; both are style tilts.

**Two EPS beats added nothing:** +3.0% vs +5.4% in one cohort, +3.6% vs +1.7% in the other. Mixed sign, no signal.

## Limits of this test, stated so they are not discovered later

1. **Survivorship bias.** The universe is built from the current ticker list, so companies delisted or acquired between the as-of date and now are absent. Acquisitions usually resolve at a premium, so all groups are probably understated. It hits every group, so **relative comparisons are sounder than absolute levels** and the relative comparisons are what this note relies on.
2. **n is thin.** Nine to seventeen names per cohort for the bar, and three cohorts is three observations of the strategy. This is enough to say the +20.2% did not replicate. It is not enough to say the bar is bad.
3. **Failing to demonstrate alpha is not the same as demonstrating no alpha.** The correct standard for *adopting* something as an alpha source is that it shows alpha, and this did not clear it. That is the claim being made, and no more.
4. **The guidance layer is untested here** and it is the layer that has done all the killing (FISV, PODD, TSCO, CSGP). Every number above is the database gates alone. The one place a qualitative layer showed up in any test was the 6/30 cohort, where the single loser was the exact name it killed.

## What the evidence supports, and what changes

**Drop the alpha claim.** The bar is adopted as a **risk filter and candidate qualifier**, not a source of return. That is not a demotion to nothing: Kevin's documented, repeated failure mode is buying weaker names in haste (six same-session screen-to-buy events; the 7/21 ledger finding that the best names get left while weaker ones get bought). A filter that raises the median and the hit rate and cuts the left tail acts directly on that failure mode. It is worth having for that reason and stated in those terms.

**Where alpha would have to come from**, on this evidence, is the layer the backtests cannot see: the guidance check, the first-pass, the deep dive, and the decision discipline. The database gates narrow ~10,300 names to 9 to 17. What happens to those 9 to 17 is where the outcome is decided.

**The theme cap becomes load-bearing.** The bar concentrates by construction: in the 6/30 cohort five of the top performers were the same H1 2026 quality-software de-rating. Any live list from this screen needs the 30% theme cap applied across it before sizing, or a good cohort is one bet, not thirteen.
