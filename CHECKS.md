# Quality Checks

This document outlines the automated quality checks we use to maintain consistency in the repository.

## Pre-commit Checks

The following checks run automatically when you commit changes:

### Markdown Files

- **Spell Checking**: Uses `cspell` with a custom dictionary
- **Link Checking**: Validates all links using `markdown-link-check`
- **Code Block Validation**: Ensures code blocks have language flags using `remark-lint-fenced-code-flag`
- **Markdown Linting**: Uses `markdownlint-cli2` for consistent formatting

### JavaScript Files

- **ESLint**: Enforces code style and catches potential errors
- **Prettier**: Ensures consistent code formatting

### JSON Files

- **jsonlint**: Validates JSON syntax and formatting

### YAML Files

- **yaml-lint**: Validates YAML syntax and structure
- Particularly important for GitHub Actions workflows

### Shell Scripts

- **shellcheck**: Analyzes shell scripts for common errors and pitfalls
- Applied to husky hooks and other shell scripts

## GitHub Actions

Our GitHub Actions workflows run additional checks on pull requests:

1. **Markdown Linting**: Verifies all markdown files follow our style guide
2. **Auto-labeling**: Automatically adds labels to PRs based on changed files
3. **Semantic Release**: Manages versioning and changelog generation

## Local Development

All quality checks run automatically through pre-commit hooks when you commit changes. The hooks are installed automatically when you run `npm install`.

## Common Issues and Solutions

### Git Hooks

1. **Hook Not Running**:

   - Make sure you've run `npm install`
   - Check that `.git/hooks/pre-commit` exists
   - Ensure the hook file is executable

2. **Hook Permission Issues**:

   ```bash
   chmod +x .git/hooks/pre-commit
   ```

3. **Skip Hooks Temporarily**:

   ```bash
   git commit --no-verify
   ```

   Note: Use this sparingly and only when absolutely necessary.

## Running Quality Checks Locally

Use these npm scripts to run quality checks:

```bash
# Run all quality checks
npm run lint:all

# Individual quality check suites
npm run lint:js         # Check JavaScript files
npm run lint:json       # Check JSON files
npm run lint:yaml       # Check YAML files
npm run lint:shell      # Check shell scripts
npm run fix:md         # Check and fix markdown files
npm run spell-check    # Check spelling
npm run check-links    # Validate markdown links
npm run check-codeblocks # Validate code blocks
```

## Future Improvements

Potential areas for enhancement:

1. Add unit testing for JavaScript code
2. Implement integration tests for GitHub Actions
3. Add automated security scanning
4. Implement performance benchmarking for workflows
5. Add automated accessibility checks for documentation

## Contributing

When adding new features or making changes:

1. Add appropriate quality checks for new functionality
2. Update this document if quality check procedures change
3. Ensure all quality checks pass locally before pushing
4. Consider adding new test cases for edge scenarios
