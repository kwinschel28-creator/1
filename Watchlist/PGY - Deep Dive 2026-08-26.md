---
type: deep-dive
ticker: PGY
company: Pagaya Technologies Ltd
date: 2026-08-26
follows: Idea Ledger row 2026-08-19 (blocked on the elevated-risk gate)
verdict: KILL. Fails gate 7 once the gate can see it
---

# PGY (Pagaya Technologies) - Deep Dive 2026-08-26

Anchor: 22.26 (2026-08-25 close). Market cap $1.84B. Forward P/E 6.0, trailing P/E 14.5, EV/EBITDA 18.8, P/B 3.1, FCF yield 13.6%. Short interest **17.5% of float**. Insider ownership 9.1%. 12-month high 44.99, 12-month low around 11. Israel-domiciled, Class A Ordinary Shares.

## Verdict: KILL

The 8/19 ledger row said PGY "clears the eight database gates" and was blocked only on the Philosophy elevated-risk regime for opaque lending models. **The first half of that is false, and the reason it looked true is a screening defect worth more than the name is.**

PGY does not clear gate 7. It was never measured against gate 7, because the mandatory insider guard filters on `security_title ILIKE '%common%'` and Pagaya's shares are titled **"Class A Ordinary Share."** Every one of its Form 4 rows is dropped. The query returns zero rows, and zero rows reads as a clean file rather than as an unmeasured one.

Measured properly over the standing 180-day window:

| | Value |
|---|---|
| Discretionary buys | **$501,018** (CEO Krubiner, 2 lots, 6/02 and 6/24, at ~$15) |
| Discretionary sells | **$1,087,728** (President Das $468,358 and Rosen $619,370, both 2026-08-03, at ~$22) |
| Net | **-$586,710** |

Selling exceeds buying by 117%, past the 10% tolerance, and net selling of $587k is past the $250k materiality floor. **Both veto conditions are met.** Gate 7 kills it.

The shape is worse than the arithmetic. The CEO bought at $15 in June. The President and a senior officer sold $1.09M at $22 in August, discretionary, not 10b5-1, **three days after** the 7/30 print at which the company raised full-year guidance. The most recent informed action on this name is selling into good news at a doubled price.

## Item 1: the screening defect, which is the real finding

This is a whole-class blind spot, not a one-name miss.

Guard 3 in the insider workflow is mandatory and correct in intent: filter to common stock so that preferred units and special securities with wildly different per-share prices do not corrupt dollar aggregates. Its implementation is a string match on `'%common%'`. **Foreign private issuers and many ADR-structure companies title their equity "Ordinary Shares."** Those rows match nothing and vanish.

The failure mode is the dangerous kind: it does not error, it does not return a warning, it returns an empty set that every downstream reader interprets as "no insider activity, gate clean." PGY had **$3,098,423 of Form 4 buy and sell activity in 180 days** and the gate scored it as silent.

This is the same defect class the vault has now logged three times:
- **2026-08-18, gate 7 window.** An unstated measurement window meant a name with 3.4x more buying than selling was vetoed as a net seller. Conclusion recorded then: "an unstated parameter is a bug, not a judgement call."
- **The NULL-falls-through rule** in the database guards: a CASE verdict on nullable data silently mis-classifies unless NULL is checked first.
- **This one.** An unmatched string filter returns empty and empty reads as clean.

**Proposed fix, for [[Sourcing Rules]]:** every insider gate must (a) match `'%common%' OR '%ordinary%'`, and (b) **report the row count it measured**. A gate that returns zero rows must print "not measured" rather than passing silently. A gate cannot be allowed to pass on absence of evidence when absence of evidence is indistinguishable from a filter miss. This is cheap and it generalises to every screen in the stack.

Names potentially affected: any Israel, UK, Cayman or Bermuda-domiciled issuer in the universe. The screen has been running gate 7 blind on all of them for as long as the guard has existed.

## Item 2: the business, and the elevated-risk brief

Delivered because Philosophy requires it for an opaque model regardless of verdict.

**How it makes money.** Pagaya is not a lender and not really software, despite the Systems Software GICS tag. It sits between consumer-credit originators (banks, auto lenders, fintechs) and capital markets. A partner declines a borrower or wants to extend more credit; Pagaya's models underwrite that borrower, and Pagaya arranges for the resulting loan to be funded by investors through asset-backed securitisations. It earns fees on volume passing through the network.

**What the balance sheet hides, and this is the whole risk.** US risk-retention rules require the sponsor of a securitisation to keep skin in the game, typically 5%. So **Pagaya retains a slice of every deal it arranges.** Its balance sheet accumulates the credit risk of the loans it underwrites. Three consequences:

1. Growth in network volume mechanically grows retained credit exposure. Volume up 33% means retained risk up roughly 33%.
2. **Earnings depend on fair-value marks on those retained positions**, which are model-derived, not observed prices. Reported net income is partly an estimate of future consumer credit performance made by the same firm whose models originated the credit.
3. The funding is procyclical. ABS markets are open until they are not. $3.7B across six transactions in one quarter is excellent execution and is also a dependency.

**The one or two numbers that break it.** Consumer credit losses running above the underwriting assumptions, and ABS spreads widening. Either one hits fee volume and the retained-position marks at the same time. This is a levered bet on US consumer credit wearing a technology multiple, and the 17.5% short interest is the market pricing exactly that disagreement.

**My reading: the regime applies and the model is genuinely opaque.** Materially harder to underwrite than HLNE. The economics turn on the accuracy of proprietary credit models that cannot be independently verified from outside, and the accounting turns on fair-value marks on retained tranches. This is the far end of the circle, and the Philosophy language for it is exact: "balance sheets I cannot reliably model."

## Item 3: what is genuinely good, stated plainly

The kill is on gate 7, so the business case deserves fair treatment.

The 2026-07-30 Q2 print was strong on every disclosed line: GAAP net income $45M, operating income $106M, adjusted EBITDA $124M, total revenue and other income +19% to $387M, network volume +33% to $3.5B on Auto strength, and $3.7B of ABS funding across six transactions. **Full-year 2026 net income guidance was RAISED to $155-180M**, with higher outlooks for volume, revenue and adjusted EBITDA. Fitch put the credit on positive outlook.

Four consecutive EPS beats, three of them large: +54.0%, +30.4%, +3.9%, +54.5%. A company reaching GAAP profitability with rising operating leverage. **On results and guidance this is the GWRE configuration**, and it is the only name in the current pipeline that has actually raised a full-year number.

That is precisely why the veto matters. The quality legs are the ones that make a name attractive; the veto is the leg that asks whether the people who can see the loan tape agree.

## Item 4: the dislocation is stale, and this is the third instance

Gate 8 scores PGY at -50.5% off a 12-month high of 44.99. That reads as deep dislocation and it ranks the name near the top of the funnel.

**The stock is up roughly 100% from its March low near $11.** The 50% drawdown is a measurement against a high set before a collapse the market has already substantially repaired. There is no live dislocation to buy; there is a recovery in progress, and the insiders sold into it.

Gate 8 has now misfired in three distinct ways inside nine days:

| Date | Name | How gate 8 was wrong |
|---|---|---|
| 2026-08-19 | WDFC | 12-month high was a single-session earnings gap, fully retraced in 15 sessions |
| 2026-08-25 | REZI | Drawdown spans the ADI Global spin-off, so it compares two different companies |
| 2026-08-26 | PGY, and HLNE | Price has recovered most of the way from the low; the drawdown is historical, not current |

The common cause is that **distance from a trailing high says nothing about whether a price is dislocated today.** Three different symptoms, one design flaw. Escalated to the monthly review in the 2026-08-26 re-underwrite note rather than patched here, per the standing rule against fixing gates on the day a name is wanted.

## What would change the verdict

1. **The insider picture inverting.** A post-print cluster of discretionary buying above $250k that outweighs the 8/03 sales. The CEO buying alone will not do it while the President is selling twice as much.
2. **Two more quarters of credit performance** through a period of rising consumer delinquency, showing retained-position marks holding. That is the thing that cannot be assumed.
3. It would still then need Kevin's three-question check on an opaque credit model, and would still be size-capped at the low end.

**Next dated catalyst: Q3 2026, expected early November 2026** (Q2 was 2026-07-30).

## Provenance

Agent-produced, conviction BORROWED. Prices and fundamentals from Shibui at the 2026-08-25 closes. Insider transactions from SEC Form 4 data, re-run without the common-stock filter specifically to defeat the defect described in Item 1. Q2 results and the raised guidance from the sources below. The risk-retention and fair-value mechanics are general knowledge about the securitisation model and were not verified line by line against Pagaya's latest filing; if this name is ever revisited, the retained-interest balance and its fair-value assumptions are the first thing to read.

Sources:
- https://investor.pagaya.com/news-releases/news-release-details/pagaya-reports-second-quarter-2026-results-raises-full-year-net
- https://www.sec.gov/Archives/edgar/data/0001883085/000188308526000027/earningspressreleasefina.htm
- https://seekingalpha.com/news/4621459-pagaya-technologies-stock-surges-after-q2-results-smash-expectations-on-network-volume-growth
