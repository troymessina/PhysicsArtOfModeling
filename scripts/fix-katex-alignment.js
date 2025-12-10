#!/usr/bin/env node

/**
 * Fix KaTeX parse errors caused by alignment characters (&) in math blocks
 *
 * This script processes MyST markdown files and fixes math blocks that contain
 * alignment characters by wrapping them in \begin{align*}...\end{align*}.
 * It also removes any :nowrap: options that were previously added.
 */

const fs = require('fs');
const path = require('path');

function fixMathBlocks(content) {
  // Regular expression to match both ```{math} and ```math blocks
  // This captures the entire block including opening/closing backticks
  const mathBlockRegex = /```\{?math\}?([\s\S]*?)```/g;

  let modified = false;
  const result = content.replace(mathBlockRegex, (match, fullContent) => {
    // Remove any :nowrap: directive if present
    let cleanContent = fullContent.replace(/^\s*:nowrap:\s*\n/gm, '');

    // Check if the math content contains alignment character &
    if (!cleanContent.includes('&')) {
      // If we removed :nowrap:, mark as modified
      if (cleanContent !== fullContent) {
        modified = true;
        return '```{math}' + cleanContent + '```';
      }
      return match; // No alignment character and no changes, keep as is
    }

    // Check if content already has \begin{align*} or other environment
    if (cleanContent.trim().startsWith('\\begin{')) {
      // Already wrapped, ensure proper formatting with blank line after ```{math}
      const trimmed = cleanContent.trim();
      const expectedFormat = '\n\n' + trimmed + '\n';

      // Check if formatting is correct
      if (cleanContent !== expectedFormat) {
        modified = true;
        return '```{math}\n\n' + trimmed + '\n```';
      }
      return match;
    }

    // Need to wrap content in align* environment
    modified = true;
    const trimmedContent = cleanContent.trim();
    // Add a blank line after ```{math} for better formatting
    return '```{math}\n\n\\begin{align*}\n' + trimmedContent + '\n\\end{align*}\n```';
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
