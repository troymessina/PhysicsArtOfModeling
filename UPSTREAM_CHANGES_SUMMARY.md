# Summary of Changes: phasematching/PhysicsArtOfModeling vs troymessina/PhysicsArtOfModeling

This document summarizes the 20 commits that exist in [phasematching/PhysicsArtOfModeling](https://github.com/phasematching/PhysicsArtOfModeling) but not in [troymessina/PhysicsArtOfModeling](https://github.com/troymessina/PhysicsArtOfModeling).

## Overview of Changes

The phasematching fork is **20 commits ahead** of the upstream troymessina repository. The changes primarily focus on:

1. **PDF Generation Support** - Enabling PDF export of the textbook
2. **PDF Build Error Fixes** - Fixing LaTeX/Typst compatibility issues
3. **GitHub Actions Improvements** - Automating PDF generation in CI/CD
4. **Cross-Reference Fixes** - Fixing broken equation and example references

---

## Commit Summary (Non-merge commits)

| Commit | Description |
|--------|-------------|
| `fe28b7f` | Match working project pattern for PDF download button |
| `80effd5` | Add icon: download to site action for visibility |
| `2dff889` | Fix PDF download button by building PDF before HTML |
| `d14edc0` | Add PDF download link to nav section |
| `3389da2` | Fix PDF not found by reordering build steps |
| `334265a` | Fix remaining PDF build errors (CC license image, cross-refs, duplicate labels) |
| `f57692d` | Replace unsupported `\lvert \rvert` with `|` in WorkEnergy chapter |
| `b918352` | Fix malformed figure block in ApplyingNewtonsLaws chapter |
| `a1d034e` | Remove unsupported `\boxed` LaTeX command from all chapters |
| `f855dd4` | Remove unsupported `\boxed` LaTeX command from equations |
| `d16f0b2` | Fix subfigure causing Typst subpar.grid compatibility error |
| `b4bae97` | Fix PDF build error: add space before subfigure labels |
| `038fd3b` | Fix PDF path to output directly to `_build/html` root |

---

## Detailed Changes by Category

### 1. PDF Generation Infrastructure

**Files Changed:**
- `.github/workflows/deploy.yml`
- `myst.yml`
- `public/.gitkeep` (new)

**Changes:**
- Added PDF export configuration to MyST
- Modified GitHub Actions workflow to build PDF before HTML
- Added download button/action for PDF in navigation
- Output PDF to `public/` directory for proper serving

### 2. LaTeX/Typst Compatibility Fixes

The following LaTeX commands were removed or replaced because they are not supported in Typst (the PDF rendering engine):

- **`\boxed{}`** - Removed from all equations across 18+ chapters
- **`\lvert` and `\rvert`** - Replaced with standard `|` bars

### 3. Cross-Reference Fixes

Many cross-references to examples and equations were simplified to plain text because the original references were either broken or incompatible with PDF generation.

### 4. Figure/Subfigure Fixes

- Fixed malformed figure blocks with text after closing backticks
- Added spaces before subfigure labels `(a)`, `(b)`, `(c)` to prevent Typst parsing issues
- Converted problematic subfigure syntax to separate figure blocks

---

## Chapter-by-Chapter Markdown Changes

### Chapter 00: Preface (`00preface.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 43 | Modified | Changed Creative Commons image from external URL to local file `./figures/cc-by-sa.png` |

---

### Chapter 02: Model and Experiment (`02ModelAndExperiment.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 221 | Modified | Changed `[](#ex:modelandexperiment:forceSI)` to `the example` |
| 428 | Modified | Changed `([](#ex:modelandexperiment:stdcalc))` to `(the example)` |

---

### Chapter 04: Momentum and CM (`04MomentumAndCM.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 37 | Modified | Removed `\boxed{}` from `\vec p = m\vec v` equation |
| 47 | Modified | Removed `\boxed{}` from momentum derivative equation |
| 165 | Modified | Removed `\boxed{}` from impulse-momentum equation |
| 293 | Modified | Removed `\boxed{}` from total momentum derivative equation |
| 373 | Modified | Changed `[Example 4.7](#ex:momentumandcm:1delastic)` to `Example 4.7` |
| 562 | Modified | Removed `\boxed{}` from relative velocity equation |
| 707 | Modified | Removed `\boxed{}` from center of mass velocity equation |
| 804 | Modified | Changed equation references to `the above two equations` |
| 824 | Modified | Removed `\boxed{}` from Newton's Second Law for CM |

---

### Chapter 04 (New): Momentum and CM (`04NewMomentumAndCM.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 58-70 | Modified | Converted subfigure syntax to two separate `{figure}` blocks |
| 323 | Modified | Added spaces before subfigure labels `(a)`, `(b)`, `(c)` in text; removed equation reference |
| 358 | Modified | Removed equation reference `{eq}\`eqn:MomentumAndCM:nonConstv\`` |
| 769 | Modified | Changed `[Example 4.7](#ex:momentumandcm:1delastic)` to `Example 4.7` |
| 946 | Modified | Changed equation reference to `the above two equations` |
| 1255 | Modified | Changed equation reference to `the above two equations` |
| 1572 | Modified | Removed `\boxed{}` from angle equation |
| 1643 | Modified | Fixed broken figure reference and equation references |
| 1670 | Modified | Removed `\boxed{}` from angular velocity equation |
| 1674 | Modified | Removed `\boxed{}` from linear-angular velocity relation |
| 1690 | Modified | Removed `\boxed{}` from angular acceleration equation |
| 1739 | Modified | Removed `\boxed{}` from centripetal acceleration equation |
| 1784 | Modified | Removed `\boxed{}` from period equation |

---

### Chapter 05: Newton's Laws (`05NewtonsLaws.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 413 | Modified | Changed `[Example 5.2](#ex:newtonslaws:blockI)` to `Example 5.2` |
| 498 | Modified | Changed `([Example 5.4](#ex:newtonslaws:2blocksI))` to `(Example 5.4)` |
| 551 | Modified | Changed `[Example 5.5](#ex:newtonslaws:2blocksHI)` to `Example 5.5` |

---

### Chapter 06: Applying Newton's Laws (`06ApplyingNewtonsLaws.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 247 | Modified | Changed `[Example 6.2](#ex:applyingnewtonslaws:block)` to `Example 6.2` |
| 578-580 | Modified | Fixed malformed figure block with text after closing backticks |
| 737 | Modified | Changed `[Example 6.5](#ex:applyingnewtonslaws:car)` to `Example 6.5` (two occurrences) |
| 747 | Modified | Changed `[Example 6.5](#ex:applyingnewtonslaws:car)` to `Example 6.5` |
| 780 | Modified | Changed equation reference to `the above two equations` |

---

### Chapter 07: Work and Energy (`07WorkEnergy.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 37 | Modified | Removed `\boxed{}` from work equation |
| 134 | Modified | Removed `\boxed{}` from work integral equation |
| 335 | Modified | Changed `[Example 7.2](#ex:workenergy:workfriction)` to `Example 7.2` |
| 366 | Modified | Removed `\boxed{}` from path integral equation |
| 566-567 | Modified | Changed example references to `Example 7.5` |
| 665 | Modified | Removed `\boxed{}` from kinetic energy equation |
| 669 | Modified | Removed `\boxed{}` from work-energy theorem |
| 703 | Modified | Changed `[Example 6.3](#ex:applyingnewtonslaws:blockspring)` to `Example 6.3` |
| 705 | Modified | Changed example reference to `Example 6.3` |
| 710 | Modified | Changed `[Example 7.1](#ex:workenergy:spring)` to `Example 7.1` |
| 836 | Modified | Changed `\lvert\vec{F}\rvert\lvert\vec{d}\rvert` to `|\vec{F}||\vec{d}|` |
| 994 | Modified | Removed `\boxed{}` from power equation |
| 998 | Modified | Removed `\boxed{}` from instantaneous power equation |
| 1052 | Modified | Changed `[Example 7.10](#ex:workenergy:powerconstantv)` to `Example 7.10` |
| 1056 | Modified | Changed example reference to `Example 7.10` |
| 1226 | Modified | Changed `[Example 7.4](#ex:workenergy:workparabola)` to `Example 7.4` |

---

### Chapter 08: Potential Energy and Conservation (`08PotentialECons.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 47 | Modified | Changed `[Example 7.2](#ex:workenergy:workfriction)` and `[Example 7.3](#ex:workenergy:workgravity)` to `Example 7.2` and `Example 7.3` |
| 72 | Modified | Removed `\boxed{}` from conservative force condition |
| 157 | Modified | Removed `\boxed{}` from potential energy definition |
| 173 | Modified | Changed `[Example 8.1](#ex:potentialecons:gravity)` to `Example 8.1` |
| 259 | Modified | Changed `[Example 7.3](#ex:workenergy:workgravity)` to `Example 7.3` |
| 327 | Modified | Changed `[Example 8.4](#ex:potentialecons:springpotential)` to `Example 8.4` |
| 331 | Modified | Changed example reference to `Example 8.4` |
| 380 | Modified | Removed `\boxed{}` from work-energy with non-conservative forces |
| 384 | Modified | Removed `\boxed{}` from conservation equation |
| 392 | Modified | Removed `\boxed{}` from mechanical energy definition |
| 553 | Modified | Changed `[Example 6.2](#ex:applyingnewtonslaws:block)` to `Example 6.2` |
| 590 | Modified | Changed example reference to `Example 6.2` |
| 592 | Modified | Changed example reference to `Example 6.2` |
| 714 | Modified | Removed `\boxed{}` from Lagrangian definition |
| 733 | Modified | Removed `\boxed{}` from Euler-Lagrange equation |

---

### Chapter 09: Gravity (`09Gravity.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 100 | Modified | Changed `[Example 9.2](#ex:gravity:keplerconstant)` to `Example 9.2` |
| 266 | Modified | Changed `[Example 9.3](#ex:gravity:gofr)` to `Example 9.3` |
| 294 | Modified | Changed example reference to `Example 9.3` |
| 352 | Modified | Removed `\boxed{}` from gravitational field equation |
| 534 | Modified | Changed `[Example 8.2](#ex:potentialecons:gravitycons)` to `Example 8.2` |
| 558 | Modified | Removed `\boxed{}` from gravitational potential energy |
| 569 | Modified | Removed `\boxed{}` from simplified potential energy |
| 888 | Modified | Changed `[Example 9.2](#ex:gravity:keplerconstant)` to `Example 9.2` |
| 908 | Modified | Changed `[Problem %s](#prob:gravity:geosyncorbit)` to `Problem 9.1` |

---

### Chapter 10: Rotational Dynamics (`10RotationalDynamics.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 104 | Modified | Removed `\boxed{}` from angular velocity definition |
| 223 | Modified | Removed `\boxed{}` from torque definition |
| 245 | Modified | Removed `\boxed{}` from rotational Newton's Second Law |
| 490 | Modified | Removed `\boxed{}` from moment of inertia definition |
| 494 | Modified | Removed `\boxed{}` from torque-inertia relation |
| 687 | Modified | Removed `\boxed{}` from parallel axis theorem |
| 976 | Modified | Changed `[Example 10.4](#ex:rotationaldynamics:ring)` to `Example 10.4` |

---

### Chapter 11: Angular Momentum and Rolling (`11AngularMomentumRolling.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 71 | Modified | Removed `\boxed{}` from rotational kinetic energy |
| 133 | Modified | Removed `\boxed{}` from work-energy theorem for rotation |
| 184 | Modified | Removed `\boxed{}` from total kinetic energy |
| 236 | Modified | Removed `\boxed{}` from rolling without slipping condition |
| 453 | Modified | Removed `\boxed{}` from angular momentum definition |
| 480 | Modified | Removed `\boxed{}` from torque-angular momentum relation |
| 491 | Modified | Removed `\boxed{}` from angular momentum for rotation |
| 581 | Modified | Removed `\boxed{}` from external torque equation |
| 599 | Modified | Removed `\boxed{}` from angular momentum of rigid body |

---

### Chapter 12: Simple Harmonic Motion (`12SimpleHarmonicMotion.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 49 | Modified | Removed `\boxed{}` from energy conservation equation |
| 83 | Modified | Removed `\boxed{}` from position function |
| 97 | Modified | Removed `\boxed{}` from angular frequency |
| 169 | Modified | Removed `\boxed{}` from period equation |
| 173 | Modified | Removed `\boxed{}` from frequency equation |
| 352 | Modified | Removed `\boxed{}` from SHM differential equation |
| 357 | Modified | Removed `\boxed{}` from general solution |

---

### Chapter 13: Waves (`13Waves.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 128 | Modified | Removed `\boxed{}` from wave speed equation |
| 186 | Modified | Removed `\boxed{}` from wave equation |
| 211 | Modified | Removed `\boxed{}` from simplified wave equation |
| 307 | Modified | Removed `\boxed{}` from wave speed on string |
| 530 | Modified | Removed `\boxed{}` from power equation |
| 671 | Modified | Removed `\boxed{}` from wavelength harmonics |
| 675 | Modified | Removed `\boxed{}` from frequency harmonics |
| 742 | Modified | Removed `\boxed{}` from standing wave equation |

---

### Chapter 14: Fluid Mechanics (`14FluidMechanics.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 121 | Modified | Removed `\boxed{}` from pressure equation |
| 166 | Modified | Removed `\boxed{}` from pressure gradient |
| 402 | Modified | Removed `\boxed{}` from buoyant force |
| 519 | Modified | Removed `\boxed{}` from continuity equation |
| 525 | Modified | Removed `\boxed{}` from incompressible continuity |
| 642 | Modified | Removed `\boxed{}` from Bernoulli's equation |
| 791 | Modified | Removed `\boxed{}` from viscosity equation |
| 822 | Modified | Removed `\boxed{}` from Poiseuille's law |
| 984 | Modified | Changed `[Example 14.7](#ex:fluidmechanics:kitchen)` to `Example 14.7` |

---

### Chapter 15: Charges and Fields (`15ChargesFields.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 121 | Modified | Removed `\boxed{}` from Coulomb's Law |
| 256 | Modified | Removed `\boxed{}` from electric field equation |
| 272 | Modified | Changed `[Example 15.2](#ex:chargesfields:chargetriangle)` to `Example 15.2` |
| 326 | Modified | Changed example reference to `the example` |
| 686 | Modified | Changed example references to `Example 15.5` and `Example 15.4` |
| 702 | Modified | Changed example reference to `the example` |
| 748 | Modified | Changed example references to `Example 15.4`, `Example 15.5`, `Example 15.6` |
| 794 | Modified | Removed `\boxed{}` from torque equation |
| 817 | Modified | Removed `\boxed{}` from potential energy equation |
| 953 | Modified | Changed `[Example 15.5](#ex:chargesfields:finiteline)` to `Example 15.5` |

---

### Chapter 16: Gauss's Law (`16Gauss.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 96 | Modified | Removed `\boxed{}` from flux integral |
| 202 | Modified | Removed `\boxed{}` from Gauss's Law |
| 204 | Modified | Changed `[Example 16.3](#ex:gauss:qsphere)` to `Example 16.3` |
| 219 | Modified | Changed example reference to `Example 16.3` |
| 259 | Modified | Changed example reference to `Example 16.3` |
| 319 | Modified | Changed `[Example 16.4](#ex:gauss:spherical)` to `Example 16.4` |
| 424 | Modified | Changed `[Example 15.5](#ex:chargesfields:finiteline)` to `Example 15.5` |
| 426 | Modified | Changed example reference to `Example 15.5` |
| 514 | Modified | Changed `[Example 15.6](#ex:chargesfields:squarecircle)` to `Example 15.6` |
| 516 | Modified | Changed example reference to `Example 15.6` |
| 521 | Modified | Changed `[Example 16.6](#ex:gauss:infiniteplate)` to `Example 16.6` |
| 529 | Modified | Changed example references to `Example 16.6` (two occurrences) |
| 549 | Modified | Changed example reference to `Example 16.6` |
| 620 | Modified | Removed `\boxed{}` from local Gauss's Law |

---

### Chapter 17: Electric Potential (`17ElectricPotential.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 68 | Modified | Removed `\boxed{}` from potential energy equation |
| 154 | Modified | Removed `\boxed{}` from kinetic energy relation |
| 260 | Modified | Removed `\boxed{}` from potential difference integral |
| 708 | Modified | Removed `\boxed{}` from capacitance equation |
| 716 | Modified | Changed `[Example 17.3](#ex:potential:parallelplates)` to `Example 17.3` |

---

### Chapter 18: Current (`18Current.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 49 | Modified | Removed `\boxed{}` from current definition |
| 57 | Modified | Removed `\boxed{}` from current density |
| 130 | Modified | Removed `\boxed{}` from current-drift velocity |
| 140 | Modified | Removed `\boxed{}` from current density-drift velocity |
| 181 | Modified | Removed `\boxed{}` from Ohm's Law (microscopic) |
| 274 | Modified | Removed `\boxed{}` from potential-current relation |
| 278 | Modified | Removed `\boxed{}` from Ohm's Law |
| 282 | Modified | Removed `\boxed{}` from resistance equation |
| 339 | Modified | Removed `\boxed{}` from series resistors |
| 395 | Modified | Removed `\boxed{}` from parallel resistors |
| 454 | Modified | Removed `\boxed{}` from power equation |

---

### Chapter 19: Circuits (`19Circuits.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 210 | Modified | Changed `[Example 19.1](#ex:circuits:tworesistors)` to `Example 19.1` |
| 315 | Modified | Changed example reference to `Example 19.1` |
| 807 | Modified | Changed `[Example 6.4](#ex:applyingnewtonslaws:drag)` to `Example 6.4` |

---

### Chapter 20: Magnetic Force (`20MagneticForce.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 89 | Modified | Removed `\boxed{}` from Lorentz force |
| 236 | Modified | Removed `\boxed{}` from force on current-carrying wire |
| 363 | Modified | Changed `[Example 20.2](#ex:magneticforce:semicircle)` to `Example 20.2` (two occurrences) |
| 407 | Modified | Removed `\boxed{}` from torque on dipole |
| 475 | Modified | Removed `\boxed{}` from potential energy |
| 530 | Modified | Changed `[Example 20.1](#ex:magneticforce:massspec)` to `Example 20.1` |

---

### Chapter 21: Magnetic Sources (`21MagneticSource.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 52 | Modified | Removed `\boxed{}` from Biot-Savart Law |
| 165 | Modified | Removed `\boxed{}` from finite wire field |
| 179 | Modified | Removed `\boxed{}` from infinite wire field |
| 264 | Modified | Removed `\boxed{}` from loop field |
| 354 | Modified | Removed `\boxed{}` from Ampère's Law |
| 548 | Modified | Removed `\boxed{}` from differential Ampère's Law |
| 617 | Modified | Removed `\boxed{}` from solenoid field |

---

### Chapter 22: Induction (`22Induction.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 36 | Modified | Removed `\boxed{}` from Faraday's Law |
| 165 | Modified | Changed `[Example 22.1](#ex:induction:changingB)` to `Example 22.1` |
| 184 | Modified | Changed example reference to `Example 22.1` |
| 382 | Modified | Removed `\boxed{}` from Faraday's Law (integral form) |

---

### Chapter 23: Special Relativity (`23SpecialRelativity.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 233 | Modified | Removed `\boxed{}` from time dilation |
| 241 | Modified | Removed `\boxed{}` from Lorentz factor |
| 330 | Modified | Changed `[Example 23.2](#ex:specialrelativity:alphatrip)` to `Example 23.2` (multiple occurrences) |
| 335 | Modified | Removed `\boxed{}` from length contraction |
| 337 | Modified | Changed example reference to `Example 23.2` |
| 707 | Modified | Removed `\boxed{}` from velocity addition |
| 773 | Modified | Removed `\boxed{}` from relativistic momentum |
| 882 | Modified | Removed `\boxed{}` from energy-mass relation |
| 886 | Modified | Removed `\boxed{}` from rest mass energy |
| 921 | Modified | Removed `\boxed{}` from energy-momentum relation |

---

### Chapter 24: Calculus Appendix (`24Calculus.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 75 | Modified | Removed `\boxed{}` from derivative definition |
| 440 | Modified | Removed `\boxed{}` from integral definition |

---

### Chapter 25: Visual Python Appendix (`25VisualPython.md`)

| Line | Change Type | Description |
|------|-------------|-------------|
| 193 | Modified | Changed duplicate label `app:visualpython:blanktrinket` to `app:visualpython:blanktrinket2` |

---

## New Files Added

| File | Description |
|------|-------------|
| `chapters/figures/cc-by-sa.png` | Local Creative Commons license image (replacing external URL) |
| `public/.gitkeep` | Directory for PDF output |

---

## Summary Statistics

- **Total commits ahead:** 20 (13 non-merge)
- **Chapters modified:** 24
- **Primary change type:** Removal of `\boxed{}` LaTeX commands (~100+ occurrences)
- **Secondary change type:** Cross-reference fixes (~50+ occurrences)
- **Infrastructure changes:** GitHub Actions workflow, MyST configuration
