# The beech emitter physics mystery: twice the flow, nearly twice the heat

2026-10-07 · draft

## Summary

**At beech on January 24, doubling the distribution flow at a source
near 170 °F nearly doubled the heat delivered, 21 to 38 kBTU/h, while
the source-to-return drop narrowed only 3 °F.** Emitter theory says
that cannot be a steady-state result: with the emitters and the source
fixed, faster flow raises the return and the mean emitter temperature,
and radiator output rises with about the 1.3 power of that mean over
room, so doubling the flow should add roughly 15%, not 80%; even
infinite flow could not get these emitters to 38 kBTU/h (the "What
theory says" section works it through). Pump power says the metered
flow really did double. The resolution is in what each number
measures. Flow times drop is heat into the distribution system; the
theory predicts heat out of the emitters into the house. They are
equal only at steady state, and the difference is heat going into the
water and iron of the emitters. Both fast steps began with cooler
emitters than they ended with, and the two steps independently imply
the same thermal mass taking the difference, about 280 BTU/°F, well
inside what a cast-iron zone of this output holds. The slow step
between them began hot and gave back less than the season's steady
hours do at the same source and flow. The source also oscillated
20 °F with a five-minute period through every fast step. So the heat
into the house did not double; the heat into the iron did the rest. A
deliberate step test, steady source, long steps in both directions,
would show it directly.

## The question

The water coming back from distribution is what the heat pump has to
work against, and how hot it comes back depends on the emitters, the
source temperature and how fast the water moves through the loop. The
return water temperature memo held the heating requirement fixed and
varied the source temperature. This memo looks at the third thing: at
the same emitters and the same source temperature, what does the
distribution pump's speed do to the return?

Every house has a 0-10 V output to its distribution pump, so in
principle the fleet data holds speed changes to compare. In practice
we did not adjust the outputs much, some pumps may not follow their
signal, and a pump can also have been turned down by hand in the
basement. So the first step is to find out, house by house, whether
the pump ran at different speeds with the same zones calling. The
speed changes on its own as zones open and close, so the comparison
has to be made within one zone pattern.

## Beech over the season

At beech the pump ran at one speed per zone pattern for the whole
season: the 0-10 V output was set to 3.5 V on October 13 and held, and
at 3.5 V the flow is 2.0 gpm with the downstairs zone calling alone,
1.5 gpm with the upstairs zone alone and 3.17 gpm with both. So there
is no season-long comparison to make within a zone pattern; the one
place the pump ran at different speeds with the same zone calling is
the January 24 test.

## Beech, January 24: the pump walked from 3 V to 10 V

From 09:35 to 11:45 the downstairs thermostat's white wire was
energized in every one of the 125 minutes, so the downstairs zone was
calling the whole time; the upstairs wire came on for seven minutes
(10:16 to 10:21 and 11:22). During that stretch the 0-10 V output was
stepped by hand. Each row is one step: the time the output was held
at that level, and within it the minutes counted, which are those
where both temperature sensors had reported within 90 seconds, only
the downstairs zone was calling, and the upstairs wire had been off
for at least ten minutes. Rows are ordered by source temperature and
then by flow.

| Start | 0-10 V | Flow gpm | Held min | Counted min | Source °F | Return °F | Drop °F | kBTU/h |
|---|---|---|---|---|---|---|---|---|
| 10:55 | 3.5 | 1.98 | 8 | 8 | 168 (165–172) | 146 (143–150) | 21 | 21 |
| 11:22 | 6.0 | 3.16 | 23 | 12 | 171 (159–180) | 151 (147–154) | 20 | 32 |
| 10:23 | 8.0 | 4.12 | 30 | 20 | 173 (161–181) | 155 (150–159) | 18 | 38 |
| 09:35 | 3.0 | 1.77 | 18 | 5 | 156 (154–157) | 132 (132–132) | 24 | 21 |
| 10:03 | 10.0 | 4.45 | 12 | 12 | 146 (126–167) | 133 (125–141) | 13 | 30 |

Source and return are the mean over the counted minutes with the
range in brackets; drop and heat are means.

The ten minutes after an upstairs call are left out because the call
sends a slug of cold water from the upstairs loop past the return
sensor. In 45 upstairs calls over the season that fell inside a steady
downstairs call, the source-to-return drop widened by a median 18 °F
at its peak and was back within 10% of its pre-call value a median
3 minutes after the call ended, within 5% a median 5 minutes after,
in the events that got back inside their window at all. Ten minutes is
a margin over that, not a measured threshold. With the minutes left
in, the 8 V return mean is 151 °F instead of 155 and the 6 V mean 149
instead of 151.

The three steps with a mean source near 170 °F are the comparison:
3.5 V, 6 V and 8 V, with the flow going from 2.0 to 3.2 to 4.1 gpm.
Doubling the flow narrowed the source-to-return drop by about 3 °F,
raised the return by about 9 °F, and nearly doubled the heat delivered
(21 to 38 kBTU/h). The drop would have had to halve for the heat to
hold; it narrowed by 3 °F. This is the mystery of the title.

## What theory says

For a fixed set of emitters the standard characteristic (EN 442, and
the ASHRAE radiator chapter) is output = K × (mean water temperature
− room)^n, with n about 1.3 for cast-iron radiators and fin-tube
baseboard. The water side gives the same output as 500 × gpm × drop
(8.33 lb/gal × 60 min/h × 1 BTU/lb·°F; about 2% high for water at
170 °F, which changes no ratio). Take the 3.5 V row as the calibration:
1.98 gpm, 168 °F source, 146 °F return, 21.8 kBTU/h from those mean
temperatures (the table's 21 is the mean of the minute-by-minute
products), a mean water
temperature of 157 °F and 88 °F over a 69 °F room. That fixes K. At a
higher flow the return rises, the mean rises, the output rises a
little, and the drop must fall to keep 500 × gpm × drop equal to it.
Solving the two together:

| Flow gpm | Source °F | Theory return °F | Theory drop °F | Theory kBTU/h | Measured kBTU/h |
|---|---|---|---|---|---|
| 1.98 | 168 | 146 (calibration) | 22 | 22 | 21 |
| 3.16 | 171 | 156 | 15 | 24 | 32 |
| 4.12 | 173 | 161 | 12 | 25 | 38 |
| infinite | 168 | 168 | 0 | 25 | |

Theory says doubling the flow adds about 8% at a fixed source and
about 15% with the 5 °F source rise the test also had. The measured
rise is 80%. To emit 38 kBTU/h the emitters' mean water temperature
would have to be about 204 °F, above the source. The drop is the
clearest sign: theory wants it to fall roughly as one over flow, 22 to
15 to 12 °F; it stayed at 21, 20, 18. The exponent hardly matters (n =
1.0 moves the 4.12 gpm row from 25 to 24 kBTU/h), and the loop is
nowhere near starved: a 22 °F drop out of 99 °F available means the
last emitter still saw 146 °F water.

Only three kinds of explanation remain, and the trace and the pump
power narrow them.

- **The metered flow is not the true flow.** If K were fixed and the
  temperatures right, the drops imply 2.3 gpm at 6 V and 2.6 gpm at
  8 V, not 3.2 and 4.1. Pump power rules this out: the pump drew 7 W
  at 3.5 V and 39 W at 8 V, a 5.6-fold rise for a 2.1-fold rise in
  metered flow, which is what a small circulator does as its
  efficiency climbs with speed; a 1.3-fold rise in flow could not draw
  that. The flow doubled.
- **The emitters' working surface grew with pump head.** Parallel
  branches that get almost nothing at low head and come alive at
  high head; one-pipe diverter-tee radiators, where branch flow goes
  as the square of main velocity; air-bound sections purged at higher
  velocity. Each makes K grow with flow and leaves exactly this
  signature, a drop that holds while flow rises. A bypass or a
  separator that lets some source water short-circuit to the return
  without passing the emitters, with the fraction growing with speed,
  gives the same arithmetic in reverse: the flow doubled, the flow
  through the emitters did not. Surface temperatures on each emitter
  at 3.5 V against 8 V, and the piping traced for tees and bypasses,
  would tell.
- **The steps were not at steady state.** The next section.

## What the trace says about the mystery

A cast-iron zone holding the 280 BTU/°F derived below, against the
500 × gpm BTU/h·°F the flow carries, has a time constant of about
17 minutes at 2 gpm and 8 at 4 gpm, somewhat less once the emitters'
own loss to the room is counted, plus the transit time. Eight-minute
steps are not at steady state and thirty-minute steps barely are. Three things in the minute trace bear
on it.

- **The fast step charged the emitters; the slow step after it
  discharged them.** The 8 V step began at 10:23 with the return at
  132 °F, two minutes after the 10 V step had pulled the source down
  to 131 °F, and ended at 10:53 with the return at 155 °F. The
  downstairs emitters are cast iron; a 23 °F rise in their water and
  iron over thirty minutes is heat the flow meter and the drop count
  as delivered but the room never saw. The 3.5 V step that followed at
  10:55 began with the emitters at that 155 °F and ran eight minutes,
  so its return was held up by heat coming back out of the iron and its
  21 kBTU/h understates the emitters' output. The season's steady hours
  at beech with source 160 to 170 °F and 2.05 gpm, where the iron has
  had an hour to settle, give a drop of 25.5 °F and 26 kBTU/h, a
  quarter more than the slow step measured. The honest ratio is at
  most 38 to 26, and the 38 carries the charging.

  The charging can be sized. The table's kBTU/h is heat into the
  distribution system; the theory table is heat into the house. Each
  fast step's excess of the first over the second, times the minutes
  it was held, is heat that stayed in the system; divided by the
  return's rise over the step, it is the thermal mass that took it:

  | Step | Return start to end | Excess over theory | Held | Stored | Implied mass |
  |---|---|---|---|---|---|
  | 8 V, 10:23 to 10:53 | 132 to 155 °F | 13 kBTU/h | 30 min | 6.5 kBTU | 280 BTU/°F |
  | 6 V, 11:22 to 11:45 | 141 to 152 °F | 8 kBTU/h | 23 min | 3.1 kBTU | 280 BTU/°F |

  Two steps, different flows, different starting temperatures, the
  same answer. A cast-iron zone emitting 21 kBTU/h holds on the order
  of 30 gallons of water and half a ton of iron, 350 to 450 BTU/°F, so
  the iron has the capacity and then some. The theory row was itself
  calibrated on the discharging slow step, so the excesses are if
  anything understated and the mass needed smaller. The iron accounts
  for the mystery.
- **The source oscillated once the pump ran fast.** From 10:25 on the
  source swung between about 160 and 180 °F with a period of five to
  six minutes, at both 8 V and 6 V, and the return followed two to
  three minutes behind with a swing of 6 to 8 °F. The minute-by-minute
  drop ran from 4 to 29 °F inside the 8 V step. At 3.0 V and 3.5 V the
  source was steady. What was cycling has not been looked at; the
  store, the heat pump and the primary loop are the candidates. A mean
  over whole cycles is still a mean, but no minute of those steps was
  at steady state.
- **The return moves to a new level in under ten minutes.** After each
  step the return had mostly moved within about eight minutes
  (09:35 to 09:43; 10:56 to 11:03). The water moves that fast; the
  iron behind it does not, which is the first bullet.

## What it does not show

- **Other houses.** Only beech has been scanned. Elm, fir, maple and
  oak may hold a season-long speed change at a fixed zone pattern, from
  a 0-10 V change or a hand adjustment; that scan is the next step.
- **Speed against area.** The flow differences between zone patterns
  at beech (1.5, 2.0 and 3.17 gpm) change the emitter surface along
  with the flow, so they say nothing about speed on its own.
- **A settled curve.** The January 24 steps are short and the source
  moved under them. A deliberate test, one zone held calling, a steady
  source, and the output stepped with the iron given time to settle at
  each level (twenty minutes or more for cast iron, and the same flow
  visited twice, once from below and once from above), would give the
  curve at beech in an afternoon and would say whether any of the
  mystery survives.

## Method notes

Beech's distribution source and return temperature, flow, pump power
and 0-10 V output, and the white-wire power of each zone's thermostat,
for 2025-10-01 to 2026-05-01, from the journal DB. Readings are
reported on change and were filled forward onto a 10-second grid, then
reduced to minute means; a minute is kept when both temperature
channels had reported within ten minutes for all of it, and the minute
carries the age of the oldest reading it used, so a stretch where the
scada stopped reporting can be excluded (the January 24 table uses
90 seconds). A zone is calling in a minute when
its white wire carried power above 10 W for the whole minute. A zone
pattern is a minute where every calling zone was on for the whole
minute and every other zone was off. The script and the minute file
are in the experiments repository under `dist-loop-experiments/`
(`pump_speed.py`). The tables in this memo, one number per cell,
are in the workbook `beech-emitter-physics-mystery.xlsx`, which
`sheets.py` in that folder regenerates; its `theory-inputs`,
`emitter-theory-excel` and `stored-heat-excel` tabs hold the theory
and stored-heat tables as live formulas, beside the same tables
computed in Python.
