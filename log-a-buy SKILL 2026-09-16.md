---
type: skill-source
tags: [investing/process, automation]
updated: 2026-09-16
purpose: Corrected body for the `log-a-buy` Cowork skill. The live skill is four rule-versions stale. Only Kevin can paste this in.
---

# log-a-buy: corrected skill body (staged 2026-09-16)

**Why this file exists.** The `log-a-buy` skill is the pre-trade enforcement point: it is the thing that is supposed to stop a buy before it is logged. Audited 2026-09-16, it is running behind the vault on four counts, and the two that matter most are gates that no longer exist and a gate that does exist and is missing.

The skill lives in the synced skills directory, outside this repo, keyed by account UUID. The agent cannot durably edit it. **Only Kevin can paste this into the skill editor.** This is the same constraint as the stored routine prompt, and it is handled the same way: the corrected text is versioned here, and until it is pasted, **the vault is authority and the skill is wrong**.

## What was stale, with dates

| Live skill says | Status | Corrected by |
|---|---|---|
| Gate 1: "ask for the one-sentence thesis" | **RETIRED 2026-07-23.** Per-company one-liners are gone; [[Holdings]] already notes "the reconcile skill still asks for them and the vault overrides it" | Replaced with the three-question check |
| Gate 5: "Financials / real estate / utilities are out" | **REMOVED 2026-07-16.** No sector exclusions; opaque models enter via the elevated-risk regime instead | Replaced with the elevated-risk regime |
| No three-question check anywhere | **Added 2026-08-10** and is the only comprehension gate left in the system | Now gate 3 |
| No not-this-week rule, no entry DD | **Added 2026-09-16** after the PATK and BSX exits | Now gates 1 and 2 |

Note the shape: the skill was enforcing two rules Kevin had already retired while not enforcing the one rule that replaced them. A stale gate is worse than no gate, because it produces the feeling of having been checked.

---

## PASTE BLOCK BEGINS

```markdown
---
name: log-a-buy
description: Pre-trade gate that logs a stock purchase to Holdings.md only after the process rules pass. Trigger on "I bought X", "buying X", "add X to holdings", "log this trade", "about to buy". Enforces the not-this-week rule, the entry due-diligence check, the three-question check, lane assignment and cap checks BEFORE the position is recorded.
---

# Log a Buy (pre-trade gate)

Kevin's rule: no new money without the gates below passing. In practice buys land first and get flagged as violations days later. This skill moves the audit to the moment of entry.

**Read the vault first and treat it as authority over this file.** `Checklist.md`, `Holdings.md`, `Portfolio Strategy.md`, `Philosophy.md`. If this skill and the vault disagree, the vault wins and you say so in one line rather than following a stale gate. Never carry roster, caps or thresholds in this file.

## Gate sequence (all before writing anything)

1. **Not-this-week rule.** Was this name surfaced by a screen, brief or agent output in THIS trading session? If yes, this buy breaches the rule: at least one full trading session must close between surface and fill. Say so plainly. If he buys anyway, log it as `NOT-THIS-WEEK BREACH (logged over objection <date>)`. This is the single filter that catches all six same-session screen-to-buy events and both 2026-09-16 exits.

2. **Entry due-diligence check.** Two questions, both owed BEFORE any trigger is written.
   - **Pending business combination?** Query Shibui: Forms `425`, `S-4`, `DEFM14A`, `SC 13E3` in the last 15 months. Do NOT add the 8-K item 1.01 leg, it fires on everything. Report the result either way, including a clear one. A flag is a prompt to read the filing: an acquirer filing S-4s for bolt-ons differs from a company that has agreed to be merged. **If it has agreed to be merged, say explicitly that a Lane B ATR stop would be trailing a deal spread, not the operating thesis.**
   - **Current guidance, as of what date?** Name the figure and its date. **If the latest print supersedes it, the trigger is written against the new number or not written at all.**
   - Incomplete and bought anyway: log `ENTRY DD INCOMPLETE (logged over objection <date>)`.

3. **Three-question check** (the 2026-08-10 amendment, the only comprehension gate left). Ask him to answer out loud, without looking at the brief:
   1. How does this company make money?
   2. What is the single thing that would break it?
   3. What would make me sell?
   Two minutes. A fail means capped starter size or no buy. Record whether it was run; "no check recorded" is itself the finding, and it is what preceded the BSX loss.

4. **Elevated-risk regime** (Philosophy, amended 2026-07-16). No sector is excluded. But balance-sheet-opaque models (banks, insurers, brokers, REITs, utilities) require the agent's essential-information brief AND full written deep dive BEFORE the buy, plus capped starter size. Name any such gate still open.

5. **Lane + size check.** Read the bands from `Portfolio Strategy.md`, never from memory. Compute post-buy weight from live `Holdings.md`, never a remembered snapshot. Flag a starter above the band explicitly: SEZL on 2026-08-28 was the first breach and it passed unchallenged.

6. **Theme check.** Post-buy exposure for every named theme the position touches, against the soft flag and hard cap in `Portfolio Strategy.md`. A theme is a shared return driver, not a sector label. **Check the driver before the third name on it, not after**: BSX was the third elective-procedure name and was bought the same afternoon as the second.

7. **Bias check, one line each.** Borrowed conviction (whose idea was this, and was it an agent screen?). Theme-as-thesis (does the case stand without the trend?). Excitement language ("knockout", "can't miss" are pause signals). Goalpost movement (is a rule being amended within a day of wanting this specific name?).

## On pass
Write the position to `Holdings.md`. **Log the reported dollar amount and mark shares UNKNOWN until an export confirms them** (the 2026-08-16 fix). Never divide dollars by a prior close to manufacture a share count. Set `Confirmed <date>` under position-gate rule 1. No em-dashes or en-dashes. Confirm the cash math.

## Tone
He asked to be pushed back on. State rule violations directly with his own numbers, then respect his final call. A decision is Kevin's only if Kevin said it. Never execute trades; logging only.
```

## PASTE BLOCK ENDS

---

## What this still does not fix

The skill only runs when Kevin invokes it. Every one of the six same-session buys was reported to the agent *after* the fill, at which point gates 1 and 2 are archaeology rather than gates. This file makes the check correct and cheap; it does not make it happen. That part is unchanged and is Kevin's, and [[Holdings]] records it plainly: the failure on PATK and BSX sat between the screen and the fill, which is the only part of this process the agent does not touch.
