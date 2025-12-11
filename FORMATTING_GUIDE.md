# MyST Markdown and Math Formatting Guide

This guide describes the **MyST Markdown syntax and mathematical typesetting conventions** used throughout this textbook, with real examples from the chapters.

---

## Table of Contents

- [Chapter Structure](#chapter-structure)
- [Labels and Cross-References](#labels-and-cross-references)
- [Admonitions (Callout Boxes)](#admonitions-callout-boxes)
- [Figures and Images](#figures-and-images)
- [Tables](#tables)
- [Embedded Content](#embedded-content)
- [Mathematical Typesetting](#mathematical-typesetting)
- [Common Mistakes](#common-mistakes)
- [Chapter Template](#chapter-template)

---

## Chapter Structure

Every chapter file (`chapters/XYChapterName.md`) starts with YAML frontmatter:

**Example from Chapter 1** (Introduction):
```yaml
---
title: Chapter 1 - The Nature of Physics
numbering:
  headings:
  heading_1:
    start: 2
---
(chapter:introduction)=
# Overview
```

**Example from Chapter 5** (Newton's Laws):
```yaml
---
title: Chapter 5 - Newton's Laws
numbering:
  headings:
  heading_1:
    start: 6
---
(chapter:NewtonsLaws)=
# Overview
```

**Key points**:
- `title:` - Full chapter title as it appears in the book
- `numbering: heading_1: start: N` - Controls section numbering (usually matches chapter number)
- Chapter label `(chapter:name)=` comes immediately after frontmatter
- Use lowercase, descriptive names for labels (no spaces, use underscores or camelCase)

---

## Labels and Cross-References

### Creating Labels

Use `(label)=` on its own line to create reference points:

**Chapter labels** (from Chapter 5, line 9):
```markdown
(chapter:NewtonsLaws)=
# Overview
```

**Section labels** (from Chapter 5, line 111):
```markdown
(sec:newtonslaws:typesofforces)=
## Types of forces
```

**Example labels** (from Chapter 7):
```markdown
(ex:workenergy:spring)=
:::{note} Example 7.1
A block is pressed against...
:::
```

**Figure labels** (inside directive metadata):
```markdown
```{figure} figures/NewtonsLaws/weight.png
:label: fig:newtonslaws:weight
...
```
```

**Label naming conventions**:
- Chapters: `chapter:chaptername`
- Sections: `sec:chaptername:sectionname`
- Subsections: `subsec:chaptername:subsectionname`
- Figures: `fig:chaptername:descriptivename`
- Examples: `ex:chaptername:descriptivename`
- Problems: `prob:chaptername:shortname`
- Solutions: `soln:chaptername:shortname`
- Tables: `table:chaptername:descriptivename`
- Equations: `eqn:chaptername:descriptivename`

### Cross-Referencing

**To sections** (with auto-numbering using `%s`):
```markdown
Review [Section %s](#sec:Vectors:scalarproduct) on the scalar product.
```
From chapters/07WorkEnergy.md - MyST replaces `%s` with "3.4" automatically

**To chapters**:
```markdown
As we saw in [Chapter %s](#chapter:momentumandcm), uniform circular motion...
```
From chapters/06ApplyingNewtonsLaws.md - `%s` becomes the chapter number

**To figures** (auto-numbered, empty brackets):
```markdown
The normal force is shown in [](#fig:newtonslaws:normal).
```
From Chapter 5 - MyST automatically fills in "Figure 5.X"

**To examples**:
```markdown
This is the same problem from [Example 6.3](#ex:applyingnewtonslaws:blockspring).
```

**Key principles**:
- Use `%s` placeholder for auto-numbering of chapters and sections
- For figures/tables/equations, use empty `[]` brackets - MyST auto-fills with "Figure X.Y"
- All references start with `#` before the label name
- Never hard-code numbers like "Section 3.2" - always use cross-references

---

## Admonitions (Callout Boxes)

Admonitions create colored boxes for special content. Syntax: `:::{type} Title`

### Learning Objectives

**Example from Chapter 5, lines 14-19**:
```markdown
:::{hint} Learning Objectives
* Understand Newton's Three Laws.
* Understand the concept of force and how to identify a force.
* Understand the concepts of mass and inertia.
* Understand how to draw free-body diagrams.
:::
```

### Think About It (with Nested Dropdown Answer)

**Example from Chapter 1, lines 17-27**:
```markdown
:::{note} Think About It
A scientific theory...
1. is a tentative explanation for a natural phenomenon that can be tested.
2. proves our models correct and must be experimentally verified.
3. describes the natural world and must be experimentally verifiable.

:::{note} Answer
:class: dropdown
3.
:::
```

**Note**: The answer is nested inside and uses `:class: dropdown` to make it collapsible.

### Checkpoints

**Example from Chapter 5, lines 90-99**:
```markdown
:::{tip} Checkpoint
You push a heavy block in the North direction. The block is twice as heavy as you are. Which statement is true?
1.  The block exerts half of the force on you, in the North direction.
2.  The block exerts the same force on you, but in the South direction.
3.  The block exerts double of the force on you, in the South direction.

:::{tip} Answer
:class: dropdown
2.
:::
```

### Examples with Solutions

**Pattern from Chapter 7**:
```markdown
(ex:workenergy:spring)=
:::{note} Example 7.1
A block is pressed against the free end of a horizontal spring with spring constant, $k$...

:::{note} Solution
:class: dropdown
The force exerted by the spring on the block changes continuously with position, according to Hooke's law:
```{math}
\vec F(x) = -kx \hat x
```
...detailed solution...
:::
```

### Student Thought Boxes

**Example from Chapter 12**:
```markdown
:::{attention} Olivia's Thoughts
Here's a visualization of uniform circular motion projected onto the $x$ axis:
```{figure} figures/SimpleHarmonicMotion/circularmotionprojection.png
...
```
...explanation...
:::
```

Also used: `Emma's Thoughts`, `Josh's Thoughts` for different student perspectives

### Review/Prerequisite Boxes

**Example from Chapter 7**:
```markdown
:::{caution} Review
* [Section %s](#sec:Vectors:scalarproduct) on the scalar product.
* [Appendix %s](#sec:calculus:integrals) on integrals.
:::
```

### Important Summaries

**Example from Chapter 13**:
```markdown
:::{important} Important Equations
* $v = \lambda f$
* $\omega = 2\pi f = \frac{2\pi}{T}$
:::
```

### Further Exploration

**Example from Chapter 1**:
```markdown
:::{seealso} Reflect and research
* What particle helps to give mass to all of the massive elementary particles?
* Name that physicist! Who was the first to propose that the universe is expanding?
:::
```

### Complete List of Admonition Types

- `:::{hint}` - Learning objectives (blue background)
- `:::{note}` - Examples, problems, Think About It (light blue)
- `:::{tip}` - Checkpoints (green)
- `:::{attention}` - Student thoughts (yellow/orange)
- `:::{caution}` - Review sections (orange)
- `:::{important}` - Key equations/definitions (red)
- `:::{seealso}` - Further exploration (teal)

**Important**: No space between `:::` and `{type}` - write `:::{note}` not `::: {note}`

---

## Figures and Images

### Figures (with labels and captions)

Use `{figure}` directive for all diagrams and images that need to be cross-referenced.

**Standard figure from Chapter 5, lines 128-134**:
```markdown
```{figure} figures/NewtonsLaws/weight.png
:label: fig:newtonslaws:weight
:width: 10%
:align: center
:alt: The weight force on an object near the surface of the Earth points towards the centre of the Earth (downwards).
The weight force on an object near the surface of the Earth points towards the centre of the Earth (downwards).
```
```

**Required metadata**:
- `:label:` - Unique identifier (format: `fig:chaptername:description`)
- `:alt:` - Accessibility text describing the image (required!)
- Caption text after metadata (usually same or similar to alt text)

**Optional but recommended**:
- `:width:` - Size as percentage (`10%`, `50%`, `100%`) or pixels
- `:align:` - Usually `center`, but can be `left` or `right`

**Width guidelines from the book**:
- Small icons/diagrams: `10%` - `30%`
- Medium figures: `40%` - `50%`
- Large detailed figures: `60%` - `70%`
- Full-width: `90%` - `100%`

**Figure with math notation in caption**:
```markdown
```{figure} figures/NewtonsLaws/normal.png
:label: fig:newtonslaws:normal
:width: 50%
:align: center
:alt: The normal force, $\vec N$, exerted by a horizontal surface on a block (left side) and by an inclined surface (right side).
The normal force, $\vec N$, exerted by a horizontal surface on a block (left side) and by an inclined surface (right side).
```
```

**Note**: Math notation (`$\vec N$`) works in both alt text and captions!

### Simple Images (without labels)

For images that don't need cross-references, use simpler `{image}` directive:

**Example from Chapter 1, line 34**:
```markdown
```{image} figures/Introduction/tennis_ball_drop.jpg
:alt: A hand drops a tennis ball (credit:Gemini AI).
:width: 25%
:align: left
```
```

No `:label:`, no separate caption line - just metadata and done!

---

## Tables

**Example from Chapter 5, lines 286-293**:
```markdown
```{table} A table to record observations from PhET simulation.
:label: table:newtonslaws:phetsim
|Applied Force (N) | Time to Max Speed (s) | Acceleration (m/s²) |
|---------------:  |     ---------------:  |   ---------------:  |
| 50               |                       |                     |
| 100              |                       |                     |
| 200              |                       |                     |
```
```

**Table formatting**:
- Caption goes on the first line after the directive
- `:label:` for cross-referencing
- Use standard Markdown table syntax with `|` separators
- Column alignment: `|---:|` (right), `|:---|` (left), `|:---:|` (center)

---

## Embedded Content

### Interactive Simulations

**Example from Chapter 5, lines 277-282**:
```markdown
:::{iframe} https://phet.colorado.edu/sims/html/forces-and-motion-basics/latest/forces-and-motion-basics_en.html
:label: phet:newtonslaws:ForcesAndMotion
:width: 100%
:align: center
PhET simulation to model forces and motion.
:::
```

Used for embedding PhET simulations and other interactive content.

---

## Mathematical Typesetting

### Math Blocks

**Simple equation** (Chapter 1):
```markdown
```{math}
F_G=G\frac{M_1M_2}{r^2}
```
```

**Multi-line aligned equations** (Chapter 5):
```markdown
```{math}
\begin{align*}
\sum F_x &= ma_x \\
\sum F_y &= ma_y \\
\sum F_z &= ma_z
\end{align*}
```
```

**Equation with label** for cross-referencing:
```markdown
```{math}
:label: eqn:potential:potentialwork
W=\int_A^B \vec F^E\cdot d\vec r=-\Delta U
```
```

**Inline math** - use single dollar signs:
```markdown
The mass is $m$ and the force is $\vec F$.
```

### Variables (italic)

Variables are always italicized in math mode:

```latex
$m$    % mass
$t$    % time
$x$, $y$, $z$    % position coordinates
$\theta$, $\phi$  % angles
$k$    % spring constant
$\omega$ % angular frequency
$G$    % gravitational constant
```

**Example from text**: "the time, $t$, that it takes for a tennis ball to drop a height, $h$"

### Vectors (arrow notation `\vec`)

All vector quantities use arrow notation:

```latex
\vec F    % force vector
\vec v    % velocity vector
\vec a    % acceleration vector
\vec r    % position vector
\vec E    % electric field
\vec B    % magnetic field
\vec g    % gravitational field
\vec p    % momentum
```

**Example from Chapter 7**: "The work done by a force, $\vec F$, on an object over a displacement, $\vec d$"

**Example from Chapter 5**: "Newton's Second Law: $\sum \vec F = m\vec a$"

**Important**: Vector components are scalars (no arrow):
- ✅ Correct: `$F_x$`, `$v_y$`, `$a_z$`
- ❌ Wrong: `$\vec F_x$`, `$\vec v_y$`, `$\vec a_z$`

### Unit Vectors (hat notation `\hat`)

Unit vectors use hat notation:

```latex
\hat x, \hat y, \hat z    % Cartesian unit vectors
\hat r                     % radial unit vector
\hat i, \hat j, \hat k    % alternative notation (less common in this book)
```

**Example from Chapter 3**: "$\vec d = d_x\hat x +d_y \hat y$"

**Example from Chapter 5**: "$\vec F = -kx \hat x$" (Hooke's Law)

### Units (roman/upright `{\rm }`)

**CRITICAL RULE**: Units are NEVER italicized!

```latex
{\rm m}     % meters
{\rm kg}    % kilograms
{\rm N}     % Newtons
{\rm s}     % seconds
{\rm V}     % Volts
{\rm J}     % Joules
{\rm Hz}    % Hertz
{\rm rad}   % radians
{\rm N/kg}  % compound units
{\rm m/s}   % meters per second
{\rm m/s^2} % meters per second squared
```

**Examples from the book**:
- "a force of $1 {\rm N}$"
- "approximately $g=9.8 {\rm N/kg}$"
- "a distance $h_1=1 {\rm m}$"
- "The time to fall a distance $h_1=1 {\rm m}$, and $t_2$ be the time to fall a distance $h_2=2 {\rm m}$"

**Why this matters**: Compare $m$ (mass, a variable) vs ${\rm m}$ (meters, a unit). They mean completely different things!

### Subscripts

#### Descriptive Subscripts (roman/upright)

When the subscript describes what something is or represents a word abbreviation:

```latex
\vec F_g     % gravitational force (g for "gravity")
\vec F_T     % tension force (T for "tension")
\vec F_N     % normal force (N for "normal")
f_k          % kinetic friction (k for "kinetic")
f_s          % static friction (s for "static")
\mu_k        % coefficient of kinetic friction
\mu_s        % coefficient of static friction
v_{\rm max}  % maximum velocity
\vec v_{CM}  % center of mass velocity (CM for "center of mass")
```

#### Variable/Coordinate Subscripts (italic)

When the subscript is a variable, number, or coordinate:

```latex
F_x, F_y, F_z    % components along x, y, z axes
m_1, m_2         % numbered particles (1, 2 are numbers)
\vec v_i         % i-th velocity (i is a variable index)
r_A, r_B         % at positions A and B
x_0              % initial position (0 is just a number)
t_f              % final time (f for final)
```

**Examples from the book**:
- "$\sum F_x = ma_x$" - x is italic (it's a coordinate axis)
- "$\vec F_g = m\vec g$" - g is roman (descriptive: "gravitational")
- "$f_k=\mu_kN$" - k is roman (descriptive: "kinetic")
- "$m_1\vec v_1 + m_2\vec v_2$" - subscripts 1, 2 are italic (they're numbers identifying particles)

### Boxed Equations

Use `\boxed{}` for key equations that students should remember:

**Examples from the book**:
```latex
\boxed{W = \vec F \cdot \vec d = Fd\cos\theta}
```

```latex
\boxed{\omega = \sqrt{\frac{k}{m}}}
```

```latex
\boxed{\Delta K = -q \Delta V}
```

These appear with a box around them in the rendered output.

### Common Mathematical Patterns

**Force equations**:
```latex
\sum \vec F = m\vec a          % Newton's 2nd Law
\vec F_g = m\vec g             % Weight
\vec F = -kx \hat x            % Spring force (Hooke's Law)
f_k=\mu_kN                     % Kinetic friction magnitude
```

**Kinematics**:
```latex
v = \frac{dx}{dt}              % velocity (first derivative)
a = \frac{d^2x}{dt^2}          % acceleration (second derivative)
x(t) = A \cos(\omega t + \phi) % simple harmonic motion
```

**Energy and Work**:
```latex
W = \int_A^B \vec F \cdot d\vec r   % work integral
K = \frac{1}{2}mv^2                  % kinetic energy
U = \frac{1}{2}kx^2                  % spring potential energy
```

**Derivation alignment** (use `&=` for alignment):
```latex
\begin{align*}
x(t) &= A \cos(\omega t + \phi)\\
v(t) &= \frac{d}{dt}x(t) = -A\omega\sin(\omega t + \phi)\\
a(t) &= \frac{d}{dt}v(t) = -A\omega^2\cos(\omega t + \phi)
\end{align*}
```

**Special symbols**:
- Proportional: `$t \propto \sqrt{h}$` → $t \propto \sqrt{h}$
- Therefore: `$\therefore t_2 = \sqrt{2} t_1$` → $\therefore t_2 = \sqrt{2} t_1$
- Summation: `$\sum \vec F$` or `$\sum_{i=1}^N F_i$`
- Approximately: `$\sqrt{2}\sim 1.41$` or `$\sin\theta\approx \tan\theta$`
- Changes: `$\Delta x$` (finite change), `$dx$` (infinitesimal)
- Partial derivatives: `$\frac{\partial}{\partial t}$`

---

## Common Mistakes

| ❌ Wrong | ✅ Correct | Reason |
|----------|-----------|--------|
| `$m$` (for meters) | `${\rm m}$` | Units must be roman/upright |
| `F` (meaning force vector) | `$\vec F$` | Vectors need arrow notation |
| `$\vec{F_x}$` | `$F_x$` | Components are scalars, not vectors |
| `Section 3.2` | `[Section %s](#sec:vectors:unitvectors)` | Use cross-refs with %s placeholder |
| `::: {note}` | `:::{note}` | No space before `{` |
| `cos(θ)` or `cos(theta)` | `$\cos\theta$` | Function names are roman |
| `$F_{g}$` (italic g) | `$\vec F_g$` (roman g) | Descriptive subscripts are roman |
| `$\vec F_{g}$` (italic g) | `$\vec F_g$` (roman g) | Still wrong - g should be roman |
| `Figure 5.3` | `[](#fig:chapter:name)` | Use cross-references for auto-numbering |
| Missing `:alt:` on figures | Include `:alt:` | Required for accessibility |
| Skipping heading levels | Use # → ## → ### | Don't skip from # to ### |
| `$N$` (for Newtons) | `${\rm N}$` | N is a unit, must be roman |
| Hard-coded numbers | Use cross-refs | Let MyST handle numbering |

---

## Chapter Template

When creating new chapters or sections, follow this structure:

```markdown
---
title: Chapter X - Title
numbering:
  headings:
  heading_1:
    start: X
---
(chapter:chaptername)=
# Overview

:::{hint} Learning Objectives
* First objective
* Second objective
* Third objective
:::

:::{note} Think About It
Opening question to engage students...

:::{note} Answer
:class: dropdown
Answer here
:::

# First Major Section

Introduce concepts with clear explanations...

## Subsection Title

More detailed content...

:::{tip} Checkpoint
Quick question to check understanding?
1. Option A
2. Option B

:::{tip} Answer
:class: dropdown
1.
:::

(sec:chaptername:sectionname)=
# Another Major Section

:::{caution} Review
* [Section %s](#sec:otherchapter:section) on prerequisite topic
:::

Main content here...

(ex:chaptername:examplename)=
:::{note} Example X.Y
Problem statement with specific values and context...

:::{note} Solution
:class: dropdown
Step-by-step solution with explanations...

```{math}
\begin{align*}
F_x &= ma_x\\
F &= (2 {\rm kg})(3 {\rm m/s^2})\\
&= 6 {\rm N}
\end{align*}
```

**Discussion:** Why this result makes physical sense...
:::

# Summary

Key points from the chapter:
- Point 1
- Point 2
- Point 3

:::{important} Important Equations
* $\boxed{\sum \vec F = m\vec a}$ - Newton's Second Law
* $\boxed{W = \vec F \cdot \vec d}$ - Definition of work
:::

:::{seealso} Reflect and research
* Research question 1
* Research question 2
:::

# Sample problems and solutions

(prob:chaptername:problem1)=
:::{note} Problem X.1
Problem statement...
:::

(soln:chaptername:problem1)=
:::{note} Solution X.1
:class: dropdown
Detailed solution...
:::
```

---

## Quick Reference

### Heading Levels
```markdown
# Level 1 - Major sections
## Level 2 - Subsections
### Level 3 - Sub-subsections
```

### Text Formatting
```markdown
**bold text** - for emphasis and first introduction of terms
*italic text* - for gentle emphasis
`code` - for code or commands
```

### Lists
```markdown
- Unordered list
- Another item
  - Nested item

1. Ordered list
2. Second item
3. Third item
```

### Comments
```markdown
% This is a comment and won't be rendered
```

---

## Additional Resources

- [MyST Markdown Guide](https://mystmd.org/guide) - Official MyST documentation
- [LaTeX Math Symbols](https://www.ctan.org/pkg/comprehensive) - Comprehensive symbol reference
- Look at existing chapters for more examples!

---

**When in doubt, check existing chapters for examples of the pattern you need!**
