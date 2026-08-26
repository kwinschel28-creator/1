---
type: re-underwrite
date: 2026-08-26
covers: WMG, REZI, LOGI, ENS
follows: Kevin's request to deep dive the potential PASSes
verdict: all four remain WATCHLIST. None can reach PASS before late October
---

# Watchlist Re-underwrite 2026-08-26: the four guidance-blocked names

Kevin asked for deep dives on the potential PASSes. Six names qualified. Two, HLNE and PGY, were blocked on the Philosophy elevated-risk gate and a deep dive could resolve them; both are written up separately and **both are now closed, neither for the reason it was parked behind.**

These four are different, and the distinction is the point of this note.

## Why a deep dive cannot promote any of these today

WMG, REZI, LOGI and ENS each cleared all eight database gates and each was held at WATCHLIST on the **same** leg: the guidance condition. [[Sourcing Rules]] reserves PASS for the GWRE configuration, results delivered with guidance raised or reaffirmed healthy while the price fell. Guidance merely maintained is a WATCHLIST. All four are "maintained" or "no full-year guide exists."

**That is a fact about a dated future event, not a gap in analysis.** No amount of work done today changes what these companies have already guided. The only thing that can promote them is their next print. So the useful output here is not a verdict, it is: what exactly has to happen, when the date is, and whether the business is worth the wait.

Answer up front: **the earliest any of the four can produce a PASS-eligible event is late October 2026, and three of the four are early-to-mid November.** There is nothing to act on in this pipeline for roughly nine weeks.

## The four, at the 2026-08-25 closes

| | WMG | REZI | LOGI | ENS |
|---|---|---|---|---|
| Close | 28.06 | 19.93 | 98.65 | 194.29 |
| Off 12m high | -20.8% | -36.8% | -23.9% | -20.5% |
| Market cap | $14.6B | $3.0B | $14.2B | $7.1B |
| Forward P/E | 15.8 | 8.6 | 17.4 | 18.8 |
| EV/EBITDA | 12.8 | 6.5 | 12.4 | 13.0 |
| FCF yield | 5.7% | **-46.4%** | 7.2% | 10.1% |
| Street target | 36.88 | 34.25 | 108.60 | 253.23 |
| Short % float | 8.4% | 6.1% | 8.3% | 6.7% |
| Gate 7, 180d | zero activity | 3 buyers, $848k, no sellers | zero activity | 1 buyer, $24.7k, no sellers |
| Last print | 2026-08-05 | 2026-08-12 | 2026-07-28 | 2026-08-12 (disputed) |
| **Next print** | **~mid-Nov** | **~early Nov** | **~late Oct** | **~early Nov** |

## REZI: the FCF line disqualifies it before the guidance question

The 8/25 row held REZI at WATCHLIST on reaffirmed guidance and flagged that the ADI Global spin-off on 2026-08-03 makes the drawdown span two different companies. **There is a third problem and it is larger than both.**

REZI's trailing FCF yield is **-46.4%**, and `fundamentals_derived_daily` carries a `LOW_EARNINGS_QUALITY` flag. On a $3.0B market cap that implies roughly $1.4B of negative trailing free cash flow. Alongside it sits a trailing P/E of 7.1 and a P/B of exactly 1.00, which are the multiples of a company the market thinks is worth its book and not much more.

The most likely explanation is the spin-off distorting the trailing cash flow statement, which would make the figure an artifact rather than a going-concern signal. **But that is a hypothesis, and the point is that it has to be resolved before the name is credible at all.** A screen that ranks REZI on a 7.1x P/E while the same table flags its earnings quality and shows deeply negative FCF is not measuring one company consistently.

**REZI is therefore downgraded from WATCHLIST to HOLD PENDING RESTATEMENT.** It does not re-enter the funnel until there is one clean post-spin quarter where revenue, margins, FCF and the share count all describe the same entity. The Q3 print in early November is the first such quarter. Until then every gate reading on this name is untrustworthy, not just gate 8.

The insider cluster is the one genuinely clean thing here: 3 discretionary buyers, $848k, zero sellers, all post-print. It is not enough to carry a name whose financials cannot be read.

## LOGI: the cheapest to wait on, and the clock is a known negative

Clears all eight gates cleanly. ROIC 33% at 120% retention, zero debt, 20.7% FCF margin, Piotroski 6, operating margin 21.1% against 14.1% a year ago.

Two things hold it. The 47% EPS growth at Q1 FY27 contained $61M of tariff refunds, which the 8/19 WDFC rule requires be stripped before scoring, and management quantified a chip supplier's plant closure at up to **$200M of Q3 net sales**, largely resolved by Q4. Logitech issues no full-year outlook, so **there is no annual guide to raise and the PASS condition is structurally hard for this name to satisfy**, in the same way it is for an asset manager.

What makes it worth keeping: the $200M supplier hit is dated, quantified and self-resolving. If the late-October print shows Q3 absorbed roughly that much and the operating margin holds near the high end of the 15-18% long-term range, the bear case retires on schedule. That is a rare thing, a bear case with an expiry date.

Note gate 7 reads "zero activity," not "net buying." Zero insider activity is acceptable on the QD path by design, but insider ownership of 0.2% means there is nobody here whose skin is worth watching either way.

## ENS: an unresolved data discrepancy, and it is not trivial

The 8/20 and 8/25 ledger rows both date the Q1 FY27 print to **2026-08-19** with adjusted diluted EPS of **$3.09**. The database has `report_date` **2026-08-12** with `eps_actual` **3.66** against a 2.82 estimate. **Two dates and two EPS figures for one print.**

This is worth more than the name. **The 8/21 recency gate keys off `report_date`**: an insider purchase counts as confirming only if it postdates the most recent earnings report. If the true print date is 8/19 and the database says 8/12, then any purchase in that week is scored as post-print when it is actually pre-print. That is the exact HUBS failure the recency gate was written to prevent, reintroduced through a data error rather than a rule error. It would apply silently across every name in the screen, not just ENS.

**Action: the discrepancy is logged, not resolved.** Resolving it means reading the 8-K. It goes to the monthly review as a data-integrity item with the note that the recency gate inherits whatever error `report_date` carries.

On the name itself, the 8/25 correction stands and is the binding issue: Q1 FY27 growth was led by data-center, communications and defense demand, so ENS sits **partly inside the AI/data-center theme already at 47.8% against a 30% hard cap.** It is a weaker diversifier than the 8/20 row claimed. Its headline EPS also contains a $31M tariff refund and $9M of 45X credits, and management's own ex-45X Q2 guide is $1.95-2.05 against a headline $3.15-3.25. Results up, no full-year raise, policy-dependent earnings.

## WMG: the best diversifier and the weakest balance sheet optics

The only one of the four with no theme overlap at all, which is what the deployment mandate keeps asking for. Clears all eight gates: ROIC 13.4% from 9.4%, operating margin 16.4% from 10.0%, Piotroski 6, revenue +10.4%, FCF margin 11.4%.

Held because FY26 was reaffirmed and not raised. Two live negatives from the 8/24 row stand: the AFM suit over AI licensing to Suno and Udio, and a 7/31 executive shakeup with an early print.

Add one from this pass: **P/B of 17.14.** Warner Music carries very little book equity against $14.6B of market value, which is normal for a catalogue business where the asset is off-balance-sheet copyright, but it means there is no asset floor under the price. Combined with a 2.73% dividend and 5.7% FCF yield, this is a cash-return story whose terminal value rests entirely on how streaming economics and AI licensing settle. The AFM suit is not a sideshow; it is a question about whether the catalogue's economics survive generative models.

**The catalyst is the best-shaped of the four.** WMG's fiscal year ends in September, so the mid-November print is a Q4 **and** the first FY27 outlook. That is a real guidance event with a real chance of producing the GWRE configuration, unlike LOGI and ENS which issue no annual guide.

## Ranking, if the pipeline had to be ordered today

1. **WMG.** Genuine diversifier, a real annual-guidance event in mid-November, the cleanest reason to wait.
2. **LOGI.** Quality is not in question, the bear case is dated and self-resolving, but no annual guide makes PASS structurally hard.
3. **ENS.** Partly inside the theme that is already 60% over its cap, and the earnings quality decomposes twice. The mandate asks for diversifiers and this is not one.
4. **REZI.** Out of the funnel until one clean post-spin quarter exists.

None is a buy. None is close to a buy. **The honest summary of this pipeline is that it is empty until late October**, and the two names that looked closest to a PASS were closest for reasons that did not survive being checked.

## The systemic finding, escalated rather than patched

Across the three notes written today, **gate 8 has misfired in three distinct ways in nine days**:

| Date | Name | How gate 8 was wrong |
|---|---|---|
| 2026-08-19 | WDFC | 12-month high was a single-session earnings gap, fully retraced within 15 sessions |
| 2026-08-25 | REZI | Drawdown spans the ADI Global spin-off, comparing two different companies |
| 2026-08-26 | PGY and HLNE | Price has recovered most of the way off the low; the drawdown is historical, not current |

One design flaw, three symptoms: **distance from a trailing high says nothing about whether a price is dislocated now.** HLNE is 31.6% off its high and 39% above where its own insiders bought ten weeks ago. PGY is 50.5% off its high and up roughly 100% from its March low.

Per the standing rule in [[Sourcing Rules]] that gates are fixed at the monthly review on evidence and never on the day a name is wanted, **this is escalated, not patched.** The candidate fix to evaluate at the review is to pair gate 8 with a second measurement that is current rather than historical: distance from the 12-month low, or distance from the volume-weighted price at which insiders last bought. The near-miss rule exists for the same reason and is the model to follow.

A second, smaller fix from the PGY work, which is cheap enough to make immediately: **every insider gate must report the row count it measured, and must print "not measured" rather than passing when that count is zero.** PGY passed gate 7 on an empty result set caused by a string filter that does not match "Ordinary Share." A gate must never pass on absence of evidence when absence of evidence is indistinguishable from a filter miss.

## Provenance

Agent-produced, conviction BORROWED throughout. Kevin has done no independent work on any of these four. Prices, multiples and fundamentals from the Shibui database at the 2026-08-25 closes. Insider aggregates re-run over the standing 180-day window. Guidance facts carried forward from the 8/20, 8/24 and 8/25 ledger rows and not independently re-verified in this pass, except where flagged as disputed.
