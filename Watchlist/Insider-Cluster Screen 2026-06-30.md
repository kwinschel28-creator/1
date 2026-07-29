---
type: screen
date: 2026-06-30
verdict: triage-funnel
analyst: stock-research-agent (assisted)
source: Shibui Finance insider_transactions (SEC Form 4)
tags: [investing/screen, watchlist, lane-b, insider-cluster]
---

# Lane B Insider-Cluster Screen, 2026-06-30

> This is the Form 4 screen the [[Candidate Shortlist 2026-06-30]] said was missing. It is raw ore, not picks, and not advice. Every name here is `[secondary]` until it clears a first-pass with a one-sentence thesis in your own words. You have ~$275 cash and you are mid-rotation, so nothing here is buyable until the FRFHF sale frees capital. Prices and multiples are screen data as of late June 2026; treat exact figures as `[estimate]` until confirmed.

## What the screen enforced (your Lane B definition, not a watered-down version)

Clustered, material, discretionary, open-market buying in non-excluded sectors:

- **Discretionary open-market only:** `tx_code = 'P'`, `is_10b5_1 = false`. Grants, option exercises, gifts, tax withholding stripped.
- **Clustered:** 2 or more distinct insiders (`owner_cik`) buying within a 30-day window.
- **Material:** cluster value >= $250k, common stock only, superseded and derivative rows excluded, fat-finger guard on.
- **Universe:** US Common Stock, market cap >= $2B (your call), `gics_sector NOT IN (Financials, Real Estate, Utilities)`.
- **Window:** trailing 6 months.

40 raw clusters came back. After contamination filtering, ~22 are genuine.

## The contamination finding (the most important takeaway)

Sorting these clusters by dollar value is an *anti-signal*. The largest "clusters" were the least genuine. Verified against raw filings:

| Ticker | Raw "cluster" | What it actually is |
|---|---|---|
| PBLS | $868M | RA Capital + Soleus crossover funds subscribing at a flat $20.00 on one day. IPO 2026-06-10. |
| KLRA | $327M | Bain Capital (x2), RTW, two individuals, all at a flat $16.00 same day. IPO 2026-04-17. |
| GENB | $150M | Crossover financing. IPO 2026-02-27. |
| MANE | $106M | Crossover financing. IPO 2026-02-04. |
| SMMT | $104M | Fund subscription scale. |
| NAVN | $67M | IPO 2025-10-30 insider allocation. |
| QNT | $25M | 11 directors all bought $60.00 the day after the 2026-06-04 IPO. Allocation, not conviction. |

**The tell:** recent IPO (no 200-day price history), buyers are funds or 10%-owners rather than officers and directors, and every buy prints at one identical round price on one day. Compare XRAY below: nine separate directors, market prices falling from $14.25 to $9.88, odd lots, buying *into* the decline over months. That is the real thing.

Excluded as IPO/financing noise (< ~12 months public, fund-subscription character): QNT, KLRA, PBLS, GENB, MANE, NAVN, SMMT, ALMS, ARXS, AVEX, YSS, BOBS, LOAR, CR.

## The genuine funnel (established names, real dislocation, real open-market clusters)

Sorted by drawdown from 52-week high. `In circle` flags your strong footing (SaaS, commercial healthcare/medtech).

| Ticker | Company | Sector | Insiders | Cluster $ | Latest buy | Off 52wk high | vs SMA200 | Piotroski | Circle |
|---|---|---|---|---|---|---|---|---|---|
| CHTR | Charter Communications | Comm Svcs | 4 | $3.8M | 2026-05-15 | -65% | -30% | 6 | learn |
| SHAK | Shake Shack | Cons Disc | 6 | $6.5M | 2026-05-15 | -62% | -36% | 3 | learn |
| BMI | Badger Meter | Info Tech | 5 | $0.8M | 2026-04-23 | -44% | -12% | 4 | learn |
| PSN | Parsons | Industrials | 4 | $2.1M | 2026-05-13 | -43% | -23% | 4 | learn |
| OPCH | Option Care Health | Health Care | 4 | $1.9M | 2026-05-07 | -42% | -25% | 5 | **in** |
| ADSK | Autodesk | Info Tech | 4 | $2.2M | 2026-06-23 | -41% | -27% | 7 | **in** (Lane A) |
| POOL | Pool Corp | Cons Disc | 4 | $2.3M | 2026-05-13 | -39% | -11% | 4 | learn |
| VRNS | Varonis | Info Tech | 4 | $1.2M | 2026-02-09 | -37% | +16% | 4 | **in** |
| PATK | Patrick Industries | Industrials | 6 | $2.5M | 2026-06-10 | -37% | -14% | 4 | learn |
| XRAY | Dentsply Sirona | Health Care | 6 (8/6mo) | $0.6M | 2026-06-15 | -37% | -8% | 4 | **in** |
| KBR | KBR | Industrials | 4 | $0.9M | 2026-05-20 | -35% | -16% | 7 | learn |
| IBP | Installed Building Products | Cons Disc | 4 | $0.8M | 2026-06-11 | -35% | -15% | 5 | learn |
| LW | Lamb Weston | Cons Staples | 4 (5/6mo) | $16.6M | 2026-05-11 | -34% | -11% | 7 | learn |
| MMSI | Merit Medical | Health Care | 5 | $0.6M | 2026-05-11 | -28% | -9% | 5 | **in** |
| GEHC | GE HealthCare | Health Care | 8 | $6.4M | 2026-05-22 | -28% | -12% | 2 | **in** |
| ADT | ADT | Cons Disc | 5 (6/6mo) | $0.5M | 2026-05-29 | -27% | -15% | 7 | learn |
| KMX | CarMax | Cons Disc | 5 | $1.3M | 2026-06-25 | -26% | +23% | 6 | learn |
| MTDR | Matador Resources | Energy | 6 | $0.7M | 2026-06-15 | -26% | +1% | 4 | learn |
| FCN | FTI Consulting | Industrials | 3 | $4.2M | 2026-05-13 | -21% | -10% | 4 | learn |
| NCLH | Norwegian Cruise Line | Cons Disc | 7 | $16.8M | 2026-06-02 | -19% | +5% | 7 | learn |
| GME | GameStop | Cons Disc | 3 | $22.0M | 2026-01-23 | -22% | -5% | 6 | skip (meme) |
| CHRW | C.H. Robinson | Industrials | 4 | $0.5M | 2026-02-12 | -9% | +12% | 6 | learn (near highs) |

## The disciplined narrowing

**In your strong circle (the only names worth your time first):** XRAY, MMSI, OPCH, GEHC (healthcare/medtech), VRNS (SaaS). ADSK is in-circle but reads as Lane A quality-on-dislocation, not a special situation; route it through the Lane A bar, not this one.

**The one with the cleanest signal:** XRAY (Dentsply Sirona). Nine independent directors buying open-market into a falling stock, freshest buying on this list (June), a broken multi-year turnaround in your dental/medtech wheelhouse. That is a starting point for *your* first-pass, not a recommendation. Piotroski 4 and flat revenue say the business is still impaired; the insiders are betting on repair, and you have to decide if they are right.

**Best pure special-situation shape regardless of circle:** LW (Lamb Weston). Beaten down 34%, Piotroski 7 (financially healthy, not a falling knife), large insider cluster, and `[primary/recall]` activist involvement (Jana Partners / Continental Grain pushed for a strategic review in 2024-25, confirm current status, I cannot verify it from this data set). It is outside your strong footing (packaged food), so your "learning is not competence" guard caps the size. Included so you can see the difference between *in my circle* (XRAY) and *best setup* (LW); they are not the same name.

## Spinoffs flagged for study (genuine special situations, too new for the price filters)

- **VSNT, Versant** (NBCUniversal cable-networks spin, Dec 2025). Off 39%, insiders buying. No 200-day base yet.
- **RAL, Ralliant** (Fortive spin, Jun 2025). Insider buying was early; now up 47% vs SMA200, less dislocated.
- **GEHC** also qualifies as a matured spin (GE, 2023) and already sits in the funnel above.

## Screen refinement notes (for plugin v0.3)

1. Exclude issuers with `ipo_date` within the trailing 12 months, or null `sma_200`. This alone removed every financing false positive.
2. Require at least 2 distinct buyers who are `is_officer OR is_director` (not just 10%-owners or funds). The KLRA/PBLS/QNT contamination was fund and 10%-owner subscription.
3. Flag clusters where all buys print at one identical price on one date (`COUNT(DISTINCT price_per_share) = 1` and a single `tx_date`): that pattern is a placement, not a tape-reading cluster.
4. Consider ranking by distinct-insider count and price dispersion, never by raw dollar value.

## The gating action (do not skip)

This is a watchlist, not a buy list. The next real move is the FRFHF sale (~8%, ~$1,640, a financial outside your circle you already want gone), which funds roughly two Lane B starters at your 4% build. Until then, run first-pass on at most one or two of the in-circle names and write the one-sentence thesis. If you cannot, it is a pass. Source: avoid letting this screen become borrowed conviction; it surfaces ore, you still have to mine it.

---

## v0.3 Re-run, 2026-06-30 (filters implemented)

Filters now baked in: (1) issuer public more than 12 months with a real 200-day price history; (2) at least 2 distinct buyers who are officers or directors, not funds or 10%-owners; (3) no single-day single-price placements; (4) ranked by officer/director count and price dispersion, never by dollar value.

**Result: every IPO and financing false positive from v0.2 is gone.** No KLRA, PBLS, GENB, MANE, NAVN, QNT, ARXS, AVEX, YSS, BOBS. The list is now usable without hand-filtering. 40 clusters, all established companies with genuine C-suite or board open-market buying.

**Filter bug found and fixed (keep this for v0.4).** Shibui's `is_officer` and `is_director` booleans are unreliable. Lamb Weston's CFO (Gray) and Executive Chair (Craps) both bought open-market with both flags set to false and only `officer_title` populated. The first v0.3 pass trusted the booleans and wrongly dropped LW. The role test now counts `is_officer OR is_director OR officer_title IS NOT NULL`. Anything relying on those booleans alone silently misses real officer buying.

**Two calls I got wrong, corrected by the data:**
- RAL (Ralliant) survived. It sits exactly on the 12-month cutoff (spun 2025-06-30), so it passed. Buying is stale (latest 2026-02-10) and the stock has run up, so it is low priority despite surviving.
- VSNT (Versant) was correctly filtered out (spun 2025-12-15, under 12 months). Study it manually as a spinoff; the screen cannot vouch for post-spin allocation buying.

**Note:** the v0.2 $250k materiality floor was dropped in favor of the officer/director gate, so a few small clusters (DBD ~$200k, FUN ~$239k) now appear. Re-add a floor if you want.

### Corrected v0.3 funnel (selected)

| Ticker | Company | Sector | Officer/dir buyers | Buy days | Cluster $ | Latest | Mcap | Circle |
|---|---|---|---|---|---|---|---|---|
| GEHC | GE HealthCare | Health Care | 8 | 6 | $6.4M | 2026-05-22 | $30B | **in** |
| NCLH | Norwegian Cruise | Cons Disc | 7 | 8 | $29.2M | 2026-06-02 | $10B | learn |
| XRAY | Dentsply Sirona | Health Care | 6 | 6 | $0.6M | 2026-06-15 | $2.2B | **in** |
| MTDR | Matador Resources | Energy | 6 | 9 | $0.7M | 2026-06-15 | $6.2B | learn |
| RAL | Ralliant | Industrials | 6 | 3 | $0.5M | 2026-02-10 | $8.1B | learn (spin, stale) |
| SHAK | Shake Shack | Cons Disc | 6 | 1 | $6.5M | 2026-05-15 | $2.3B | learn |
| PATK | Patrick Industries | Industrials | 5 | 8 | $2.5M | 2026-06-10 | $3.1B | learn |
| ADT | ADT | Cons Disc | 5 | 6 | $0.5M | 2026-05-29 | $5.3B | learn |
| BMI | Badger Meter | Info Tech | 5 | 5 | $0.8M | 2026-04-23 | $4B | learn |
| MMSI | Merit Medical | Health Care | 5 | 4 | $0.6M | 2026-05-11 | $4.2B | **in** |
| KMX | CarMax | Cons Disc | 5 | 3 | $1.3M | 2026-06-25 | $7.5B | learn |
| ADSK | Autodesk | Info Tech | 4 | 4 | $2.2M | 2026-06-23 | $41B | **in** (Lane A) |
| CHTR | Charter Communications | Comm Svcs | 4 | 2 | $3.8M | 2026-05-15 | $18.5B | learn |
| OPCH | Option Care Health | Health Care | 4 | 2 | $1.9M | 2026-05-07 | $3.3B | **in** |
| VRNS | Varonis | Info Tech | 4 | 2 | $1.2M | 2026-02-09 | $4.7B | **in** |
| AVTR | Avantor | Health Care | 3 | 5 | $2.4M | 2026-05-08 | $6.8B | **in** |
| ZTS | Zoetis | Health Care | 3 | 2 | $0.9M | 2026-05-13 | $31B | **in** (animal) |
| BSX | Boston Scientific | Health Care | 3 | 2 | $0.6M | 2026-05-20 | $64B | **in** |
| LW | Lamb Weston | Cons Staples | 2 | 8 | $14.0M | 2026-05-11 | $6.1B | learn (activist) |

### LW is the cleanest special-situation on the list, and it is not what you thought

The Lamb Weston cluster is an activist setup. JANA Partners holds a board seat and bought roughly $16M in the open market across April, alongside the Executive Chair ($2.4M) and the CFO ($0.6M). Activist with a catalyst, plus management conviction, plus a 34% drawdown, plus Piotroski 7 (a healthy balance sheet, not a falling knife). That is the textbook Lane B shape. It is outside your strong circle (packaged food), so your "learning is not competence" guard caps the size, but on signal quality it is arguably the best name here.

### New in-circle names v0.3 surfaced (worth your eye)

- **AVTR, Avantor:** lab and life-science tools, 3 officer/director buyers, down hard. Picks-and-shovels to pharma, your wheelhouse.
- **ZTS, Zoetis:** animal-health leader, adjacent to your circle, quality name on a dip.
- **BSX, Boston Scientific:** medtech, $64B, only mildly off highs; insiders nibbling rather than a dislocation. Lower urgency.
- **SMMT, Summit Therapeutics:** the $103M "cluster" is almost certainly Robert Duggan (chairman, serial aggressive insider buyer), so it is likely genuine conviction, not a fund placement. But it is a clinical and early-commercial biopharma with binary trial and competitive risk. Confirm the buyer and treat as high-risk.

### In-circle shortlist after v0.3

XRAY and GEHC remain the cleanest in-circle leads, now joined by AVTR. MMSI, OPCH, VRNS are the second tier. ADSK and ZTS route to your Lane A quality bar, not this one. First-pass at most one or two; you now have roughly $3.4k of dry powder after the FRFHF, DOCS, and ORCL-trim cash, which is real Lane B sizing.
