# Writing Conventions for Physics: Art of Modeling

This document describes the **MyST Markdown formatting conventions** used throughout this textbook, with extensive examples drawn directly from the chapters. This covers both MyST-specific syntax and mathematical typesetting conventions.

---

## Part 1: MyST Markdown Structure

### 1.1 Chapter Frontmatter

**Convention**: Every chapter file starts with YAML frontmatter.

**Example from Chapter 1**:
```yaml
---
title: Chapter 1 - The Nature of Physics
numbering:
  headings:
  heading_1:
    start: 2
---
```

**Example from Chapter 5**:
```yaml
---
title: Chapter 5 - Newton's Laws
numbering:
  headings:
  heading_1:
    start: 6
---
```

**Key elements**:
- `title:` - The chapter title as it appears in the book
- `numbering:` - Controls how sections are numbered
  - `heading_1: start: N` - What number the first heading starts at

### 1.2 Labels and Anchors

**Convention**: Use `(label)=` on a line by itself to create a reference point.

**Label syntax patterns from the book**:

**Chapter labels**:
```markdown
(chapter:introduction)=
# Overview
```
From Chapter 1:01Introduction.md

**Section labels**:
```markdown
(sec:newtonslaws:typesofforces)=
## Types of forces
```
From Chapter 5:NewtonsLaws.md, line 111

**Figure labels** (in directive):
```markdown
```{figure} figures/NewtonsLaws/weight.png
:label: fig:newtonslaws:weight
:width: 10%
:align: center
```

**Example labels**:
```markdown
(ex:workenergy:spring)=
:::{note} Example 7.1
```

**Problem/Solution labels**:
```markdown
(prob:introduction:chemtrails)=
:::{note}Problem 1.1
```

```markdown
(soln:introduction:chemtrails)=
:::{note}Solution 1.1
```

**Naming conventions**:
- Chapters: `chapter:chaptername`
- Sections: `sec:chaptername:sectionname`
- Figures: `fig:chaptername:description`
- Examples: `ex:chaptername:description`
- Problems: `prob:chaptername:description`
- Solutions: `soln:chaptername:description`
- Tables: `table:chaptername:description` or `tab:chaptername:description`
- Checkpoints: Can have labels like `Checkpoint-3.1` (used with `:label:` in the directive)

### 1.3 Cross-References

**Convention**: Use different reference syntax depending on what you're linking to.

**Internal cross-references with auto-numbering**:

**To sections**:
```markdown
[Section %s](#sec:Vectors:scalarproduct)
```
From chapters/07WorkEnergy.md: "Review [Section %s](#sec:Vectors:scalarproduct) on the scalar product."

**To chapters**:
```markdown
[Chapter %s](#chapter:momentumandcm)
```
From chapters/06ApplyingNewtonsLaws.md: "As we saw in [Chapter %s](#chapter:momentumandcm)"

**To examples**:
```markdown
[Example 6.3](#ex:applyingnewtonslaws:blockspring)
```
From chapters/07WorkEnergy.md

**To figures** (inline, auto-numbered):
```markdown
[](#fig:newtonslaws:normal)
```
From Chapter 5: "shows two examples...in [](#fig:newtonslaws:normal)"

Usage in text: "as illustrated in [](#fig:simpleharmonicmotion:spring)"

**Key points**:
- `%s` is a placeholder that MyST automatically replaces with the section/chapter number
- For figures, use empty brackets `[]` before the reference - MyST auto-fills with "Figure X.Y"
- All references use the `#` prefix before the label name

### 1.4 Admonitions (Callout Boxes)

**Convention**: Use `:::` fence with type name, optionally with title and classes.

**Basic syntax**:
```markdown
:::{type} Optional Title
Content here
:::
```

**Types used in this book**:

**Learning Objectives** (`hint`):
```markdown
:::{hint} Learning Objectives
* Understand Newton's Three Laws.
* Understand the concept of force and how to identify a force.
:::
```
From Chapter 5, line 14

**Think About It** (`note`):
```markdown
:::{note} Think About It
A scientific theory...
1. is a tentative explanation...
2. proves our models correct...

:::{note} Answer
:class: dropdown
3.
:::
```
From Chapter 1, lines 17-27

**Checkpoints** (`tip`):
```markdown
:::{tip} Checkpoint
You push a heavy block in the North direction...
1.  The block exerts half of the force...
2.  The block exerts the same force...

:::{tip} Answer
:class: dropdown
2.
:::
```
From Chapter 5, lines 90-99

**Examples** (`note`):
```markdown
(ex:workenergy:spring)=
:::{note} Example 7.1
A block is pressed against the free end...

:::{note} Solution
:class: dropdown
The force exerted by the spring...
:::
```
From Chapter 7

**Student Thoughts** (`attention`):
```markdown
:::{attention} Olivia's Thoughts
Here's a visualization of uniform circular motion...
:::
```
From Chapter 12

**Important Information** (`important`):
```markdown
:::{important} Important Equations
* $v = \lambda f$
:::
```
From Chapter 13

**Further Exploration** (`seealso`):
```markdown
:::{seealso} Reflect and research
* What particle helps to give mass...
:::
```
From Chapter 1

**Review boxes** (`caution`):
```markdown
:::{caution} Review
* [Section %s](#sec:Vectors:scalarproduct) on the scalar product.
* [Appendix %s](#sec:calculus:integrals) on integrals.
:::
```
From Chapter 7

**Nesting and dropdowns**:
- Use `:class: dropdown` to make content collapsible
- Nest by indenting the inner admonition
- Common pattern: Questions with dropdown answers

**Example of nested dropdowns**:
```markdown
:::{note} Think About It
Question here

:::{note} Answer
:class: dropdown
Answer here
:::
```

### 1.5 Figures

**Convention**: Use `{figure}` directive with specific metadata fields.

**Standard figure syntax**:
```markdown
```{figure} figures/NewtonsLaws/weight.png
:label: fig:newtonslaws:weight
:width: 10%
:align: center
:alt: The weight force on an object near the surface of the Earth points towards the centre of the Earth (downwards).
The weight force on an object near the surface of the Earth points towards the centre of the Earth (downwards).
```
```
From Chapter 5, lines 128-134

**Required fields**:
- Path to image file (relative to chapter file)
- `:label:` - Unique identifier for cross-referencing
- `:alt:` - Alt text for accessibility (required!)
- Caption text after the metadata

**Optional fields**:
- `:width:` - Width as percentage (e.g., `50%`, `100%`) or size (`300px`)
- `:align:` - Usually `center`, but can be `left` or `right`

**Width conventions from the book**:
- Small diagrams/icons: `10%` (like the weight vector)
- Medium figures: `30%`, `40%`, `50%`
- Large figures: `60%`, `70%`
- Full-width: `90%`, `100%`

**Caption conventions**:
- Describe what the figure shows
- Reference the figure content explicitly
- The alt text and caption are usually the same or very similar
- If there's credit info, include it (e.g., "Credit: R. Hurt/Caltech-JPL")

**Example of a complex caption**:
```markdown
```{figure} figures/NewtonsLaws/normal.png
:label: fig:newtonslaws:normal
:width: 50%
:align: center
:alt: The normal force, $\vec N$, exerted by a horizontal surface on a block (left side) and by an inclined surface (right side). In both cases, the normal force on the object is perpendicular to the interface between the object and the surface and points in the direction from the interface towards the object.
The normal force, $\vec N$, exerted by a horizontal surface on a block (left side) and by an inclined surface (right side). In both cases, the normal force on the object is perpendicular to the interface between the object and the surface and points in the direction from the interface towards the object.
```
```

**Note**: Math notation works in both alt text and captions!

### 1.6 Images (Simpler Syntax)

**Convention**: Use `{image}` directive for images without complex captions.

**Example from Chapter 1**:
```markdown
```{image} figures/Introduction/tennis_ball_drop.jpg
:alt: A hand drops a tennis ball (credit:Gemini AI).
:width: 25%
:align: left
```
```
From line 34

**Difference from figures**:
- No `:label:` (can't be cross-referenced)
- Simpler for inline images
- No separate caption line

### 1.7 Tables

**Convention**: Use `{table}` directive with markdown table syntax.

**Example from Chapter 5**:
```markdown
```{table} A table to record observations from PhET simulation.
:label: table:newtonslaws:phetsim
|Applied Force (N) | Time to Max Speed (s) | Acceleration (m/s2) |
|---------------:  |     ---------------:  |   ---------------:  |
| 50               |                       |                     |
| 100              |                       |                     |
| 200              |                       |                     |
```
```
From lines 286-293

**Table structure**:
- Caption goes after the directive opening
- `:label:` for cross-referencing
- Use standard markdown table with `|` separators
- Alignment with colons: `|---:|` (right), `|:---|` (left), `|:---:|` (center)

### 1.8 Interactive Elements

**Embedded iframes** (for simulations):
```markdown
:::{iframe} https://phet.colorado.edu/sims/html/forces-and-motion-basics/latest/forces-and-motion-basics_en.html
:label: phet:newtonslaws:ForcesAndMotion
:width: 100%
:align: center
PhET simulation to model forces and motion.
:::
```
From Chapter 5, lines 277-282

---

## Part 2: Mathematical Typesetting

### 2.1 Math Blocks

**Convention**: Use `{math}` directive for standalone equations.

**Simple equation**:
```markdown
```{math}
F_G=G\frac{M_1M_2}{r^2}
```
```
From Chapter 1

**Multi-line aligned equations**:
```markdown
```{math}
\begin{align*}
\sum F_x &= ma_x \\
\sum F_y &= ma_y \\
\sum F_z &= ma_z
\end{align*}
```
```
From Chapter 5

**Equation with label** (for numbering and cross-reference):
```markdown
```{math}
:label: eqn:potential:potentialwork
W=\int_A^B \vec F^E\cdot d\vec r=-\Delta U=-\left[ U(\vec r_B)-U(\vec r_A) \right]
```
```

**Inline math**: Use single `$` delimiters:
```markdown
The mass is $m$ and the force is $\vec F$.
```

### 2.2 Important Mathematical Conventions

#### Variables (italic)
- Mass: $m$, time: $t$, position: $x$, $y$, $z$
- Angles: $\theta$, $\phi$
- Constants: $k$, $G$, $\omega$

**Example**: "the time, $t$, that it takes for a tennis ball to drop a height, $h$"

#### Vectors (arrow notation)
```latex
\vec F  % Force vector
\vec v  % Velocity vector
\vec a  % Acceleration vector
\vec r  % Position vector
```

**Examples from book**:
- "The work done by a force, $\vec F$, on an object over a displacement, $\vec d$"
- "Newton's Second Law: $\sum \vec F = m\vec a$"

#### Unit vectors (hat notation)
```latex
\hat x, \hat y, \hat z  % Cartesian
\hat r                   % Radial
```

**Example**: "$\vec d = d_x\hat x +d_y \hat y$"

#### Units (roman/upright)
```latex
{\rm m}   % meters
{\rm kg}  % kilograms
{\rm N}   % Newtons
{\rm s}   % seconds
{\rm V}   % Volts
```

**Example**: "a force of $1 {\rm N}$" or "approximately $g=9.8 {\rm N/kg}$"

**Critical**: Units are NEVER italicized!

#### Subscripts
**Descriptive subscripts** (roman):
```latex
\vec F_g     % gravitational force
f_k          % kinetic friction
\mu_s        % static coefficient
```

**Variable/coordinate subscripts** (italic):
```latex
F_x, F_y     % x and y components
m_1, m_2     % numbered particles
```

**Example**: "$\sum F_x = ma_x$" (coordinate) vs "$\vec F_g = m\vec g$" (descriptive)

### 2.3 Boxed Equations

**Convention**: Important equations are boxed with `\boxed{}`.

**Examples from the book**:
```latex
\boxed{W = \vec F \cdot \vec d = Fd\cos\theta = F_xd_x+F_yd_y+F_zd_z}
```

```latex
\boxed{\omega = \sqrt{\frac{k}{m}}}
```

```latex
\boxed{\Delta K = -q \Delta V}
```

Use for key equations students should remember!

### 2.4 Common Mathematical Patterns

**Force equations**:
```latex
\sum \vec F = m\vec a
\vec F_g = m\vec g
\vec F = -kx \hat x
f_k=\mu_kN
```

**Derivatives**:
```latex
v = \frac{dx}{dt}
a = \frac{d^2x}{dt^2}
```

**Integrals**:
```latex
W = \int_A^B \vec F \cdot d\vec r
V(\vec r)=-\int \vec E\cdot d\vec r + C
```

**Alignment in derivations**:
```latex
\begin{align*}
x(t) &= A \cos(\omega t + \phi)\\
v(t) &= \frac{d}{dt}x(t) = -A\omega\sin(\omega t + \phi)\\
a(t)&= \frac{d}{dt}v(t) = -A\omega^2\cos(\omega t + \phi)
\end{align*}
```

**Special symbols**:
- Proportional: `$t \propto \sqrt{h}$`
- Therefore: `$\therefore t_2 = \sqrt{2} t_1$`
- Summation: `$\sum \vec F$` or `$\sum_{i=1}^N$`
- Approximately: `$\sqrt{2}\sim 1.41$`
- Changes: `$\Delta x$` (finite), `$dx$` (infinitesimal)

---

## Part 3: Writing Style Conventions

### 3.1 Bold Text

**Convention**: Use `**text**` for emphasis and definitions.

**Examples from Chapter 1**:
- "Science assumes the universe is orderly, reasonable, and testable. The **scientific method** relies on..."
- "A **hypothesis** is a question or idea about the natural world"
- "The force is called **normal** because it is normal (i.e. perpendicular)"

**Use bold for**:
- First introduction of key terms
- Important conceptual points
- Emphasis (sparingly)

### 3.2 Italic Text

**Convention**: Use `*text*` for gentle emphasis or when referring to motion.

**Example**: "When modelling *your motion*, we will need to include that force"

### 3.3 Comments and Old LaTeX

**Comments** (not rendered):
```markdown
%![A hand drops a tennis ball (credit:Gemini AI).](figures/Introduction/tennis_ball_drop.jpg)
```
Lines starting with `%` are comments

**Footnotes**:
```markdown
This is text[^12]!

[^12]: Footnote content here
```

---

## Part 4: Chapter Structure

### 4.1 Standard Chapter Organization

**Template**:
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
:::

:::{note} Think About It
Question...

:::{note} Answer
:class: dropdown
Answer
:::

# First Major Section

Content...

## Subsection

Content...

:::{tip} Checkpoint
Question?
1. Option 1
2. Option 2

:::{tip} Answer
:class: dropdown
1.
:::

(sec:chaptername:sectionname)=
# Another Section

:::{note} Example X.Y
Problem statement

:::{note} Solution
:class: dropdown
Detailed solution
:::

# Summary

Summary text...

:::{important} Important Equations
* Equation 1
* Equation 2
:::

:::{seealso} Reflect and research
* Question 1
* Question 2
:::

# Sample problems and solutions

(prob:chaptername:problem1)=
:::{note}Problem X.1
Problem statement
:::

(soln:chaptername:problem1)=
:::{note}Solution X.1
:class: dropdown
Solution
:::
```

### 4.2 Heading Levels

```markdown
# Level 1 Heading (Main sections)
## Level 2 Heading (Subsections)
### Level 3 Heading (Sub-subsections)
```

**Note**: Don't skip levels!

---

## Part 5: Quick Reference Tables

### MyST Directives Used in This Book

| Directive | Purpose | Example |
|-----------|---------|---------|
| `:::{hint}` | Learning objectives | Start of each chapter |
| `:::{note}` | Examples, problems, Think About It | Throughout chapters |
| `:::{tip}` | Checkpoints with answers | Throughout chapters |
| `:::{attention}` | Student thought boxes | Olivia's/Emma's/Josh's Thoughts |
| `:::{caution}` | Review sections | Before complex topics |
| `:::{important}` | Key equations/definitions | End of chapters |
| `:::{seealso}` | Further exploration | End of chapters |
| `:::{iframe}` | Embedded simulations | PhET sims |
| `{figure}` | Labeled figures | All diagrams |
| `{image}` | Simple images | Inline images |
| `{table}` | Data tables | Tables throughout |
| `{math}` | Equations | All math blocks |

### Cross-Reference Patterns

| Type | Label Format | Reference Format |
|------|--------------|------------------|
| Chapter | `(chapter:name)=` | `[Chapter %s](#chapter:name)` |
| Section | `(sec:chapter:section)=` | `[Section %s](#sec:chapter:section)` |
| Figure | `:label: fig:chapter:desc` | `[](#fig:chapter:desc)` |
| Example | `(ex:chapter:desc)=` | `[Example X.Y](#ex:chapter:desc)` |
| Table | `:label: table:chapter:desc` | `[](#table:chapter:desc)` |
| Equation | `:label: eqn:chapter:desc` | `[](#eqn:chapter:desc)` |

### Common Notation Errors

| ❌ Incorrect | ✅ Correct | Reason |
|-------------|-----------|--------|
| `$m$` (for meters) | `${\rm m}$` | Units must be roman |
| `F` (meaning force vector) | `\vec F` | Vectors need arrows |
| `\vec{F_x}` | `F_x` | Components are scalars |
| `Section 3.2` | `[Section %s](#sec:vectors:unitvectors)` | Use cross-refs with %s |
| `::: {note}` | `:::{note}` | No space before `{` |
| `cos(θ)` | `\cos\theta` | Function names roman |
| `F_{g}` (italic g) | `\vec F_g` | Descriptive subscripts roman |

---

## Summary

When contributing to this book:

1. **Start with proper YAML frontmatter**
2. **Add chapter label** immediately after frontmatter
3. **Use admonitions** for learning objectives, examples, checkpoints
4. **Label everything** that might be cross-referenced
5. **Cross-reference** using `%s` for auto-numbering
6. **Format math** with proper vector arrows, roman units, and italic variables
7. **Include alt text** on all figures
8. **Follow naming conventions** for labels
9. **Use dropdown answers** for questions
10. **Box important equations** with `\boxed{}`

For more details, see the [MyST Markdown Guide](https://mystmd.org/guide) and examine existing chapters for examples!
