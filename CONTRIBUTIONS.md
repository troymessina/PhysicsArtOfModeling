# Contributing to Modeling with Physics

Thank you for your interest in contributing to our physics textbook! This guide will help you understand our contribution process and standards.

## Quick Links

- **[Formatting Guide](FORMATTING_GUIDE.md)** - Complete MyST Markdown and math conventions with examples
- **[VS Code Snippets](.vscode/README.md)** - Code snippets to enforce conventions automatically

---

## Table of Contents

- [How to Contribute](#how-to-contribute)
- [Development Environment Setup](#development-environment-setup)
- [Contribution Process](#contribution-process)
- [Content Guidelines](#content-guidelines)
- [Testing Your Contributions](#testing-your-contributions)
- [Code of Conduct](#code-of-conduct)

---

## How to Contribute

There are several ways you can contribute to this project:

1. **Report errors or suggest improvements**: Create an issue to report factual errors, unclear explanations, or suggest improvements.
2. **Add new content**: Propose new sections, examples, or problems.
3. **Improve existing content**: Enhance explanations, add clarifying figures, or update outdated information.
4. **Fix technical issues**: Address formatting problems or mystmd configuration issues.

---

## Development Environment Setup

### Prerequisites

You'll need:
- **Node.js** (v18 or higher)
- **npm** (comes with Node.js)
- **Git**
- **A text editor** (VS Code recommended for snippet support)

### Installation Steps

1. **Install mystmd**:
   ```bash
   npm install -g mystmd
   ```

2. **Clone the repository**:
   ```bash
   git clone https://github.com/troymessina/PhysicsArtOfModeling.git
   cd PhysicsArtOfModeling
   ```

3. **Install dependencies** (if any):
   ```bash
   npm install
   ```

4. **Build the project locally**:
   ```bash
   myst build --html
   ```

5. **Preview the site** (opens at http://localhost:3000):
   ```bash
   myst start
   ```

### What to Expect

- **First build**: Takes 2-5 minutes as it processes all chapters and figures
- **Incremental builds**: Much faster, only rebuilding changed files
- **Live reload**: The preview automatically updates when you save changes
- **Error messages**: MyST will show warnings for broken cross-references, missing figures, etc.

### VS Code Setup (Recommended)

If you use VS Code:

1. Open the repository in VS Code
2. Snippets in `.vscode/myst-markdown.code-snippets` are automatically loaded
3. See [.vscode/README.md](.vscode/README.md) for how to use snippets
4. Install recommended extensions:
   - MyST Markdown extension (if available)
   - Markdown All in One
   - Code Spell Checker

**Benefits of using VS Code snippets**:
- Type `chapter-front` to create complete chapter frontmatter
- Type `fig` to insert a figure with proper metadata
- Type `unit` to insert roman units (automatically enforces convention)
- Type `vec` for vectors, `newton2` for Newton's 2nd Law, etc.
- See [.vscode/README.md](.vscode/README.md) for full list

---

## Contribution Process

### For Minor Changes (Typos, Small Clarifications)

1. **Fork the repository**
2. **Create a new branch**: `git checkout -b fix/description-of-fix`
3. **Make your changes** (see [FORMATTING_GUIDE.md](FORMATTING_GUIDE.md) for conventions)
4. **Test locally**:
   ```bash
   myst build --html
   myst start
   ```
5. **Commit** with a clear message
6. **Push** to your fork
7. **Submit a pull request** with a description of the changes
8. **Reference any related issues** (#issue-number)

### For Major Contributions (New Sections, Significant Revisions)

1. **Start with an issue**: Create an issue describing what you'd like to contribute and why
2. **Wait for feedback**: Get alignment from maintainers before investing significant time
3. **Fork and develop**: Once approved, fork the repository and develop your contribution
4. **Follow the conventions**: See [FORMATTING_GUIDE.md](FORMATTING_GUIDE.md) for detailed examples
5. **Use snippets**: If using VS Code, leverage snippets to enforce conventions
6. **Test thoroughly**: Build locally and check cross-references, equations, and figures
7. **Submit a pull request**: Include comprehensive documentation of your changes

---

## Content Guidelines

### Scientific Accuracy

- All content must be scientifically accurate and up-to-date
- Claims should be supported by references to peer-reviewed literature where appropriate
- Use established conventions for physics notation and terminology
- When describing experimental methods, include relevant safety considerations

### Writing Style

- Write in clear, concise academic English
- Target audience: undergraduate physics students (1st year, taking Calculus I concurrently)
- Use consistent terminology throughout the book
- Define specialized terms when first introduced
- Follow SI units and standard physics notation
- Use bold (`**term**`) when first introducing key physics concepts
- Example: "The **scientific method** relies on the creation and testing of models..."

### Technical Formatting

All technical formatting conventions are documented in **[FORMATTING_GUIDE.md](FORMATTING_GUIDE.md)**, including:

- Chapter structure and frontmatter
- Labels and cross-references
- Admonitions (hint, note, tip, attention, caution, important, seealso)
- Figures, images, and tables
- Mathematical typesetting
- Vector notation, units, and subscripts
- Common mistakes to avoid

**Key principles** (see guide for details):
- ✅ Always use cross-references with auto-numbering (`%s` or empty brackets)
- ✅ Units must be roman: `{\rm m}`, `{\rm kg}`, `{\rm N}` (never italic!)
- ✅ Vectors use arrow notation: `\vec F`, `\vec v`, `\vec a`
- ✅ Unit vectors use hat notation: `\hat x`, `\hat y`, `\hat z`
- ✅ Include `:alt:` text on all figures for accessibility
- ✅ Use descriptive roman subscripts: `\vec F_g`, `f_k`, `\mu_s`
- ✅ Use italic coordinate subscripts: `F_x`, `v_y`, `a_z`

---

## Testing Your Contributions

Before submitting a pull request:

### 1. Build Locally
```bash
myst build --html
```
Check the output for errors or warnings. Fix any issues before proceeding.

### 2. Preview in Browser
```bash
myst start
```
Navigate to http://localhost:3000 and review your changes.

### 3. Verification Checklist

- [ ] **Cross-references work**: Click on all `[Section %s](#...)` and `[](#fig:...)` links
- [ ] **Equations render correctly**: Check all math blocks for proper LaTeX
- [ ] **Figures load**: Confirm all images appear with proper captions
- [ ] **Alt text present**: All figures have descriptive `:alt:` text
- [ ] **Formatting correct**: Review admonitions, tables, and lists
- [ ] **No broken links**: Internal and external links work
- [ ] **Units are roman**: Search for unit names - they should use `{\rm }`
- [ ] **Vectors have arrows**: Check that vectors use `\vec` notation
- [ ] **No hard-coded numbers**: "Section 3.2" should be `[Section %s](#sec:...)`

### 4. Common Issues

| Issue | Check |
|-------|-------|
| Figure not showing | Verify path is relative to chapter file |
| Cross-ref broken | Ensure label exists and matches reference |
| Math not rendering | Check for unescaped special characters |
| Units italic | Should use `{\rm m}` not `m` |
| Missing number | Did you use `%s` for sections or `[]` for figures? |

---

## Quick Reference

### Most Common Snippets (VS Code)

Type these prefixes and press Tab:

- `chapter-front` - New chapter with frontmatter
- `fig` - Insert figure with metadata
- `checkpoint` - Checkpoint with dropdown answer
- `example` - Example with solution
- `xref-fig` - Cross-reference a figure
- `vec` - Vector notation
- `unit` - Roman units (common units dropdown)
- `newton2` - Newton's Second Law
- `work` - Work equation

See [.vscode/README.md](.vscode/README.md) for complete list.

### Example Workflow

1. **Start new section**:
   ```
   Type: sec-label → Tab → fill in: chapter, section, title
   ```

2. **Add a figure**:
   ```
   Type: fig → Tab → fill in: path, label, width, description
   ```

3. **Reference the figure**:
   ```
   Type: xref-fig → Tab → fill in: chapter, name
   Result: [](#fig:chapter:name)
   ```

4. **Add equation with units**:
   ```
   Type: math → Tab
   Type equation: F = 10 unit → Tab → select "N"
   Result: F = 10 {\rm N}
   ```

---

## Chapter Organization

When creating new chapters or sections, follow this structure (see [FORMATTING_GUIDE.md](FORMATTING_GUIDE.md) for complete template):

1. **Frontmatter** (YAML)
2. **Chapter label**
3. **Overview heading**
4. **Learning Objectives** (hint admonition)
5. **Think About It** (note with dropdown answer)
6. **Main content sections** (with labels)
7. **Examples** (note with dropdown solutions)
8. **Checkpoints** (tip with dropdown answers)
9. **Summary**
10. **Important Equations** (important admonition)
11. **Reflect and research** (seealso admonition)
12. **Problems and solutions**

---

## Getting Help

If you have questions:

1. Check the **[Formatting Guide](FORMATTING_GUIDE.md)** for conventions and examples
2. Check **[.vscode/README.md](.vscode/README.md)** for snippet usage
3. Look at **existing chapters** for examples
4. Check the [MyST Markdown documentation](https://mystmd.org/guide)
5. **Create an issue** with the `question` label
6. **Reach out to maintainers**

---

## Licensing

By contributing to this project, you agree that your contributions will be licensed under the same license as the main project (**CC-BY-SA-4.0**). All contributors will be acknowledged in the Contributors section.

---

## Code of Conduct

All contributors are expected to adhere to our Code of Conduct:

- **Be respectful and inclusive**
- **Focus on constructive feedback**
- **Maintain scientific integrity**
- **Respect intellectual property**
- **Welcome newcomers** and help them learn
- **Assume good intentions**
- **Prioritize education** and student understanding

Violations of the code of conduct may result in removal from the project.

---

## Resources

- **[FORMATTING_GUIDE.md](FORMATTING_GUIDE.md)** - Complete guide with examples from the book
- **[.vscode/README.md](.vscode/README.md)** - VS Code snippets documentation
- **[MyST Markdown Guide](https://mystmd.org/guide)** - Official MyST documentation
- **[LaTeX Math Reference](https://katex.org/docs/supported.html)** - Supported math symbols

---

Thank you for contributing to making physics education more accessible and engaging!
