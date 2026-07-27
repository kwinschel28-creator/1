---
type: sell-discipline
tags: [investing/process]
updated: 2026-07-21
---

# Sell Discipline

What this note is for: when you sell, trim, or hold. The re-test workflow applies this as if the position were flat (to fight endowment bias), the bias audit checks whether you're holding for a good reason or a sunk-cost one, and the daily brief's trim monitor enforces the Lane B lines below.

## First principle

Rising price is not a sell signal. Selling a winner just because it rose is the disposition effect. Trims come from one of four things only: risk (position too big), valuation (price fully reflects the optimistic case), thesis (the reason to own changed), or time (a dated bet ran out its clock). If none of those is true, a gain is not a reason to act.

**The test:** would you buy this position today, at this price and weight, if you didn't already own it? If no, the hold needs a reason that isn't about what you paid.

## The system is lane-aware

The two lanes are different bets and get different exit rules. Conflating them is the mistake.

### Lane A (quality compounder): let winners run

A compounder is meant to run for years. Do not trailing-stop it and do not harvest it on valuation. It trims for exactly two reasons:

- **Concentration:** it grows past the 20%-at-market hard-trim ceiling. Trim back to the line. This is a risk action at a preset level, not a price call. (GOOG is the live case: trimmed only because it is ~2.3x the ceiling.)
- **Thesis break:** a load-bearing claim fails (see the per-name triggers in [[Holdings]]).

### Lane B (insider / special-situation / turnaround): active harvest

A special situation is a bet with a defined payoff. Once the gap to fair value closes, the edge is gone, and holding it hoping it compounds is holding a bet you never underwrote. Lane B winners get harvested. Any one of these fires a written trim/exit decision:

1. **ATR trailing stop (mechanical, checked daily by the brief).** Stop = highest close since entry minus 3 x ATR(14). A close at or below the stop = trim signal. This protects the unrealized gain on a volatile turnaround without selling merely because it rose. The 3x multiple is tunable; tighten it as a name matures.
2. **Valuation target (set at buy).** A preset price where the turnaround is "recognized" (normalized-earnings multiple, prior-cycle high, or analyst target). Reaching it = harvest at least a tranche. If no target was set at entry, that is a gap to fill, not a reason to skip the rule.
3. **Thesis-completion (qualitative, checked at earnings and the weekly retest).** The specific milestone that WAS the bet is met (margins inflect, turnaround recognized), OR the insider cluster reverses to selling. Either way the reason to own is gone. Decide.
4. **Time stop.** If the thesis is not proven within ~6 quarters, it is dead money. Re-underwrite in writing or exit. Turnarounds have a clock; do not let one become a permanent hold by inertia.

Plus the standing **concentration** line: 7%-at-market ceiling, trim back.

## Trim mechanics

- Default is to trim in tranches, not all-or-nothing. A fired stop or valuation target = sell a tranche (a third to a half) and re-set the stop on the rest. A thesis break or clean thesis-completion = full exit.
- Every fired trim owes a one-line written decision, same discipline as a buy. "Stop crossed" is the trigger, not the decision.

## Honest history (what the agent should push on)

The [[Idea Ledger]] shows two recurring errors. One is buying in haste before a thesis exists (buy-side). The other, relevant here, is letting the best names sit un-harvested. For Lane B, push the harvest side: when a turnaround has worked and a line is crossed, push me to lock in a tranche, not to hold hoping for compounding the position was never underwritten to deliver. Do not push me to sell a Lane A compounder just because it rose.
