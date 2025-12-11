# VS Code Snippets for MyST Markdown

This directory contains VS Code snippets to help you write MyST Markdown content following the book's conventions.

## Setup

The snippets in `myst-markdown.code-snippets` are automatically loaded by VS Code when you open this repository. No additional setup required!

## How to Use Snippets

1. Open a `.md` file in the `chapters/` directory
2. Start typing a snippet prefix (listed below)
3. Press `Tab` or `Enter` to expand the snippet
4. Use `Tab` to move between placeholders
5. Fill in your content

## Available Snippets

### Chapter Structure

| Prefix | Description |
|--------|-------------|
| `chapter-front` | Complete chapter frontmatter with Learning Objectives |
| `sec-label` | Section heading with label |
| `subsec-label` | Subsection heading with label |

### Admonitions

| Prefix | Description |
|--------|-------------|
| `learn-obj` | Learning Objectives box |
| `think` | Think About It with dropdown answer |
| `checkpoint` | Checkpoint with multiple choice and answer |
| `example` | Example with solution dropdown |
| `student-thoughts` | Student perspective box (Olivia/Emma/Josh) |
| `review` | Review/prerequisite box |
| `important-eq` | Important equations summary |
| `reflect` | Reflect and research box |

### Figures and Media

| Prefix | Description |
|--------|-------------|
| `fig` | Figure with all required metadata |
| `img` | Simple image without label |
| `table` | Table with label and alignment options |
| `iframe` | Embedded simulation (PhET) |

### Math

| Prefix | Description |
|--------|-------------|
| `math` | Math block |
| `math-label` | Math block with label |
| `align` | Aligned multi-line equations |
| `boxed` | Boxed equation (important formulas) |

### Cross-References

| Prefix | Description |
|--------|-------------|
| `xref-sec` | Cross-reference to section |
| `xref-ch` | Cross-reference to chapter |
| `xref-fig` | Cross-reference to figure |
| `xref-tab` | Cross-reference to table |
| `xref-eq` | Cross-reference to equation |

### Physics Notation

| Prefix | Description |
|--------|-------------|
| `vec` | Vector with arrow |
| `uvec` | Unit vector with hat |
| `unit` | Roman units (common units dropdown) |
| `unitc` | Custom roman unit |
| `force` | Force vector with subscript |
| `vel` | Velocity vector |
| `acc` | Acceleration vector |
| `pos` | Position vector |

### Common Physics Equations

| Prefix | Description |
|--------|-------------|
| `newton2` | Newton's Second Law |
| `newton2-comp` | Newton's 2nd Law in components |
| `friction` | Friction force equation |
| `work` | Work equation |
| `work-int` | Work as line integral |
| `kinetic` | Kinetic energy |
| `spring-pe` | Spring potential energy |
| `grav-pe` | Gravitational potential energy |
| `shm` | Simple harmonic motion |
| `omega` | Angular frequency |
| `coulomb` | Coulomb's Law |
| `efield` | Electric field definition |
| `potential` | Electric potential difference |

### Math Operators

| Prefix | Description |
|--------|-------------|
| `dt` | Time derivative d/dt |
| `d2t` | Second time derivative |
| `pd` | Partial derivative |
| `int` | Definite integral |
| `sum` | Summation |
| `dot` | Dot product |
| `cross` | Cross product |
| `mag` | Vector magnitude |
| `delta` | Delta (finite change) |
| `therefore` | Therefore symbol |
| `propto` | Proportional to |
| `approx` | Approximately equal |

### Problems and Solutions

| Prefix | Description |
|--------|-------------|
| `problem` | Problem with label |
| `solution` | Solution with dropdown |

## Examples

### Creating a new chapter
1. Type `chapter-front` and press Tab
2. Fill in: chapter number, title, chapter name
3. Add your learning objectives
4. Continue writing content

### Adding a figure
1. Type `fig` and press Tab
2. Fill in: chapter folder, filename, label, description
3. Choose width from dropdown (10%, 30%, 50%, 70%, 100%)

### Writing an equation with proper units
1. Type your equation in a math block
2. For units, type `unit` and press Tab
3. Select from common units dropdown
4. For custom units, use `unitc` instead

Example:
```
The force is $F = 10$ `unit` → Tab → select "N" → $F = 10 {\rm N}$
```

### Cross-referencing
1. Type `xref-fig` (or `xref-sec`, `xref-ch`, etc.)
2. Fill in the chapter and name from the label
3. MyST will auto-number it

## Tips

- **Units**: Always use `unit` or `unitc` snippets - this ensures units are roman (upright), never italic!
- **Vectors**: Use `vec` snippet for vectors, `uvec` for unit vectors
- **Cross-refs**: Always use cross-reference snippets instead of hard-coding numbers
- **Subscripts**: Remember - descriptive subscripts (like "g" in F_g) should be roman in the actual equation
- **Tab navigation**: Use Tab to jump between placeholders in snippets

## Customization

To add your own snippets:

1. Open `.vscode/myst-markdown.code-snippets`
2. Add a new entry following the JSON format
3. Save and reload VS Code

## Common Patterns

**Force with roman subscript** (descriptive):
```
Type: vec F → Tab → type: _g (you'll need to manually ensure g is roman in the equation)
Result: \vec F_g (but write as \vec F_g in LaTeX to make g roman)
```

**Vector component** (coordinate - should be italic):
```
Type: F_x (no vec - components are scalars)
Result: F_x (x is automatically italic as a coordinate)
```

**Value with units**:
```
Type: g = 9.8 unit → Tab → select "N/kg"
Result: g = 9.8 {\rm N/kg}
```

---

For more details on conventions, see [FORMATTING_GUIDE.md](../FORMATTING_GUIDE.md).
