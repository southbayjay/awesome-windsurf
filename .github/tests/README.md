# GitHub Actions Tests

This directory contains tests for our GitHub Actions workflows. The tests use `act` to run workflows locally and verify their behavior.

## Test Structure

- `events/` - Contains test event payloads
- `mocks/` - Mock responses for GitHub API calls
- `scripts/` - Test helper scripts
- `expected/` - Expected outputs for different scenarios

## Running Tests

```bash
# Run all workflow tests
npm run test:workflows

# Run specific workflow test
npm run test:workflow create-release-tag
```

## Test Scenarios

### create-release-tag.yml

1. Manual Release

   - Trigger: PR with commit message starting with "release:"
   - Expected: Version bump, PR comment, success status

2. Automatic Release (Files Changed)

   - Trigger: PR with >5 files changed
   - Expected: Version bump, PR comment, pending status

3. Automatic Release (Commits Count)

   - Trigger: PR with >10 commits since last release
   - Expected: Version bump, PR comment, pending status

4. No Release Needed

   - Trigger: PR with minimal changes
   - Expected: No version bump, no PR comment

5. Version Calculation
   - Test YEAR.MONTH.PATCH format
   - Test patch increment within same month
   - Test patch reset on month change
