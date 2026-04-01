# Contributing to Modeling with Physics

Thank you for your interest in contributing to our physics textbook!

## Quick Links

- **[FORMATTING_GUIDE.md](FORMATTING_GUIDE.md)** - MyST Markdown and math conventions with examples from the book
- **[.vscode/README.md](.vscode/README.md)** - VS Code snippets to enforce conventions automatically

---

## How to Contribute

1. **Report errors**: Create an issue for factual errors or unclear explanations
2. **Add content**: Propose new sections, examples, or problems
3. **Improve content**: Enhance explanations or add figures
4. **Fix formatting**: Address MyST Markdown issues

---

## Setup

### Prerequisites

- Node.js (v18+)
- npm
- Git
- Text editor (VS Code recommended)

### Installation

```bash
# Install MyST
npm install -g mystmd

# Clone repository
git clone https://github.com/troymessina/PhysicsArtOfModeling.git
cd PhysicsArtOfModeling

# Build and preview
myst build --html
myst start  # Opens at http://localhost:3000
```

**First build**: 2-5 minutes. **Incremental builds**: Much faster. **Live reload**: Auto-updates on save.

### VS Code Setup (Recommended)

1. Open repository in VS Code
2. Snippets in `.vscode/myst-markdown.code-snippets` load automatically
3. Install extensions: Markdown All in One, Code Spell Checker

**Snippet examples**:
- `chapter-front` → Complete chapter structure
- `fig` → Figure with all metadata
- `unit` → Roman units (enforces `{\rm m}` not `m`)
- `vec` → Vector with arrow (`\vec F`)

See [.vscode/README.md](.vscode/README.md) for full list.

---

## Contribution Workflow

### Minor Changes (typos, clarifications)

1. Fork the repository
2. Create branch: `git checkout -b fix/description`
3. Make changes (see [FORMATTING_GUIDE.md](FORMATTING_GUIDE.md) for conventions)
4. Test: `myst build --html && myst start`
5. Commit with clear message
6. Submit pull request

### Major Contributions (new sections, chapters)

1. **Create issue first** - describe what you want to contribute
2. **Wait for approval** from maintainers
3. Fork and develop following [FORMATTING_GUIDE.md](FORMATTING_GUIDE.md)
4. Test thoroughly
5. Submit pull request with detailed description

---

## Key Conventions

Full details in **[FORMATTING_GUIDE.md](FORMATTING_GUIDE.md)**. Key points:

✅ **Cross-references**: Use `[Section %s](#sec:...)` or `[](#fig:...)` - never hard-code numbers
✅ **Units**: Must be roman `{\rm m}`, `{\rm kg}`, `{\rm N}` - NEVER italic
✅ **Vectors**: Use arrow notation `\vec F`, `\vec v`, `\vec a`
✅ **Alt text**: Required on all figures for accessibility
✅ **Subscripts**: Descriptive = roman (`\vec F_g`), Coordinate = italic (`F_x`)

---

## Testing Checklist

Before submitting:

```bash
myst build --html  # Check for errors
myst start         # Preview at localhost:3000
```

- [ ] Cross-references work (click all links)
- [ ] Equations render correctly
- [ ] Figures load with alt text
- [ ] Units are roman (`{\rm }`)
- [ ] Vectors have arrows (`\vec`)
- [ ] No hard-coded section/figure numbers

---

## Content Guidelines

### Scientific Accuracy
- Scientifically accurate and current
- Support claims with references when appropriate
- Include safety considerations for experiments

### Writing Style
- Clear, concise academic English
- Target: 1st year undergrads taking Calculus I
- Define terms when first introduced
- Use bold for key concepts: "The **scientific method** relies on..."

### Formatting
See **[FORMATTING_GUIDE.md](FORMATTING_GUIDE.md)** for complete technical details on:
- Chapter structure and frontmatter
- Labels and cross-references
- Admonitions (7 types)
- Figures, tables, embedded content
- Math notation and conventions

---

## Getting Help

1. Check **[FORMATTING_GUIDE.md](FORMATTING_GUIDE.md)** for conventions
2. Check **[.vscode/README.md](.vscode/README.md)** for snippets
3. Look at existing chapters for examples
4. Review [MyST documentation](https://mystmd.org/guide)
5. Create issue with `question` label

---

## Code of Conduct

- Be respectful and inclusive
- Focus on constructive feedback
- Maintain scientific integrity
- Welcome newcomers
- Assume good intentions

---

## License

Contributions licensed under **CC-BY-SA-4.0**. Contributors acknowledged in the book.

---

**Thank you for helping make physics education more accessible!**
