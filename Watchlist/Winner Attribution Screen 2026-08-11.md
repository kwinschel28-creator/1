---
type: screen
date: 2026-08-11
request: filters that worked for VEEV, GEHC, KMX; avoid filters matching PATK
---

# Winner-attribution screen, 2026-08-11

Kevin asked for a screen built on filters that have historically done well for the book (VEEV, GEHC, KMX) while avoiding filters that select for the laggard (PATK).

## Step 1: check the premise

Excess return vs SPY over each holding's own window, cost to the 2026-08-10 close:

| Ticker | Entry | Return | SPY same window | Excess |
|---|---|---|---|---|
| CRS | 2025-09-04 | +132.5% | +19.1% | **+113.4** |
| VEEV | 2026-07-02 | +33.3% | +3.8% | +29.5 |
| KMX | 2026-07-02 | +16.7% | +3.8% | +12.9 |
| GEHC | 2026-07-02 | +11.2% | +3.8% | +7.4 |
| RYAN | 2026-07-23 | +8.0% | +4.7% | +3.3 |
| VRTX | 2026-06-30 | +5.2% | +3.5% | +1.7 |
| PATK | 2026-07-16 | +1.1% | +3.0% | -1.9 |
| VSAT | 2026-06-30 | -2.3% | +3.5% | -5.8 |
| NBIS | 2026-07-02 | -14.0% | +3.8% | -17.8 |
| IREN | 2026-06-30 | -14.6% | +3.5% | -18.1 |

The ranking Kevin named is right. Two corrections to the framing: **CRS is by far the biggest winner and was not on his list**, and the real laggards are NBIS and IREN at roughly -18 each, not PATK at -1.9. PATK is flat, not failing.

## Step 2: what actually separated them at the time of purchase

Attributes from the last quarter reported as of each entry date:

| | Piotroski | ROIC | Gross mgn | Rev growth | Current ratio | D/E | P/E | Beat rate | Off 12m high |
|---|---|---|---|---|---|---|---|---|---|
| VEEV | 4 | 9.8% | 75.0% | **+16.3%** | 4.74 | 0.01 | 33.4 | 5/5 | -37.9% |
| KMX | 6 | 1.2% | 10.7% | **+6.2%** | 2.70 | 3.05 | 32.5 | 4/6 | -29.2% |
| GEHC | 4 | 10.0% | 41.2% | **+5.8%** | 1.26 | 0.92 | 15.0 | 4/5 | -27.0% |
| PATK | **8** | 7.3% | 23.8% | **-0.6%** | 2.67 | 1.46 | 19.7 | **5/5** | **-40.6%** |
| CRS | 8 | 16.6% | 28.3% | -5.4% | 3.65 | 0.37 | 31.8 | 5/5 | -17.4% |

**Exactly one variable separates the three winners from PATK: revenue growth.** All three winners were growing; PATK was shrinking.

Everything else either fails to separate or runs backwards:

- **Piotroski**: PATK had the highest score of the four (8). Both VEEV and GEHC scored 4. Screening for high Piotroski would have preferred the laggard.
- **Beat rate**: PATK was perfect at 5/5, better than KMX and GEHC.
- **Drawdown**: PATK was the most dislocated at -40.6%. This is the third independent confirmation of the 2026-08-10 finding that deep drawdown is not a cause.
- **ROIC**: KMX had 1.2%, the worst of all five, and still beat SPY by 13 points.
- **Valuation**: winners spanned 15x to 33x. No signal.

## Step 3: why "avoid PATK's filters" cannot be taken literally

PATK's distinguishing features were a high Piotroski, a perfect beat rate and a deep drawdown. Screening those out would have excluded **CRS** (Piotroski 8, 5/5 beats), the best holding in the book, and **DINO** (Piotroski 9, 5/5 beats), one of the two names Kevin picked today. The instruction inverts on contact with the data.

## Step 4: the honest caveat

Four names, six weeks, price return only. This is not a factor discovery, it is four data points, and fitting filters to them is the definition of overfitting. The one separator that does appear (revenue growing rather than shrinking) is kept only because it independently agrees with two things already in the vault: the 2026-08-10 finding that operating-margin expansion beats drawdown as a Lane B filter, and the Sourcing Rules baseline that health plus circle beats the raw signal.

## The screen as built

Filters, with the reason each one is present:

1. Revenue growth YoY between +3% and +40%. Positive is the only real separator found above; the 40% ceiling excludes trough-to-peak cyclical rebounds.
2. Operating margin expanding y/y. The 2026-08-10 validated Lane B filter.
3. Positive TTM free cash flow, current ratio above 1. Survivability.
4. ROIC above 8% now AND above 5% a year ago AND at least 85% of the year-ago level. **Durability, not level.** This is the filter that does the real work: it rejects both decaying quality and freshly-recovered cycle returns.
5. Piotroski 4+. Sourcing Rules baseline, kept as a floor rather than a ranking.
6. Drawdown is a display column only, never a gate.
7. Market cap above $1B, US common stock, semis excluded, existing holdings excluded.

## Result: both of Kevin's picks fail it

Written before either name was tested against it.

- **LII** fails filter 4. ROIC 25.8% against 36.0% a year ago, a 28% decline, outside the 85% band. The eight-quarter series confirms a monotonic ten-point slide.
- **DINO** fails filters 1 and 4. Revenue +53.2% is a cycle rebound, and ROIC a year ago was 0.1%.

## Best candidates the screen returned

Non-AI, ranked by dislocation among names with rising rather than falling returns:

| Ticker | Sector | Why | Off 12m high | Lane |
|---|---|---|---|---|
| FICO | Info Tech | ROIC 61.9% vs 51.3% a year ago and rising, op margin 53.8% vs 48.9%, revenue +25.7%, Piotroski 8, 29.9x | -47.5% | A |
| WING | Cons Disc | ROIC 29.6% vs 21.5%, op margin 29.4% vs 25.9%, revenue +6.4%, current ratio 2.97 | -66.0% | A or B |
| LOPE | Cons Disc | ROIC 27.2% vs 25.4%, op margin 22.0% vs 20.9%, 17.3x, D/E 0.16 | -34.3% | A |
| EME | Industrials | ROIC 31.7% vs 29.8%, revenue +19.8%, D/E 0.13, Piotroski 7. The industrials name that is actually improving | -15.0% | A |

Flagged, do not treat as hits:
- **CENX** (Century Aluminum) passed the ROIC durability test on a technicality (37.8% vs 13.0%) but is the same peak-cycle commodity shape as DINO. Excluded by judgment, not by filter.
- **BRBR** (BellRing) shows -73.5% off high at 7.7x and looks tempting. It is named in [[Agent Context]] as one of Kevin's own examples of bias #3, narrative plus technicals over fundamentals. ROIC is also falling, 39.5% to 33.9%.

Process gate: first-pass before any buy; buys clear the Checklist/lane system.
