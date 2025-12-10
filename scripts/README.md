# Scripts Directory

This directory contains utility scripts for maintaining and improving the PhysicsArtOfModeling textbook. These scripts help automate common tasks, ensure consistency, and maintain quality throughout the documentation.

## Available Scripts

### 1. Label Prefix Consistency Checker (`check-label-consistency.js`)

Checks for and fixes inconsistent label prefix conventions in markdown files.

**Purpose**: Ensures that label prefixes (like `chapter:`, `section:`, `figure:`, etc.) are used consistently throughout the textbook.

**Usage**:
```bash
# From the project root directory
node scripts/check-label-consistency.js [options]

# Or from the scripts directory
cd scripts
node check-label-consistency.js [options]
```

**Options**:
- `--fix` - Automatically fix inconsistencies
- `--dry-run` - Show what would be changed without making changes
- `--verbose` - Show detailed output
- `--help`, `-h` - Show help message

**Examples**:
```bash
# Check for inconsistencies (read-only)
node scripts/check-label-consistency.js

# Preview changes without modifying files
node scripts/check-label-consistency.js --dry-run

# Automatically fix all inconsistencies
node scripts/check-label-consistency.js --fix

# Fix with detailed output
node scripts/check-label-consistency.js --fix --verbose
```

**What It Checks**:

The script checks for inconsistent use of abbreviated vs. full label prefixes:

| Short Form | Full Form   |
|------------|-------------|
| `chap:`    | `chapter:`  |
| `sec:`     | `section:`  |
| `fig:`     | `figure:`   |
| `eq:`      | `equation:` |
| `tab:`     | `table:`    |
| `app:`     | `appendix:` |

**Types of Labels**:
1. **Label Definitions**: `(chap:introduction)=`
2. **References**: `[See Chapter 1](#chap:introduction)`
3. **Iframe/Image Labels**: `:label: chap:introduction`

**Exit Codes**:
- `0` - No inconsistencies found
- `1` - Inconsistencies found (useful for CI/CD pipelines)

**Example Output**:

When no issues are found:
```
============================================================
Label Prefix Consistency Check Results
============================================================
Files scanned: 29
Files with issues: 0
Total inconsistencies: 0

✅ No label prefix inconsistencies found!
```

When issues are found:
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

---

## General Guidelines for Scripts

### Requirements

All scripts in this directory should:
- Work from both the project root and the scripts directory
- Use only built-in Node.js modules when possible (to minimize dependencies)
- Include comprehensive help text (`--help` flag)
- Return appropriate exit codes for CI/CD integration
- Include a `--dry-run` mode when modifying files
- Be well-documented in this README

### Adding New Scripts

When adding a new script to this directory:

1. **Create the script** with a descriptive name (use kebab-case)
2. **Make it executable**: `chmod +x scripts/your-script.js`
3. **Add a shebang line**: `#!/usr/bin/env node`
4. **Document it** by adding a new section to this README
5. **Include help text** in the script itself
6. **Test thoroughly** before committing

### Documentation Template

When documenting a new script, use this template:

```markdown
### X. Script Name (`script-name.js`)

Brief one-line description.

**Purpose**: Detailed explanation of what the script does and why it's useful.

**Usage**:
```bash
node scripts/script-name.js [options]
```

**Options**:
- `--option1` - Description
- `--option2` - Description

**Examples**:
```bash
# Example 1
node scripts/script-name.js --option1

# Example 2
node scripts/script-name.js --option2
```

**Exit Codes**:
- `0` - Success
- `1` - Error condition

---
```

## Running Scripts in CI/CD

These scripts are designed to integrate with CI/CD pipelines. Example GitHub Actions workflow:

```yaml
name: Quality Checks

on: [push, pull_request]

jobs:
  check-labels:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v2
        with:
          node-version: '18'
      - name: Check label consistency
        run: node scripts/check-label-consistency.js
```

## Development

### Testing Scripts Locally

Before committing changes to any script:

1. Test with no options (default behavior)
2. Test with `--help` flag
3. Test with `--dry-run` (if applicable)
4. Test with actual execution
5. Verify exit codes
6. Check that help text is clear and accurate

### Best Practices

- **Idempotency**: Scripts should produce the same result when run multiple times
- **Safety**: Always implement `--dry-run` for destructive operations
- **Clarity**: Provide clear, actionable error messages
- **Validation**: Validate inputs and fail fast with helpful messages
- **Logging**: Use verbose mode for debugging, concise output by default

## Contributing

When contributing new scripts or improvements:

1. Follow the existing code style
2. Add comprehensive documentation to this README
3. Include help text in the script
4. Test thoroughly on various scenarios
5. Consider edge cases and error handling

## Support

For issues or questions about these scripts:
1. Check the script's `--help` output
2. Review this README
3. Check the script's source code (scripts are well-commented)
4. Open an issue in the repository

## License

These scripts are part of the PhysicsArtOfModeling project and are licensed under the same terms as the main project.
