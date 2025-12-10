#!/usr/bin/env node

/**
 * Label Prefix Consistency Checker and Converter
 *
 * This script checks for inconsistent label prefix conventions in markdown files
 * and optionally converts them to a consistent format.
 *
 * Usage:
 *   node check-label-consistency.js [--fix] [--dry-run] [--verbose]
 *
 * Options:
 *   --fix       Automatically fix inconsistencies
 *   --dry-run   Show what would be changed without making changes
 *   --verbose   Show detailed output
 */

const fs = require('fs');
const path = require('path');

// Label prefix patterns to check
const LABEL_PATTERNS = [
  { short: 'chap', full: 'chapter' },
  { short: 'sec', full: 'section' },
  { short: 'fig', full: 'figure' },
  { short: 'eq', full: 'equation' },
  { short: 'tab', full: 'table' },
  { short: 'app', full: 'appendix' }
];

// Parse command line arguments
const args = process.argv.slice(2);
const shouldFix = args.includes('--fix');
const dryRun = args.includes('--dry-run');
const verbose = args.includes('--verbose');

if (args.includes('--help') || args.includes('-h')) {
  console.log(`
Label Prefix Consistency Checker and Converter

Usage:
  node check-label-consistency.js [options]

Options:
  --fix       Automatically fix inconsistencies
  --dry-run   Show what would be changed without making changes
  --verbose   Show detailed output
  --help, -h  Show this help message

Examples:
  node check-label-consistency.js              # Check only
  node check-label-consistency.js --dry-run    # Show what would change
  node check-label-consistency.js --fix        # Fix inconsistencies
`);
  process.exit(0);
}

class LabelChecker {
  constructor() {
    this.results = {
      filesScanned: 0,
      totalIssues: 0,
      issuesByType: {},
      fileIssues: []
    };
  }

  /**
   * Recursively find all markdown files in a directory
   */
  findMarkdownFiles(dir, fileList = []) {
    const files = fs.readdirSync(dir);

    files.forEach(file => {
      const filePath = path.join(dir, file);
      const stat = fs.statSync(filePath);

      if (stat.isDirectory()) {
        // Skip node_modules, .git, etc.
        if (!file.startsWith('.') && file !== 'node_modules') {
          this.findMarkdownFiles(filePath, fileList);
        }
      } else if (file.endsWith('.md')) {
        fileList.push(filePath);
      }
    });

    return fileList;
  }

  /**
   * Count occurrences of label patterns in text
   */
  countLabelPatterns(content, pattern) {
    const counts = {
      labelDefinitions: { short: 0, full: 0 },
      references: { short: 0, full: 0 },
      iframeLabels: { short: 0, full: 0 }
    };

    // Pattern: (chap:xxx)= or (chapter:xxx)=
    const labelDefRegex = new RegExp(`\\((${pattern.short}|${pattern.full}):`, 'g');
    const labelMatches = content.match(labelDefRegex) || [];
    labelMatches.forEach(match => {
      if (match.includes(pattern.short + ':')) counts.labelDefinitions.short++;
      if (match.includes(pattern.full + ':')) counts.labelDefinitions.full++;
    });

    // Pattern: #chap:xxx or #chapter:xxx (in references)
    const refRegex = new RegExp(`#(${pattern.short}|${pattern.full}):`, 'g');
    const refMatches = content.match(refRegex) || [];
    refMatches.forEach(match => {
      if (match.includes(pattern.short + ':')) counts.references.short++;
      if (match.includes(pattern.full + ':')) counts.references.full++;
    });

    // Pattern: :label: chap:xxx or :label: chapter:xxx (in iframe/image labels)
    const iframeLabelRegex = new RegExp(`:label:\\s*(${pattern.short}|${pattern.full}):`, 'g');
    const iframeLabelMatches = content.match(iframeLabelRegex) || [];
    iframeLabelMatches.forEach(match => {
      if (match.includes(pattern.short + ':')) counts.iframeLabels.short++;
      if (match.includes(pattern.full + ':')) counts.iframeLabels.full++;
    });

    return counts;
  }

  /**
   * Check a single file for label inconsistencies
   */
  checkFile(filePath) {
    const content = fs.readFileSync(filePath, 'utf8');
    const fileIssues = [];

    LABEL_PATTERNS.forEach(pattern => {
      const counts = this.countLabelPatterns(content, pattern);

      const totalShort = counts.labelDefinitions.short +
                         counts.references.short +
                         counts.iframeLabels.short;
      const totalFull = counts.labelDefinitions.full +
                        counts.references.full +
                        counts.iframeLabels.full;

      // Check for inconsistency
      if (totalShort > 0 && totalFull > 0) {
        fileIssues.push({
          pattern,
          counts,
          totalShort,
          totalFull,
          suggestion: totalFull >= totalShort ? pattern.full : pattern.short
        });
      }
    });

    if (fileIssues.length > 0) {
      this.results.fileIssues.push({
        file: filePath,
        issues: fileIssues
      });
      this.results.totalIssues += fileIssues.length;
    }

    this.results.filesScanned++;
  }

  /**
   * Convert label prefixes in content
   */
  convertLabels(content, from, to) {
    let newContent = content;

    // Convert label definitions: (chap:xxx)= to (chapter:xxx)=
    newContent = newContent.replace(
      new RegExp(`\\(${from}:`, 'g'),
      `(${to}:`
    );

    // Convert references: #chap:xxx to #chapter:xxx
    newContent = newContent.replace(
      new RegExp(`#${from}:`, 'g'),
      `#${to}:`
    );

    // Convert iframe/image labels: :label: chap:xxx to :label: chapter:xxx
    newContent = newContent.replace(
      new RegExp(`:label:\\s*${from}:`, 'g'),
      `:label: ${to}:`
    );

    return newContent;
  }

  /**
   * Fix inconsistencies in a file
   */
  fixFile(filePath, issue) {
    let content = fs.readFileSync(filePath, 'utf8');
    const targetPrefix = issue.suggestion;
    const sourcePrefix = targetPrefix === issue.pattern.full ?
                         issue.pattern.short : issue.pattern.full;

    const newContent = this.convertLabels(content, sourcePrefix, targetPrefix);

    if (dryRun) {
      console.log(`  [DRY RUN] Would convert ${sourcePrefix} → ${targetPrefix}`);
      return false;
    }

    if (content !== newContent) {
      fs.writeFileSync(filePath, newContent, 'utf8');
      return true;
    }

    return false;
  }

  /**
   * Print results
   */
  printResults() {
    console.log('\n' + '='.repeat(60));
    console.log('Label Prefix Consistency Check Results');
    console.log('='.repeat(60));
    console.log(`Files scanned: ${this.results.filesScanned}`);
    console.log(`Files with issues: ${this.results.fileIssues.length}`);
    console.log(`Total inconsistencies: ${this.results.totalIssues}`);

    if (this.results.fileIssues.length === 0) {
      console.log('\n✅ No label prefix inconsistencies found!');
      return;
    }

    console.log('\n' + '-'.repeat(60));
    console.log('Issues found:');
    console.log('-'.repeat(60));

    this.results.fileIssues.forEach(fileIssue => {
      const relativePath = path.relative(process.cwd(), fileIssue.file);
      console.log(`\n📄 ${relativePath}`);

      fileIssue.issues.forEach(issue => {
        console.log(`  ⚠️  Inconsistent use of "${issue.pattern.short}" and "${issue.pattern.full}":`);
        console.log(`     - "${issue.pattern.short}:" appears ${issue.totalShort} times`);
        console.log(`     - "${issue.pattern.full}:" appears ${issue.totalFull} times`);
        console.log(`     → Suggestion: standardize to "${issue.suggestion}:"`);

        if (verbose) {
          console.log(`     Details:`);
          console.log(`       Label definitions: ${issue.counts.labelDefinitions.short} short, ${issue.counts.labelDefinitions.full} full`);
          console.log(`       References: ${issue.counts.references.short} short, ${issue.counts.references.full} full`);
          console.log(`       Iframe labels: ${issue.counts.iframeLabels.short} short, ${issue.counts.iframeLabels.full} full`);
        }
      });
    });

    if (shouldFix) {
      console.log('\n' + '-'.repeat(60));
      console.log('Fixing issues...');
      console.log('-'.repeat(60));

      let filesFixed = 0;
      this.results.fileIssues.forEach(fileIssue => {
        const relativePath = path.relative(process.cwd(), fileIssue.file);
        let fileModified = false;

        fileIssue.issues.forEach(issue => {
          const fixed = this.fixFile(fileIssue.file, issue);
          if (fixed) fileModified = true;
        });

        if (fileModified) {
          filesFixed++;
          console.log(`  ✅ Fixed: ${relativePath}`);
        }
      });

      console.log(`\n${filesFixed} file(s) ${dryRun ? 'would be' : 'were'} modified.`);
    }
  }

  /**
   * Run the checker
   */
  run(directory = '.') {
    console.log(`Scanning for markdown files in: ${directory}`);

    const files = this.findMarkdownFiles(directory);
    console.log(`Found ${files.length} markdown file(s)\n`);

    files.forEach(file => {
      if (verbose) {
        console.log(`Checking: ${path.relative(process.cwd(), file)}`);
      }
      this.checkFile(file);
    });

    this.printResults();

    return this.results.totalIssues === 0 ? 0 : 1;
  }
}

// Run the checker
const checker = new LabelChecker();

// Determine the chapters directory path based on current working directory
let chaptersDir = './chapters';
if (!fs.existsSync(chaptersDir)) {
  // We might be running from the scripts directory
  chaptersDir = '../chapters';
  if (!fs.existsSync(chaptersDir)) {
    console.error('Error: Cannot find chapters directory.');
    console.error('Please run this script from the project root or scripts directory.');
    process.exit(1);
  }
}

const exitCode = checker.run(chaptersDir);
process.exit(exitCode);
