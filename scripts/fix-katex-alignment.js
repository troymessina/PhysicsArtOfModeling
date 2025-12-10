#!/usr/bin/env node

/**
 * Fix KaTeX parse errors caused by alignment characters (&) in math blocks
 *
 * This script processes MyST markdown files and fixes math blocks that contain
 * alignment characters by wrapping them in \begin{align*}...\end{align*} and
 * adding the :nowrap: option to the math directive.
 */

const fs = require('fs');
const path = require('path');

function fixMathBlocks(content) {
  // Regular expression to match ```{math} blocks
  // This captures the entire block including opening/closing backticks
  const mathBlockRegex = /```\{math\}((?:\s*:[^\n]*\n)?)([\s\S]*?)```/g;

  let modified = false;
  const result = content.replace(mathBlockRegex, (match, options, mathContent) => {
    // Check if the math content contains alignment character &
    if (!mathContent.includes('&')) {
      return match; // No alignment character, keep as is
    }

    // Check if already has :nowrap: option
    if (options.includes(':nowrap:')) {
      return match; // Already has :nowrap:, keep as is
    }

    // Check if content already has \begin{align*} or other environment
    if (mathContent.trim().startsWith('\\begin{')) {
      // Has environment but missing :nowrap:, add it
      modified = true;
      return '```{math}\n:nowrap:\n' + mathContent + '```';
    }

    // Need to wrap content in align* environment and add :nowrap:
    modified = true;
    const trimmedContent = mathContent.trim();
    return '```{math}\n:nowrap:\n\n\\begin{align*}\n' + trimmedContent + '\n\\end{align*}\n```';
  });

  return { result, modified };
}

function processFile(filePath) {
  console.log(`Processing: ${filePath}`);

  const content = fs.readFileSync(filePath, 'utf8');
  const { result, modified } = fixMathBlocks(content);

  if (modified) {
    fs.writeFileSync(filePath, result, 'utf8');
    console.log(`  ✓ Fixed math blocks in ${filePath}`);
    return true;
  } else {
    console.log(`  - No changes needed in ${filePath}`);
    return false;
  }
}

function processDirectory(dirPath) {
  console.log(`\nScanning directory: ${dirPath}\n`);

  const files = fs.readdirSync(dirPath);
  let totalFixed = 0;

  for (const file of files) {
    const filePath = path.join(dirPath, file);
    const stat = fs.statSync(filePath);

    if (stat.isFile() && file.endsWith('.md')) {
      if (processFile(filePath)) {
        totalFixed++;
      }
    }
  }

  console.log(`\n${'='.repeat(60)}`);
  console.log(`Summary: Fixed ${totalFixed} file(s)`);
  console.log('='.repeat(60));
}

// Main execution
const args = process.argv.slice(2);

if (args.length === 0) {
  console.error('Usage: node fix-katex-alignment.js <directory or file>');
  process.exit(1);
}

const target = args[0];
const stat = fs.statSync(target);

if (stat.isDirectory()) {
  processDirectory(target);
} else if (stat.isFile()) {
  processFile(target);
} else {
  console.error('Invalid target. Please provide a file or directory path.');
  process.exit(1);
}
