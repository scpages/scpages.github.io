# Rock Cracking Formula — Star Citizen 4.x

Reverse-engineered from `scminer.rocks/calculators/rock-crackability` (chunk `1ylo9ryui_bln.js`, modules 30750 + 47609).

---

## Core Formula

```
Dissipation Threshold (W) = 0.36 × rock.mass (kg)
```

```
Effective Resistance (%) = clamp(rock.resistance × (1 + netResistanceMod / 100), 0, 98)
```

```
Delivered Power (W) = rawLaserPower × (1 − effectiveResistance / 100)
```

```
Power Ratio = Delivered Power / Dissipation Threshold
```

---

## Verdicts

| Power Ratio | Result |
|---|---|
| ≥ 1.60 | Trivial |
| ≥ 1.15 | Optimal (Easy) |
| ≥ 1.00 | Challenging (borderline solo) |
| ≥ 0.70 | Requires Gadget |
| < 0.70 | Impossible Solo |

---

## Raw Laser Power

Each turret contributes:
```
turretPower = head.maxPower × (1 + headModulesPowerSum / 100)
```
Sum across all active turrets → `rawLaserPower`.

If a gadget or consumable has a `power` modifier, multiply total:
```
rawLaserPower = rawLaserPower × (1 + powerMod / 100)
```

---

## Net Stat Modifiers

Averaged across active lasers + summed from all modules/gadgets/consumables:

```
netResistanceMod  = avg(head.resistance)  + modules + gadget + consumable
netInstabilityMod = avg(head.instability) + modules + gadget + consumable
netGreenZoneMod   = avg(head.greenZone)   + modules + gadget + consumable
netChargeRateMod  = avg(head.chargeRate)  + modules + gadget + consumable
```

---

## Useful Derived Values

```
maxCrackableMass (kg) = round(Delivered Power / 0.36)

recommendedThrottle (%) = clamp(5, 100,
  round(1.08 × Dissipation Threshold / Delivered Power × 100))

estimatedCrackTime (s) = round(14 / max(0.3, 1 + netChargeRateMod/100) × 10) / 10
```

---

## Shatter Risk

```
Low      if netShatterMod ≤ −20 OR effectiveInstability < 25
Extreme  if netShatterMod ≥ +20 OR effectiveInstability > 50 OR ore = Quantainium
Moderate otherwise
```

---

## Laser Heads

| Name | Size | Slots | Max Power (W) | Resistance Mod | Instability Mod | Green Zone Mod |
|---|---|---|---|---|---|---|
| Arbor MH1 | 1 | 1 | 2,340 | +25% | −35% | +40% |
| Arbor MH2 | 2 | 2 | 2,900 | +25% | −35% | +40% |
| Helix 1 | 1 | 2 | 3,900 | −30% | 0% | −40% |
| Helix 2 | 2 | 3 | 4,930 | −30% | 0% | −40% |
| Hofstede-S1 | 1 | 1 | 2,600 | −30% | +10% | +60% |
| Hofstede-S2 | 2 | 2 | 4,060 | −30% | +10% | +60% |
| Impact 1 | 1 | 2 | 2,600 | +10% | −10% | +20% |
| Impact 2 | 2 | 3 | 4,060 | +10% | −10% | +20% |
| Klein-S1 | 1 | 0 | 3,120 | −45% | +35% | +20% |
| Klein-S2 | 2 | 1 | 4,350 | −45% | +35% | +20% |
| Lancet MH1 | 1 | 1 | 3,120 | 0% | −10% | −60% |
| Lancet MH2 | 2 | 2 | 4,350 | 0% | −10% | −60% |
| Pitman | 1 | 2 | 3,900 | +25% | +35% | +40% |

---

## Modules — Consumables

| Name | Power | Resistance | Instability | Green Zone | Other |
|---|---|---|---|---|---|
| Brandt | +35% | +16% | — | — | Shatter −30% |
| Clearcut | +15% | — | — | +30% | — |
| Forel | — | +15% | — | — | Overcharge rate −60%, Extract power +50% |
| Lifeline | — | −15% | −20% | — | Overcharge rate +60% |
| Optimum | −15% | — | −10% | — | Overcharge rate −80% |
| Rime | −15% | −25% | — | — | Shatter −10% |
| Stampede | +35% | — | −10% | — | Shatter −10%, Extract power −15% |
| Surge | +50% | −16% | +10% | — | — |
| Torpid | — | — | — | — | Charge rate +80%, Overcharge rate +60%, Shatter +40% |

## Modules — Passives

| Name | Power | Green Zone | Other |
|---|---|---|---|
| Focus I | −15% | +20% | Inert −3% |
| Focus II | −10% | +30% | Inert −2% |
| Focus III | −5% | +40% | Inert −1% |
| Rieger | +15% | −10% | — |
| Rieger-C2 | +20% | −3% | — |
| Rieger-C3 | +25% | −1% | — |
| Vaux-C1 | −15% | — | Extract power +15% |
| Vaux-C2 | −10% | — | Extract power +20% |
| Vaux-C3 | −5% | — | Extract power +25% |
| Deluge | +15% | — | Extract power −15%, Resistance −16% |
| Overrun | +2% | — | Extract power −15%, Resistance −25% |
| XTR | — | +10% | Inert −2%, Extract power −15% |
| XTR-L | — | +18% | Inert −4%, Extract power −10% |
| XTR-XL | — | +25% | Inert −6%, Extract power −5% |
| Torrent I | — | −3% | Charge rate +20% |
| Torrent II | — | −2% | Charge rate +30% |
| Torrent III | — | −1% | Charge rate +40% |
| FLTR | — | — | Inert −8%, Extract power −15% |
| FLTR-L | — | — | Inert −16%, Extract power −10% |
| FLTR-XL | — | — | Inert −24%, Extract power −5% |

---

## Gadgets (EVA, attached to rock)

| Name | Resistance | Instability | Green Zone | Charge Rate | Other |
|---|---|---|---|---|---|
| Boremax | +10% | −70% | — | — | Clustering +30% |
| Okunis | — | — | +50% | +100% | Clustering −20% |
| Optimax | −30% | — | −30% | — | Clustering +60% |
| Sabir | −50% | +15% | +50% | — | — |
| Stalwart | — | −35% | −30% | +50% | Clustering +30% |
| Waveshift | — | −35% | +100% | −30% | — |
