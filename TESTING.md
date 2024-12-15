# Testing Strategy

This document outlines our testing strategy to ensure documentation quality and consistency.

## Overview

Our testing approach focuses on several key areas:

1. Documentation Structure
2. Link Validation
3. Markdown Style
4. Content Quality

## Automated Tests

### Documentation Structure

- Proper heading hierarchy
- Required sections in framework-specific guides
- Internal reference validation

### Link Validation

We use `markdown-link-check` to verify all links are valid. Configuration is in `.markdown-link-check.json`.

### Markdown Style

We use `markdownlint-cli2` to enforce consistent markdown styling.

### Content Quality

- Spell checking with custom dictionary support
- Consistent terminology usage
- Code block syntax validation

## Test Execution

Our tests run at different stages:

### Local Development

1. Install dependencies:

   ```bash
   npm install
   ```

2. Run markdown linting:

   ```bash
   npm run fix:md
   ```

3. Check links:

   ```bash
   npm run check-links
   ```

### Pre-Commit

We use Husky to enforce quality checks:

- Pre-commit: Runs `lint-staged` with markdownlint
- Commit Message: Uses `commitlint` to enforce our [commit message guidelines](CONTRIBUTING.md#commit-msg)

### Continuous Integration

GitHub Actions automatically run tests when:

- Markdown files are modified (in pushes and pull requests)
- Nightly at 02:00 UTC (link checking)

Failed checks will block PR merging until resolved.
