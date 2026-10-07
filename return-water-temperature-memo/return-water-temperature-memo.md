# Return water temperature against source temperature, at the same heating requirement

2026-10-06 · draft

## The question

When a system heats its store with resistive elements as well as a heat
pump, when do we need to be concerned about still being able to use the
heat pump? Resistive elements can make the store hotter than the heat
pump can, and the water coming back from distribution is what the heat
pump has to work against.

The part of that question measured here: holding the heating
requirement of the house fixed, how hot does the water come back from
the distribution system as the source temperature goes up?

The heating requirement is taken here as the heat the distribution
system actually took from the water in the hour. A house that needs
15 thousand BTU in an hour can get it from 135 °F water or from 165 °F
water; the question is what comes back in each case.

## What it shows

1. **At the same heat delivered, hotter source raises the return by
   well under the rise in source.** At beech delivering 15–20 thousand
   BTU in the hour, source of 130–140 °F returns 117 °F and source of
   160–170 °F returns 125 °F: 30 °F more source, 8 °F more return. The
   same step at 10–15 thousand BTU gives 13 °F at elm, 11 °F at fir,
   20 °F at oak, 20 °F at maple1 and 13 °F at maple2; at 15–20 thousand
   BTU oak gives 6 °F.
2. **At light load the return does not rise at all.** At beech
   delivering 5–10 thousand BTU, the return is 101 °F at 130–150 °F
   source and 95 °F at 160–170 °F.
3. **The case for concern is a heat call 100% of the hour, especially
   in systems with a small drop from source to return in that case.**
   With the loop circulating the whole hour, the return is the source
   temperature less that drop. Across the six distribution systems the
   steady drop runs from 6 to 25 °F: 6 to 14 °F at maple1, 9 to 15 °F
   at maple2, 11 to 19 °F at fir, 15 to 25 °F at elm and oak and 17 to
   25 °F at beech, growing with source temperature at every one. Maple1
   is the case to worry about: at 15–20 thousand BTU its loop ran the
   whole hour and returned 135 to 157 °F.

## Result: return against source at the same heating requirement

Rows are the heat delivered to distribution in the hour (thousand
BTU), which stands for the house's heating requirement; columns are
source temperature; each cell is the median return temperature in °F
with the number of hours in brackets. Cells with fewer than ten hours
are empty.

**beech**

| Heat kBTU/h | 110–120 °F | 120–130 °F | 130–140 °F | 140–150 °F | 150–160 °F | 160–170 °F | 170–180 °F |
|---|---|---|---|---|---|---|---|
| 0–5 | 79 (51) | 83 (115) | 89 (163) | 93 (169) | 93 (32) |  |  |
| 5–10 | 97 (52) | 98 (170) | 101 (334) | 101 (359) | 97 (275) | 95 (90) |  |
| 10–15 |  | 107 (99) | 110 (321) | 112 (371) | 113 (278) | 114 (150) |  |
| 15–20 |  |  | 117 (86) | 120 (253) | 124 (246) | 125 (173) | 130 (11) |
| 20–25 |  |  |  | 123 (50) | 129 (130) | 133 (146) | 133 (19) |
| 25–30 |  |  |  |  | 131 (17) | 135 (37) |  |

**elm**

| Heat kBTU/h | 110–120 °F | 120–130 °F | 130–140 °F | 140–150 °F | 150–160 °F | 160–170 °F | 170–180 °F |
|---|---|---|---|---|---|---|---|
| 0–5 | 91 (48) | 93 (125) | 96 (188) | 102 (145) | 107 (60) |  |  |
| 5–10 | 99 (42) | 102 (204) | 104 (381) | 109 (417) | 112 (157) | 118 (23) |  |
| 10–15 | 105 (13) | 108 (79) | 110 (332) | 115 (496) | 118 (211) | 123 (19) |  |
| 15–20 |  | 110 (30) | 113 (167) | 117 (334) | 123 (178) | 127 (23) |  |
| 20–25 |  |  | 115 (55) | 119 (224) | 124 (114) | 127 (17) |  |
| 25–30 |  |  | 116 (15) | 122 (58) | 126 (66) |  |  |
| 30–35 |  |  |  | 123 (15) | 127 (20) |  |  |

**fir**

| Heat kBTU/h | 110–120 °F | 120–130 °F | 130–140 °F | 140–150 °F | 150–160 °F | 160–170 °F | 170–180 °F |
|---|---|---|---|---|---|---|---|
| 0–5 | 101 (133) | 106 (236) | 111 (267) | 112 (245) | 115 (123) | 119 (10) |  |
| 5–10 | 105 (83) | 109 (202) | 115 (371) | 118 (398) | 120 (175) | 120 (43) |  |
| 10–15 | 104 (21) | 109 (93) | 115 (257) | 120 (256) | 123 (150) | 126 (48) |  |
| 15–20 | 106 (13) | 113 (31) | 117 (132) | 123 (196) | 127 (94) | 130 (16) |  |
| 20–25 |  | 114 (10) | 120 (57) | 125 (144) | 130 (70) | 131 (12) |  |
| 25–30 |  |  | 122 (18) | 126 (78) | 132 (27) |  |  |
| 30–35 |  |  |  | 128 (14) | 133 (19) |  |  |

**maple1**

| Heat kBTU/h | 110–120 °F | 120–130 °F | 130–140 °F | 140–150 °F | 150–160 °F | 160–170 °F | 170–180 °F |
|---|---|---|---|---|---|---|---|
| 0–5 |  | 101 (10) | 92 (19) | 101 (75) | 103 (67) | 112 (28) |  |
| 5–10 |  | 117 (17) | 121 (26) | 124 (133) | 129 (359) | 134 (371) |  |
| 10–15 |  |  | 126 (16) | 135 (51) | 141 (157) | 146 (332) | 156 (21) |
| 15–20 |  |  |  | 135 (10) | 143 (50) | 152 (177) | 157 (39) |
| 20–25 |  |  |  |  |  | 153 (15) | 160 (11) |

**maple2**

| Heat kBTU/h | 110–120 °F | 120–130 °F | 130–140 °F | 140–150 °F | 150–160 °F | 160–170 °F | 170–180 °F |
|---|---|---|---|---|---|---|---|
| 0–5 | 76 (42) | 76 (72) | 83 (28) |  |  |  |  |
| 5–10 | 94 (92) | 94 (178) | 100 (172) | 108 (114) | 113 (39) | 117 (15) |  |
| 10–15 | 104 (15) | 111 (110) | 112 (239) | 117 (308) | 120 (215) | 125 (59) |  |
| 15–20 |  | 115 (14) | 120 (83) | 125 (193) | 131 (175) | 134 (65) |  |
| 20–25 |  |  |  | 131 (21) | 139 (44) | 144 (22) |  |

**oak**

| Heat kBTU/h | 110–120 °F | 120–130 °F | 130–140 °F | 140–150 °F | 150–160 °F | 160–170 °F | 170–180 °F |
|---|---|---|---|---|---|---|---|
| 0–5 | 94 (102) | 90 (185) | 94 (269) | 98 (158) | 105 (45) |  |  |
| 5–10 | 98 (76) | 97 (220) | 97 (337) | 103 (294) | 115 (143) | 123 (56) |  |
| 10–15 | 99 (31) | 100 (92) | 102 (310) | 102 (263) | 110 (130) | 122 (48) |  |
| 15–20 | 102 (15) | 105 (63) | 108 (201) | 110 (224) | 112 (114) | 114 (42) |  |
| 20–25 |  | 108 (33) | 114 (85) | 116 (111) | 117 (81) | 123 (27) |  |
| 25–30 |  | 111 (13) | 116 (35) | 121 (55) | 123 (16) | 125 (11) |  |
| 30–35 |  |  | 117 (21) |  |  |  |  |

What the running time did in the same cells, for beech (median share of
the hour the loop circulated):

| Heat kBTU/h | 110–120 °F | 120–130 °F | 130–140 °F | 140–150 °F | 150–160 °F | 160–170 °F | 170–180 °F |
|---|---|---|---|---|---|---|---|
| 0–5 | 8% | 9% | 9% | 9% | 8% |  |  |
| 5–10 | 37% | 26% | 22% | 19% | 13% | 9% |  |
| 10–15 |  | 63% | 47% | 37% | 29% | 23% |  |
| 15–20 |  |  | 80% | 69% | 54% | 46% | 44% |
| 20–25 |  |  |  | 96% | 83% | 70% | 56% |
| 25–30 |  |  |  |  | 100% | 89% |  |

## What was measured

Five occupied houses with air-to-water heat pumps and thermal storage,
none with a mixing valve between the store and distribution, over the
2025–26 heating season (October 1 to May 1). They are six distribution
systems: a panel heater was added at maple in the first week of
January, so maple is counted twice, as maple1 (October 1 to January 2)
and maple2 (January 9 to May 1).

For every hour of the season, from each house's own sensors:

- **Source temperature:** the water temperature going to distribution,
  flow-weighted over the hour.
- **Return temperature:** the water temperature coming back from
  distribution, flow-weighted over the hour.
- **Heat-call frequency:** the share of the hour the distribution loop
  was circulating (flow at or above 0.5 gpm), which is the share of the
  hour some zone was calling for heat.
- **Heat delivered:** the heat the distribution system took from the
  water in the hour, from flow and the source-to-return difference
  (500 × gpm × °F, summed over the hour), in thousands of BTU.

That is about 4,900 hours per house, with 2,200 of maple's in maple1
and 2,500 in maple2.

## Maple1 and maple2: the same house before and after a panel heater

A panel heater was added to maple's distribution system partway through
the season. The hourly data dates it to the first week of January 2026:
the heat the emitters give off per degree of water temperature steps up
between January 2 and January 9 and stays up. The two side by side, at
the same heat delivered (median return °F, with the median share of the
hour the loop circulated in brackets):

| Heat kBTU/h | System | 130–140 °F | 140–150 °F | 150–160 °F | 160–170 °F |
|---|---|---|---|---|---|
| 5–10 | maple1 | 121 (52%) | 124 (29%) | 129 (27%) | 134 (26%) |
| 5–10 | maple2 | 100 (18%) | 108 (20%) | 113 (18%) | 117 (16%) |
| 10–15 | maple1 | 126 (100%) | 135 (93%) | 141 (70%) | 146 (60%) |
| 10–15 | maple2 | 112 (38%) | 117 (34%) | 120 (30%) | 125 (29%) |
| 15–20 | maple1 | | 135 (100%) | 143 (100%) | 152 (100%) |
| 15–20 | maple2 | 120 (79%) | 125 (59%) | 131 (55%) | 134 (48%) |

- **The emitters' output per degree about doubled.** While circulating,
  the distribution system gave off a median 214 BTU per hour for each
  °F of mean water temperature above a 68 °F room before, and 421 after.
- **The return dropped 10 to 21 °F at the same heat and the same source
  temperature.**
- **The running time fell by about half.** At 10–15 thousand BTU and
  150–160 °F source the loop circulated 70% of the hour before and 30%
  after.
- **Maple2 looks like the other houses.** 30 °F more source raises the
  return 13 to 17 °F at the same heat.

This is the same house with more emitter surface, which points at the
cause of a hot return: emitters too small for the load keep the loop
running all hour, and a loop that runs all hour returns water close to
the source temperature. Other changes at maple in the same week have
not been ruled out.

## Supporting view: return against source and heat-call frequency

Heat-call frequency is not independent of source temperature: at the
same heating requirement, hotter water means less running time. This
view shows the two together without holding the requirement fixed, and
is where the running-time effect is easiest to see. Each cell is the
median return temperature in °F, with the number of hours in brackets.
Rows are source temperature; columns are heat-call frequency.

**beech**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 120–130 | 85 (153) | 99 (103) | 106 (61) | 110 (48) | 112 (11) |  |
| 130–140 | 91 (262) | 103 (309) | 111 (196) | 115 (83) | 118 (28) | 119 (29) |
| 140–150 | 94 (381) | 106 (349) | 116 (205) | 121 (165) | 124 (56) | 125 (47) |
| 150–160 | 94 (295) | 112 (261) | 123 (206) | 127 (115) | 132 (49) | 131 (53) |
| 160–170 | 94 (128) | 117 (164) | 127 (148) | 134 (113) | 136 (28) | 138 (24) |
| 170–180 |  |  | 131 (19) |  |  |  |

**elm**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 120–130 | 90 (107) | 99 (110) | 104 (116) | 107 (50) | 109 (24) | 112 (35) |
| 130–140 | 95 (213) | 104 (324) | 109 (265) | 112 (178) | 115 (76) | 117 (83) |
| 140–150 | 102 (235) | 112 (462) | 115 (412) | 117 (286) | 119 (152) | 123 (144) |
| 150–160 | 109 (136) | 116 (187) | 121 (178) | 123 (153) | 126 (82) | 129 (72) |
| 160–170 | 116 (14) | 123 (27) | 124 (16) | 127 (15) | 132 (13) |  |

**fir**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 120–130 | 102 (173) | 107 (187) | 112 (123) | 111 (46) | 114 (21) | 114 (24) |
| 130–140 | 106 (261) | 114 (359) | 117 (229) | 119 (145) | 120 (65) | 121 (42) |
| 140–150 | 111 (356) | 119 (391) | 122 (212) | 124 (174) | 126 (135) | 127 (62) |
| 150–160 | 116 (234) | 122 (178) | 126 (114) | 131 (73) | 133 (41) | 134 (20) |
| 160–170 | 117 (45) | 127 (59) | 132 (19) |  |  |  |

**maple1**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 120–130 |  |  |  |  |  | 118 (12) |
| 130–140 | 105 (21) |  |  |  |  | 126 (17) |
| 140–150 | 103 (111) | 124 (57) | 128 (31) | 132 (24) |  | 136 (37) |
| 150–160 | 115 (174) | 130 (177) | 138 (101) | 143 (66) | 144 (33) | 144 (83) |
| 160–170 | 121 (163) | 137 (226) | 143 (168) | 148 (133) | 151 (55) | 153 (178) |
| 170–180 |  |  |  |  | 156 (13) | 159 (45) |

**maple2**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 120–130 | 84 (169) | 100 (97) | 109 (45) | 113 (22) | 116 (12) | 116 (30) |
| 130–140 | 91 (136) | 106 (188) | 114 (84) | 120 (59) | 122 (27) | 125 (32) |
| 140–150 | 101 (86) | 115 (253) | 123 (173) | 129 (72) | 131 (31) | 131 (29) |
| 150–160 | 108 (45) | 120 (193) | 130 (123) | 136 (73) | 139 (14) | 140 (29) |
| 160–170 | 113 (25) | 125 (60) | 137 (45) | 141 (15) | 145 (10) |  |

**oak**

| Source °F | under 20% | 20–40% | 40–60% | 60–80% | 80–95% | 95–100% |
|---|---|---|---|---|---|---|
| 120–130 | 92 (306) | 99 (160) | 104 (47) | 107 (42) | 108 (22) | 108 (19) |
| 130–140 | 95 (514) | 102 (408) | 109 (165) | 113 (99) | 116 (27) | 116 (38) |
| 140–150 | 99 (461) | 106 (415) | 115 (145) | 122 (60) | 122 (12) | 118 (12) |
| 150–160 | 111 (260) | 115 (214) | 119 (49) |  |  |  |
| 160–170 | 120 (110) | 121 (71) |  |  |  |  |
| 170–180 | 126 (11) |  |  |  |  |  |

The same data for the steady column (heat call 95–100% of the hour) as
a drop from source to return, °F:

| Source °F | beech | elm | fir | maple1 | maple2 | oak |
|---|---|---|---|---|---|---|
| 120–130 | | 15.0 | 11.4 | 6.3 | 9.3 | 15.8 |
| 130–140 | 17.1 | 19.5 | 14.2 | 7.6 | 11.1 | 17.0 |
| 140–150 | 19.8 | 22.0 | 17.8 | 9.6 | 12.9 | 25.0 |
| 150–160 | 23.0 | 25.3 | 19.3 | 11.5 | 14.5 | |
| 160–170 | 25.5 | | | 13.3 | | |
| 170–180 | | | | 14.2 | | |

## What it does not show

- **The temperature entering the heat pump.** The return here is the
  water leaving distribution. What the heat pump sees depends on what
  that water mixes with at the bottom of the buffer. The next
  measurement is the heat pump's entering water temperature in the hours
  it ran while the top of the buffer was hot.
- **Emitter types and sizes at the other houses.** Maple shows that
  emitter capacity sets the return temperature; the other four houses'
  emitters have not been compared against their loads.
- **The requirement independent of what was delivered.** Heat delivered
  in an hour stands in for the heating requirement. In a single hour
  the two can differ, since a burst of hot water can deliver more than
  the hour needs and the next hour less. Grouping hours by outdoor
  temperature instead would test the same question without that.
- **Per-zone behavior.** Heat-call frequency is for the distribution
  loop as a whole, not for each zone.

## Method notes

Sensor readings are reported on change and were filled forward onto a
10-second grid before the hourly reduction. An hour is kept when at
least 95% of it has fresh temperature readings. Temperatures are
weighted by flow over the circulating part of the hour. Medians are
used throughout. Heat delivered assumes plain water. Quartiles and
the scripts are in the experiments
repository under `dist-loop-experiments/`.
