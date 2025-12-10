# Label Prefix Consistency Checker

This Node.js script checks for inconsistent label prefix conventions in markdown files and can automatically fix them.

## Purpose

In markdown-based documentation (especially for academic textbooks), labels are used to reference chapters, sections, figures, equations, etc. This script ensures that label prefixes are used consistently throughout the document.

For example, it checks for inconsistencies like:
- `chap:introduction` vs `chapter:introduction`
- `sec:basics` vs `section:basics`
- `fig:diagram` vs `figure:diagram`

## Usage

### Basic Check (Read-only)

```bash
node check-label-consistency.js
```

This will scan all markdown files in the `chapters/` directory and report any inconsistencies.

### See What Would Change (Dry Run)

```bash
node check-label-consistency.js --dry-run
```

This shows what would be changed without actually modifying files.

### Fix Inconsistencies Automatically

```bash
node check-label-consistency.js --fix
```

This automatically converts all labels to use the more prevalent convention.

### Verbose Output

```bash
node check-label-consistency.js --verbose
```

Shows detailed information about each file being scanned and the specific types of issues found.

### Combining Options

```bash
node check-label-consistency.js --fix --verbose
node check-label-consistency.js --dry-run --verbose
```

## Label Patterns Checked

The script checks for the following label prefix patterns:

| Short Form | Full Form   |
|------------|-------------|
| `chap:`    | `chapter:`  |
| `sec:`     | `section:`  |
| `fig:`     | `figure:`   |
| `eq:`      | `equation:` |
| `tab:`     | `table:`    |
| `app:`     | `appendix:` |

## Types of Labels Checked

The script checks three types of label usage:

1. **Label Definitions**: `(chap:introduction)=`
2. **References**: `[See Chapter 1](#chap:introduction)`
3. **Iframe/Image Labels**: `:label: chap:introduction`

## How It Works

1. **Scanning**: Recursively finds all `.md` files in the `chapters/` directory
2. **Analysis**: For each file, counts occurrences of both short and full forms
3. **Detection**: Identifies files that use both forms inconsistently
4. **Suggestion**: Recommends standardizing to the more prevalent form
5. **Fixing** (optional): Automatically converts all instances to the recommended form

## Example Output

```
============================================================
Label Prefix Consistency Check Results
============================================================
Files scanned: 29
Files with issues: 0
Total inconsistencies: 0

✅ No label prefix inconsistencies found!
```

Or when issues are found:

```
============================================================
Label Prefix Consistency Check Results
============================================================
Files scanned: 29
Files with issues: 3
Total inconsistencies: 3

------------------------------------------------------------
Issues found:
------------------------------------------------------------

📄 chapters/00preface.md
  ⚠️  Inconsistent use of "chap" and "chapter":
     - "chap:" appears 8 times
     - "chapter:" appears 15 times
     → Suggestion: standardize to "chapter:"
```

## Exit Codes

- `0`: No inconsistencies found
- `1`: Inconsistencies found (but may have been fixed with `--fix`)

## Requirements

- Node.js (version 12 or higher recommended)
- No additional npm packages required (uses only built-in Node.js modules)

## Integration with CI/CD

You can add this to your CI pipeline to ensure label consistency:

```bash
# In your CI script
node check-label-consistency.js
```

The script will exit with code 1 if inconsistencies are found, causing the CI build to fail.

## Notes

- The script modifies files in-place when using `--fix`. Make sure you have committed your work or have backups.
- The script uses the more prevalent convention in each file as the standard.
- Files with no labels or only one type of label prefix are not flagged as issues.
