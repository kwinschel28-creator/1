---
type: screen-backtest
tags: [investing/process, sourcing, backtest]
created: 2026-08-18
question: "Would the new QD-only bar have passed any name rejected on 2026-06-30, and how did those perform?"
---

# QD Bar Backtest, run 2026-08-18

Kevin's question: screen the new bar against past watchlist entries. Of the names surfaced and rejected on 2026-06-30, which would now have passed, and how have they done?

## Method, and why it is a real backtest rather than a replay

Running today's gates on today's fundamentals would be lookahead, not evidence. Everything below is reconstructed point-in-time as of **2026-06-30**:

- **Fundamentals:** only quarters with a period end on or before **2026-03-31**. A quarter ending 6/30/26 was not filed by 6/30/26, so including it would be reading the future. This is conservative and it costs the screen some freshness.
- **Prices and drawdown:** closes through 2026-06-30 only; the 12-month high is the max close from 2025-07-01 to 2026-06-30.
- **Insider both-sides check:** Form 4 transactions dated 2026-03-01 to 2026-06-30 only.
- **Forward return:** 2026-06-30 close to 2026-08-17 close, 34 trading sessions.
- **Benchmarks over the same window:** SPY **+3.5%**, IWM **+1.2%**, QQQ **-0.9%**.

**What is NOT tested.** The eight database gates are testable point-in-time. The PASS condition, the guidance check, is not: verifying what was known about 13 companies' guidance on 6/30 without contaminating it with what was published afterward is not something this run can do honestly. So the 13 names below are **"would have reached the guidance check,"** not "would have been PASSed." That distinction matters, and the results section shows exactly how much.

## Answer to the literal question: none of them

**Zero of the seven names rejected on 2026-06-30 would have cleared the new bar.** Per-name, with the gate that killed each:

| Rejected 6/30 | Fwd ret | Gate it failed |
|---|---|---|
| GWRE | **+39.8%** | ROIC 4.1% vs the 12% floor, AND net insider selling of $3.3M |
| MMSI | +29.4% | ROIC 5.8%, Piotroski 5 |
| **ADSK** | **+24.3%** | **Operating margin 22.0% vs 22.3%. One gate, by 0.3 points. Everything else passed** |
| LW | +21.6% | ROIC 7.3%, operating margin collapsing 16.4% to 8.1% |
| OPCH | +11.4% | ROIC 9.3%, revenue +1.3%, FCF margin 3.8% |
| IDXX | +3.7% | Quality all fine; failed the **insider veto**, net selling of $1.1M |
| VRNS | +2.9% | ROIC -14.9%, operating margin -25.7% |

Two of these are worth sitting with.

**IDXX is the bar working.** It cleared every quality gate and was blocked only by net insider selling. It then returned +3.7%, essentially SPY. The veto removed the weakest quality name in the cohort, which is what it is for.

**ADSK is the bar failing, and failing in a way I have already seen once.** It missed on a strict inequality against a ratio that moved 0.3 points, and returned +24.3%. This is the identical defect to the ROIC retention problem fixed yesterday (HLNE dropped on 22.4 vs 22.5). The operating-margin gate is still phrased as a strict inequality on a noisy ratio. See the proposed amendment below.

## What the bar would have found instead

Run across the full US common-stock universe above $1B as of 6/30, the eight gates returned **13 names**, none of which was ever on Kevin's 6/30 list.

| Ticker | Sector | 6/30 px | 8/17 px | Fwd ret |
|---|---|---|---|---|
| GCT | Cons Disc | 31.60 | 50.28 | **+59.1%** |
| PCTY | InfoTech | 104.53 | 145.47 | **+39.2%** |
| DXCM | Health Care | 67.35 | 88.76 | **+31.8%** |
| INTU | InfoTech | 261.00 | 335.60 | **+28.6%** |
| PTC | InfoTech | 113.61 | 145.98 | **+28.5%** |
| ADP | Industrials | 223.95 | 266.06 | +18.8% |
| YUMC | Cons Disc | 40.87 | 47.14 | +15.3% |
| RMD | Health Care | 194.88 | 220.37 | +13.1% |
| KNSL | Financials | 329.81 | 367.16 | +11.3% |
| JKHY | Financials | 137.74 | 149.87 | +8.8% |
| TWFG | Financials | 24.05 | 26.08 | +8.4% |
| LOGI | InfoTech | 94.04 | 101.12 | +7.5% |
| PODD | Health Care | 152.25 | 139.70 | **-8.2%** |

**Average +20.2%, median +15.3%, 12 of 13 positive, against SPY +3.5%.**

**The single loser is the name the qualitative layer killed.** PODD cleared all eight database gates and was the only negative. It was independently killed on 2026-08-10 on a thesis crack: Type 2 patients discontinuing before 90 days, plus a securities class action. Excluding it, the remaining 12 average **+22.5%**. This is the strongest single piece of evidence in the run, and it is evidence for the *two-layer* design, not for the screen: the database gates found one bad name in thirteen, and the layer above it caught exactly that one.

## Comparison to what was actually bought

Kevin's 6/30 and 7/2 purchases, same window: VEEV +34.3%, GEHC +13.1%, KMX +10.7%, XRAY +5.5%, VRTX +3.8%, ZTS +1.5%, NBIS -2.7%. **Average +9.5%.**

So: bar +20.2%, actual buys +9.5%, SPY +3.5%. Both beat the index; the bar roughly doubled the realised result. VEEV, his best pick of the group, failed the new bar on Piotroski 4 and ROIC 9.7%, which is a point against the bar and is recorded as such.

**One concrete cost of the sourcing gap:** JKHY cleared the bar on 6/30 at **$137.74**. Kevin bought it on 8/14 at **$153.87**, six weeks later and 12% higher, after a deep dive that reached the same conclusion. The bar was not the binding constraint on that decision; seeing the name was.

## What this does and does not establish

**Does:** the constraint on 6/30 was **sourcing, not filtering**. Kevin chose reasonably from the list he was given; the list was the problem. No amount of better judgment applied to GWRE, VRNS, MMSI, LW, IDXX and OPCH gets to GCT, PCTY, DXCM, INTU and PTC, because those five were never presented.

**Does not:**

1. **n=13 over 7 weeks is not proof**, the same caveat the ledger applies to its own n=13 baseline.
2. **One regime.** SPY +3.5% and QQQ -0.9% over the window. The bar selects high-ROIC, low-debt, cash-generative names bought on drawdown, and that factor combination had a good seven weeks. It can have a bad six months.
3. **The drawdown gate created a correlated bet.** The top five performers (GCT aside) are all names that had de-rated in the H1 2026 quality-software selloff. PCTY, PTC, INTU, ADSK and DXCM rebounding together is closer to one bet paying off than to thirteen independent calls. Any live use of this list needs the theme cap applied across it.
4. **The guidance gate is untested**, per the method note. Its only appearance in this data is that it would have removed the one loser.

## Proposed amendment, NOT live, Kevin's call

**Change the operating-margin gate from a strict inequality to a 95% retention band**, matching the treatment ROIC already gets.

- Evidence: ADSK, the single highest-quality near-miss in the cohort, failed on 22.0 vs 22.3 and returned +24.3%. The defect class is already documented (HLNE, 22.4 vs 22.5).
- Against it, stated plainly: this is the second sample in two days where I have loosened a gate after seeing that a name I liked failed it. That is the shape of overfitting, and two data points is how it always starts. The ROIC band change had an independent argument (measurement noise on a ratio); this one has the same argument, but it also happens to admit a name that went up 24%.
- Recommendation: adopt it for the *reason*, which is that strict inequalities on noisy ratios are a measurement error, and re-audit every remaining gate for the same phrasing at the 8/21 review rather than fixing them one winner at a time.
