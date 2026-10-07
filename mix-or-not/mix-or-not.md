# Mix or not, and how hot is hot enough

Status: Draft · Pass 0 · Updated 2026-10-06

> What this is: the first draft of a whitepaper on two linked questions about
> a heat pump with thermal storage. Discharge: should the water going to the
> distribution system be mixed down to the required source water temperature,
> or sent as hot as the store has it? Charge: how hot does the store need to
> be, and did we overheat it in the shoulder season? Every declaration in the
> paper is a claim tested against fleet data; the claims register below is
> the paper's spine. Nothing here is settled yet.

## The question

John Siegenthaler's position is that the temperature going into the
distribution system should be regulated in a tight band. A full store is no
reason to send hot water upstairs; the hot water should be saved.

Our practice is to send whatever the store has. A heat call with hot water is
short. The water then sits in the emitters, keeps giving heat to the room, and
comes back much colder than it would in a constant heat call.

The design question: do we regulate the water temperature going upstairs, do
we not care, or do we prefer not to regulate it?

Required source water temperature (RSWT) is the source temperature at which a
zone stays in near-constant heat call and holds its setpoint.

## How hot the water comes back

The concern with sending hot water upstairs unmixed is that hot water
comes back: a return hot enough that the heat pump cannot take it, so
the heat pump would have to stay off while the top of the buffer is hot.
The fleet ran this way all of the 2025–26 season, so the return
temperature is on record.

Two things set the return temperature: how hot the source is, and how
much of the hour heat is being called. Each house without a mixing
valve has one grid below; spruce has a mixing valve and is left out.
Rows are the source temperature to distribution. Columns are the share
of the hour the distribution loop circulated, which is the share of the
hour some zone was calling for heat. Each cell is the median return
temperature from distribution (`dist-rwt`, °F, flow-weighted) with the
number of hours in brackets; a cell with fewer than ten hours is empty.
Quartiles are in `experiments/dist-loop-experiments/return-temp.md`.

**beech**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 100–110 | 76 (15) | 89 (10) |  |  |  |  |
| 110–120 | 79 (53) | 95 (25) | 101 (10) | 102 (12) |  |  |
| 120–130 | 85 (153) | 99 (103) | 106 (61) | 110 (48) | 112 (11) |  |
| 130–140 | 91 (262) | 103 (309) | 111 (196) | 115 (83) | 118 (28) | 119 (29) |
| 140–150 | 94 (381) | 106 (349) | 116 (205) | 121 (165) | 124 (56) | 125 (47) |
| 150–160 | 94 (295) | 112 (261) | 123 (206) | 127 (115) | 132 (49) | 131 (53) |
| 160–170 | 94 (128) | 117 (164) | 127 (148) | 134 (113) | 136 (28) | 138 (24) |
| 170–180 |  |  | 131 (19) |  |  |  |

**elm**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 110–120 | 88 (24) | 96 (28) | 101 (23) | 104 (15) |  | 107 (11) |
| 120–130 | 90 (107) | 99 (110) | 104 (116) | 107 (50) | 109 (24) | 112 (35) |
| 130–140 | 95 (213) | 104 (324) | 109 (265) | 112 (178) | 115 (76) | 117 (83) |
| 140–150 | 102 (235) | 112 (462) | 115 (412) | 117 (286) | 119 (152) | 123 (144) |
| 150–160 | 109 (136) | 116 (187) | 121 (178) | 123 (153) | 126 (82) | 129 (72) |
| 160–170 | 116 (14) | 123 (27) | 124 (16) | 127 (15) | 132 (13) |  |

**fir**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 100–110 | 90 (23) | 98 (19) | 99 (16) |  |  | 102 (18) |
| 110–120 | 97 (76) | 103 (57) | 105 (42) | 107 (41) | 108 (14) | 106 (20) |
| 120–130 | 102 (173) | 107 (187) | 112 (123) | 111 (46) | 114 (21) | 114 (24) |
| 130–140 | 106 (261) | 114 (359) | 117 (229) | 119 (145) | 120 (65) | 121 (42) |
| 140–150 | 111 (356) | 119 (391) | 122 (212) | 124 (174) | 126 (135) | 127 (62) |
| 150–160 | 116 (234) | 122 (178) | 126 (114) | 131 (73) | 133 (41) | 134 (20) |
| 160–170 | 117 (45) | 127 (59) | 132 (19) |  |  |  |

**maple**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 100–110 | 77 (30) | 90 (12) |  |  |  | 99 (10) |
| 110–120 | 82 (66) | 94 (43) | 100 (20) |  |  | 108 (12) |
| 120–130 | 84 (178) | 100 (99) | 109 (49) | 113 (22) | 116 (15) | 117 (42) |
| 130–140 | 91 (158) | 107 (194) | 115 (93) | 120 (65) | 123 (29) | 126 (50) |
| 140–150 | 102 (201) | 116 (322) | 123 (210) | 130 (97) | 132 (40) | 134 (67) |
| 150–160 | 113 (229) | 125 (389) | 133 (248) | 139 (142) | 142 (47) | 143 (118) |
| 160–170 | 118 (197) | 135 (309) | 143 (230) | 148 (149) | 151 (65) | 153 (187) |
| 170–180 |  |  |  |  | 156 (15) | 158 (46) |

**oak**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 100–110 | 89 (38) | 95 (15) |  |  |  |  |
| 110–120 | 94 (125) | 99 (54) | 100 (21) | 103 (11) | 103 (11) |  |
| 120–130 | 92 (306) | 99 (160) | 104 (47) | 107 (42) | 108 (22) | 108 (19) |
| 130–140 | 95 (514) | 102 (408) | 109 (165) | 113 (99) | 116 (27) | 116 (38) |
| 140–150 | 99 (461) | 106 (415) | 115 (145) | 122 (60) | 122 (12) | 118 (12) |
| 150–160 | 111 (260) | 115 (214) | 119 (49) |  |  |  |
| 160–170 | 120 (110) | 121 (71) |  |  |  |  |
| 170–180 | 126 (11) |  |  |  |  |  |

The right-hand column again as a temperature drop: the median drop
from source to return (°F) in hours the loop circulated 95–100% of the
hour, by source temperature, with the number of hours in brackets.

| Source °F | beech | elm | fir | maple | oak |
|---|---|---|---|---|---|
| 80–90 |  |  | 1.1 (14) |  |  |
| 90–100 |  |  | 2.9 (13) |  |  |
| 100–110 |  |  | 4.2 (18) | 6.5 (10) |  |
| 110–120 |  | 10.8 (11) | 9.4 (20) | 7.1 (12) |  |
| 120–130 |  | 15.0 (35) | 11.4 (24) | 8.8 (42) | 15.8 (19) |
| 130–140 | 17.1 (29) | 19.5 (83) | 14.2 (42) | 10.5 (50) | 17.0 (38) |
| 140–150 | 19.8 (47) | 22.0 (144) | 17.8 (62) | 10.7 (67) | 25.0 (12) |
| 150–160 | 23.0 (53) | 25.3 (72) | 19.3 (20) | 12.0 (118) |  |
| 160–170 | 25.5 (24) |  |  | 13.4 (187) |  |
| 170–180 |  |  |  | 14.2 (46) |  |

- **Both axes matter, and about equally.** At beech, going from 130–140
  to 160–170 °F source raises the steady return 19 °F (119 to 138 °F);
  going from steady circulation to under 20% at 160–170 °F source lowers
  it 44 °F (138 to 94 °F).
- **Hotter source brings hotter return in every column.** In steady
  circulation the return rises 0.6 to 0.9 °F per °F of source.
- **With little heat call the return is cold whatever the source, at
  beech.** Its under-20% column stays at 91–94 °F from 130 to 170 °F
  source. At the other houses that column rises with source: 95 to
  116 °F at elm, 91 to 118 °F at maple.
- **Shorter heat calls return colder water at every house and every
  source temperature.** This is claim 3, and it holds. For source of
  120 °F and above, the under-20% column is 12 to 44 °F below the steady
  column.
- **Most hot-source hours are not steady.** At 150–160 °F source, beech
  has 556 hours under 40% circulation and 53 steady. The hot returns in
  the right-hand column are the cold days.
- **Maple is the house where the concern bites.** Its steady return is
  143 °F at 150–160 °F source, 153 °F at 160–170 °F and 158 °F at
  170–180 °F, it has the most steady hours, and even at 40–60%
  circulation it returns 143 °F from 160–170 °F source. Beech, elm, fir
  and oak return 116–138 °F in steady circulation from 130 °F source up.

What this does not yet show is the temperature of the water entering the
heat pump. `dist-rwt` is the water leaving distribution; what the heat
pump sees depends on where that water goes next and what it mixes with
at the bottom of the buffer. The direct measurement is the heat pump's
entering water temperature in the hours it ran with a hot buffer top,
set against the highest entering temperature each heat pump model
accepts. That is the next pull.

A mixing valve changes this picture only by moving a house up its own
grid: a source held at 130–140 °F returns 116–126 °F in steady
circulation at every house, maple included.

## Discharge: mix or not

### Arguments for not mixing

- **Storage.** Colder return water means a colder tank when the store is
  spent, so more usable energy per tank.
- **Hot water should not be spent warming return water.** The hottest water
  in the store was the least efficient to make. A mixing valve uses it to warm
  return water that the heat pump could reheat efficiently later. Letting the
  heat go into the building and the return come back cold avoids that.
- **Capacity.** A heat pump with a ceiling on leaving water temperature cannot
  deliver its full lift when return water comes back near that ceiling.
  Colder return water lets it deliver more heat at the same COP.
- **Cost and control complexity.** Remotely controllable mixing valves cost
  $500–800. A home-built three-way valve needs PID control, and injection
  mixing means balancing two pumps. Not mixing keeps the scada simple.
- **No single target.** RSWT is per zone, so steady state across zones needs
  per-zone hardware.

### Arguments that mixing is better, or at least not worse

- **COP does not depend on entering water temperature.** COP follows lift
  (leaving water temperature minus outside air temperature). The belief that
  cold return water improves COP does not survive the data seen so far.
- **A BTU in the store is a BTU.** Once the store is charged, no COP attaches
  to discharge. The only thing that can differ between the two modes is how
  much heat comes out of the water.
- **Heat below RSWT arrives either way.** Water sitting in the emitters keeps
  giving heat below RSWT in both modes. That heat should be counted, for
  example by modeling one more pass at the same ΔT (120 → 105 → 95 °F), not
  by treating water just under RSWT as worthless.
- **Return temperature without mixing is hard to predict.** It can be 80, 100
  or 120 °F depending on how long the water sat, and multiple zones make it
  worse. Mixing gives a consistent return and a slow, steady flow into the
  store that speeds up as the store cools.
- **Stratification.** Zone circulators at 4 gpm in fast bursts could
  de-stratify the store where a slow steady return would not.
- **Predictability for the FLO.** Predicting the return temperature needs the
  heat-call fraction, which itself depends on the source temperature. A
  regulated source breaks that circle.

### A third option: alternate the source end of a series loop

John Siegenthaler notes that where a zone has many emitters in series, the
end of the loop that receives the hot water can be alternated to improve
comfort. This addresses the uneven comfort of hot water reaching one end of a
loop first, without regulating the source temperature.

### What the discussion settled and what it left open

- **Mixing is once-through.** Mixed water goes out at RSWT and returns one
  ΔT lower, a single pass through the store at a slow rate. Unmixed water in
  near-constant heat call is the multi-pass case: it returns still hot and is
  used again.
- **The deciding quantity** is the tank temperature when the store can no
  longer heat the house, times the gallons. The question is which mode ends
  with colder water in the tank.
- **The thought experiment.** One full tank at 170 °F, heat pump off, two
  modes. Measure the time until a zone is two degrees below setpoint.
- **The floor used for "usable" moves the answer.** A store's stated capacity,
  and its cost per kWh, can shift by a factor of two with the choice of floor
  temperature. The paper states its floor and why.
- **Working consensus before the data:** not mixing is probably not a large
  storage win and probably not a loss.
- **Data, not simulation, is what will persuade.** A week with a valve
  against a week without is confounded by weather and occupancy. The first
  route is the natural experiment in existing data: periods of intermittent
  heat call against periods of constant heat call.

## Charge: how hot is hot enough

If sending hot water upstairs brings no real storage win, the cost of the
practice sits on the charge side. Every extra degree in the store was made at
a worse COP, and in the shoulder season the on-peak load is small.

For each shoulder day at a house the analysis takes:

- how hot the store was charged, and the lift it took;
- how much of that energy the on-peak period drew;
- what was left above RSWT when the heat pump came back on;
- the electricity the surplus cost, from the COP-versus-lift relation.

Surplus stored heat is not lost apart from standing losses, so the analysis
separates carry-over to the next day from true waste. If the store was
overheated, the remedy is a charging rule or better parameters, not a valve.

### The parameters that decide the charge

How hot the store is charged follows from four groups of house parameters.
The values below are what each house ran on in the 2025–26 season, read from
the journal DB (fields as stored; `AlphaTimes10` 98 is alpha 9.8).

| Group | What it sets | What the season's record shows |
|---|---|---|
| `AlphaTimes10`, `BetaTimes100`, `GammaEx6` | Forecast heating load | Set by hand and revised downward mid-season in four of five houses: beech 98 → 90 → 86, fir 140 → 75, maple 95 → 120 → 97 → 63, oak 93 → 76. Elm stayed at 70. |
| `DdPowerKw`, `DdRswtF`, `IntermediatePowerKw`, `IntermediateRswtF` | Required source water temperature as a function of load | Design-day power cut in every house (beech 9.8 → 8.6, elm 10 → 7, fir 14 → 7.5, maple 12 → 6.3, oak 10.75 → 7.6). Design-day RSWT moved repeatedly: beech 160 → 150 → 170 → 140 → 155, maple 180 → 200 → 170 → 160 → 145, oak 160 → 140, fir 160 → 150. The intermediate point is 1.5 kW in every house except beech from late January (3.6 kW). |
| `DdDeltaTF` | Temperature drop across the emitters | 20 °F in every house, all season, never changed. |
| `CopIntercept`, `CopOatCoeff`, `CopLwtCoeff`, `CopMin`, `CopMinOatF` | Heat pump COP | Carried in every `flo.params.house0`; not yet examined. |

The downward revisions fall between early December and late January. The
fall shoulder ran on the first, higher values in every house, with forecast
load up to twice what the later values give (fir). That is the period to
test first for an overheated store.

Spruce's set from January is identical to beech's.

### How RSWT is calculated

From a code read of the scada (`gridworks-scada`, branch `jm/spruce-unlimbo`)
and the FLO (`gridworks-innovations/gridworks-flo`, `main`). Last season's
houses ran earlier code, so each point needs checking against the commit a
house ran; the FLO's is recorded in `FloGitCommit`. Paths: `DG` is
`gw_spaceheat/actors/derived_generator.py`; `FPH` is
`src/gridflo/asl/types/flo_params_house0.py`.

Both modes share one construction:

- **Load.** `alpha + beta × OAT + gamma × windspeed × (65 − OAT)`, floored at
  zero (`FPH:150-152`).
- **RSWT from load.** A quadratic of delivered power against source
  temperature is fitted through three points: zero power at `−alpha/beta`,
  the intermediate point, and the design-day point (`DG:714-738`,
  `FPH:102-111`). RSWT is that curve inverted at the forecast load
  (`DG:1057-1060`, `FPH:144-148`). At beech in January (alpha 9.0, beta
  −0.15) the zero-power point is 60 °F.

So RSWT is not measured anywhere. It is the forecast load read through a
curve drawn from two hand-set points and the load coefficients. A load
forecast that runs high gives an RSWT that runs high, by construction.

The two modes then diverge:

| | Local control (scada) | FLO |
|---|---|---|
| Load used for RSWT | Inflated by `LoadOverestimationPercent` first (`DG:1054`); 0 all last season | Raw load |
| Emitter ΔT | Scales with load: `DdDeltaTF / DdPowerKw × power` (`DG:1040-1046`) | Constant `ConstantDeltaT`, default 20 °F (`FPH:78, 127-128`); `DdDeltaTF` has no effect |
| Cap | None on RSWT | RSWT capped at 160 °F (`FPH:226-246`) |
| How RSWT acts | As tank thresholds: buffer "full" is the highest RSWT of the next three hours, limited by `MaxEwtF` (`hydronic/house0.py:597-601`); buffer "empty" is the same figure, or that minus ΔT in one mode, limited by `MaxEwtF − 10` (`hydronic/shared.py:233-241`) | As a soft cost only, when discharging with the store's top layer below RSWT (`flo.py:297`); exponential in the shortfall (`flo.py:373`) |
| Time window | Next three hours for the buffer; the highest RSWT over the coming on-peak hours for usable energy | Hour by hour |
| Usable-energy floor | Return temperature derived from RSWT, with a 10 °F ramp below it (`DG:1203-1255`) | Not applicable |
| On-peak hours | Hardcoded 7–11, 12–15, 16–19 for required energy (`DG:950-1038`) | From the price forecast |

The stored data agrees with the scada's ΔT rule: on 2026-01-05 beech's
`heating.forecast` shows `RswtDeltaTF` 23.0 at `AvgPowerKw` 10.35, which is
20 / 9.0 × 10.35.

Three consequences for the charge question:

- In local control, RSWT is a tank-temperature target, so an RSWT that runs
  high charges the buffer hotter directly.
- The emitter ΔT is 20 °F by parameter in both modes, at design-day power in
  the scada and always in the FLO. Claim 2 tests that number.
- The same word means different things in the two modes: a source
  temperature the house needs, a buffer charge target, and a penalty
  threshold on the top of the store.

### Where the record is

All of the following are in the journal DB (`gridworks.messages`), 2025-10-01
to 2026-04-30 checked. The S3 eventstore was not examined.

| Word | Sender | What it carries for this analysis | Coverage |
|---|---|---|---|
| `flo.params.house0` | LTN | The whole parameter set for each FLO run: the four groups above, the outside-temperature, wind and price forecasts used, the initial store temperatures and thermoclines, `ConstantDeltaT`, the RSWT penalty settings, `FloGitCommit` | 14,868 messages. Present only while the FLO ran: fall to about December 8, then from March (oak from December 23). No FLO parameters exist for mid-December to early March in beech, elm, fir or maple. |
| `layout.lite` → `Ha1Params` | Scada | The scada's own copy of the load and RSWT groups (`ha1.params`), plus `MaxEwtF`, `HpMaxKwTh` and `LoadOverestimationPercent` (0 throughout) | All season, every house. This is the only parameter record for the winter months the FLO did not run. |
| `heating.forecast` | Scada, hourly | 24-hour arrays the scada computed from its parameters: `AvgPowerKw`, `RswtF`, `RswtDeltaTF`, with the `WeatherUid` of the forecast used | 26,979 messages, every house (spruce from January 23). |
| `weather.forecast` | Scada, hourly | The weather forecast behind each `heating.forecast` | Same count, paired by `WeatherUid`. |
| `report.event` | Scada | Measured source, return and flow, tank and buffer temperatures, zone temperature, setpoint and heat call, and the scada's own `required-energy` and `usable-energy` channels | All season. |
| `scada.params` | LTN and scada | Changes to scada thresholds such as `BufferEmpty` | 8 messages, March 3–5 2026 only. |

No FLO output (plans or bids) appears in the journal under a parameter,
forecast, bid or contract type name.

The LTN and the scada each hold their own copy of the parameters and the
copies were edited separately: on 2025-12-31 the LTN at beech sent
`DdRswtF` 150 while the scada's layout held 170.

### A first comparison: beech, 2026-01-05

The scada's `heating.forecast` for the afternoon of that day gave `RswtF`
162–177 °F, `AvgPowerKw` 7.7–10.4 and `RswtDeltaTF` 17–23 °F. The measured
day (first look below) had the main zone at its 68 °F setpoint all day, in
constant heat call for 14 hours on source water of 130–156 °F, delivering
3.9–7.0 kWh per hour to distribution. On this one day the scada's RSWT sat
20–40 °F above a source temperature at which the house held setpoint, and
its forecast load ran above measured distribution energy. This is a lead
with the same unit caveats as the first look, not a result.

## Claims register

Every declaration the paper makes is tested against data from all houses
before it stands.

| # | Claim from the meeting | Test against data | Status |
|---|---|---|---|
| 1 | COP depends on lift, not on entering water temperature | Repeat George's plot per house and per heat pump model | George's plot only; I have not seen which house |
| 2 | Steady-state ΔT across distribution is about 20 °F | Flow-weighted ΔT in constant-call hours, by source temperature, every house | Tested: not a constant. See "Emitter temperature drop across the fleet" |
| 3 | Shorter heat calls return colder water | Return temperature against heat-call fraction at fixed source temperature | Tested: holds at every house. See "How hot the water comes back" |
| 4 | Burst return temperature is close to random (80–120 °F) | Spread of return temperature by heat-call fraction; Thomas's scatter, per house | Thomas's scatter only |
| 5 | Bursts do not overheat the house | Room temperature overshoot above setpoint against source temperature | Joe's table and George's plot, beech only |
| 6 | LGs lose capacity when return water is 150–155 °F | Heat output against entering water temperature when leaving water is at its cap | Untested |
| 7 | A 100 °F return instead of 120 °F raises usable store by about 30% | Arithmetic on actual charged tank temperatures | Depends on top temperature: 33% at 180 °F, 40% at 170 °F |
| 8 | Water below RSWT still delivers useful heat | kWh delivered and room temperature trend in hours with source below RSWT | Untested |
| 9 | Fast burst flow de-stratifies the store | Tank depth temperatures during bursts against steady draw | Untested |
| 10 | The 11 AM drop in heat calls at beech is solar gain | Compare sunny and overcast days at the same outside temperature | Untested; Thomas offered a cooler store as the alternative |
| 11 | We charged the store hotter than on-peak needed in the shoulder | Per shoulder day: charge temperature, on-peak draw, surplus above RSWT, COP cost | Untested; this is the charge half |
| 12 | Alternating the source end of a series-emitter zone improves comfort (Siegenthaler) | Needs per-emitter or per-room temperatures along a series loop | Probably no data in the fleet |


## First look: beech, 2026-01-05

A throwaway look at one day, pulled from the journal DB (`report.event`,
midnight to midnight ET). It is a lead, not a result: units were inferred
from value ranges (temperatures °C×1000, flow gpm×100), not decoded through
sema, and a zone counts as calling when its whitewire power is above 20 W.

| Hours | Count | Flow-weighted source | Flow-weighted return | ΔT |
|---|---|---|---|---|
| Zone 1 calling ≥95% of the hour | 14 | 145 °F | 125 °F | 20 °F |
| Zone 1 calling 60–95% | 10 | 164 °F | 136 °F | 27.5 °F |

- **The day has no hours of infrequent heat call.** The lowest hourly
  heat-call fraction is 61%, so the water never sits upstairs long enough to
  come back cold.
- **Return follows source.** In the intermittent hours the return is warmer
  (136 °F), not colder, because the source was hotter.
- **The heat pump ran in eight of the ten intermittent hours**, so that
  return water was not going to the store.
- **Steady-state ΔT is not a flat 20 °F.** Within the constant-call hours it
  rose with source temperature:

| Source temperature | ΔT |
|---|---|
| 130–138 °F | 15.5–17.5 °F |
| 144–156 °F | 17.8–23.7 °F |

Near RSWT, where a mixing valve would hold the source, beech shows about
16–17 °F. The storage argument for not mixing needs days this one does not
provide: a hot store in milder weather with infrequent heat calls.

## Emitter temperature drop across the fleet

Claim 2 tested on the five houses without a mixing valve over the
2025–26 season (2025-10-01 to 2026-05-01), from the journal DB with
every value decoded through its channel word. An hour counts as steady when
the distribution loop circulated for at least 95% of it. The drop by
source temperature is the last table in "How hot the water comes back";
quartiles are in `experiments/dist-loop-experiments/steady-drop.txt`.

- **The drop is not a constant.** At every house it rises with source
  temperature, close to linearly. A fixed 20 °F is right at one source
  temperature per house: about 140–145 °F at beech and elm and about
  155 °F at fir.
- **Houses differ by a factor of two at the same source temperature.**
  At 140–150 °F maple drops 10.7 °F where elm drops 22.0 °F. Maple does
  not reach 20 °F at any source temperature it saw, up to 180 °F.
- **Flow accounts for part of the difference.** Steady flow is about
  2.1 gpm at beech and elm and 2.5–3.4 gpm at maple, but maple also
  delivers less heat per steady hour (4.5–5.5 kWh across 130–180 °F
  source against 6–8 kWh at elm across 130–160 °F), so its emitters
  give up less heat at the same water temperature.
- **Steady circulation is 4–11% of the season's hours.** The steady
  drop describes the coldest hours; most hours are intermittent, which
  is the ground claims 3 and 4 cover.

For the discharge question this means the return temperature under a
mixed source held at RSWT is a per-house quantity that depends on RSWT
itself: a house with a low RSWT returns water only a few degrees colder
than it was sent. For the charge question it bears on `DdDeltaTF`: a
single design drop per house overstates the drop at low source
temperature and understates it at high.

## Open

1. **Scope of the data.** Proposed: the 2025–26 heating season, every house
   with distribution source, return and flow channels.
2. **Series emitters.** Does any zone in the fleet have emitters in series
   with a temperature sensor at more than one of them? Claim 12 has no test
   without one.
