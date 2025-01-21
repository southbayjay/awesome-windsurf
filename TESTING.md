# Testing Strategy

This document outlines our comprehensive testing strategy for maintaining code quality in the repository.

## Automated Testing

We use various automated tools to ensure code quality across different file types:

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

## GitHub Actions Testing

We support local testing of GitHub Actions workflows using [`act`](https://github.com/nektos/act). This allows you to test workflow changes before pushing them to GitHub, ensuring they work as expected.

### Prerequisites

1. Install Node.js dependencies:

   ```bash
   npm install
   ```

2. Install GitHub CLI:

   - macOS: `brew install gh`
   - Other: See [GitHub CLI installation](https://github.com/cli/cli#installation)

3. Authenticate with GitHub:

   ```bash
   gh auth login
   ```

### Running Tests

To test a specific workflow:

```bash
WORKFLOW=workflow-name EVENT=event-name npm run test:workflow
```

For example, to test the markdown linting workflow:

```bash
WORKFLOW=markdownlint EVENT=markdownlint npm run test:workflow
```

### Available Workflows

Our repository uses these main workflows:

- `markdownlint`: Checks markdown files for style and formatting
- `auto-label`: Automatically labels PRs based on changed files
- `create-release-tag`: Creates release tags for versioning
- `publish-release`: Publishes releases with changelogs

### Test Events

Test events are stored in `.github/tests/events/` and simulate GitHub webhook payloads. Each workflow has a corresponding event file that triggers it with appropriate test data.

### Debugging

If a workflow test fails:

1. Check the error message and logs
2. Verify your GitHub token is valid: `gh auth status`
3. Ensure you're in the correct directory
4. Check that the workflow and event files exist
5. Set `RUNNER_DEBUG=1` for verbose output:

   ```bash
   RUNNER_DEBUG=1 WORKFLOW=markdownlint EVENT=markdownlint npm run test:workflow
   ```

### Best Practices

1. Always test workflow changes locally before pushing
2. Keep test events up to date with workflow changes
3. Use meaningful test data in event files
4. Document any special requirements in workflow-specific sections below

### Example Scenarios

1. **Testing Markdown Linting**:

   ```bash
   # Test basic linting
   WORKFLOW=markdownlint EVENT=markdownlint npm run test:workflow

   # Test with specific files
   WORKFLOW=markdownlint EVENT=markdownlint INPUTS="files=README.md" npm run test:workflow
   ```

2. **Testing Auto-Label**:

   ```bash
   # Test PR with documentation changes
   WORKFLOW=auto-label EVENT=pr-docs npm run test:workflow

   # Test PR with multiple file types
   WORKFLOW=auto-label EVENT=pr-mixed npm run test:workflow
   ```

3. **Testing Release Creation**:

   ```bash
   # Test manual release trigger
   WORKFLOW=create-release-tag EVENT=manual-release npm run test:workflow

   # Test with version input
   WORKFLOW=create-release-tag EVENT=manual-release INPUTS="version=2024.12.1" npm run test:workflow
   ```

### Advanced Debugging

1. **Docker Issues**:

   - Error: "Cannot connect to the Docker daemon"

     ```bash
     # Check Docker status
     docker info
     # Start Docker
     open -a Docker
     ```

   - Error: "no space left on device"

     ```bash
     # Clean up unused containers and images
     docker system prune -af
     ```

2. **GitHub Token Issues**:

   - Error: "Resource not accessible by integration"

     ```bash
     # Check token permissions
     gh auth status
     # Verify token scopes
     gh auth refresh -h github.com -s workflow
     ```

   - Error: "Bad credentials"

     ```bash
     # Re-authenticate
     gh auth login --web
     ```

3. **Workflow Input Issues**:

   - Error: "Input required and not supplied"

     ```bash
     # Check workflow inputs
     grep -A 5 "inputs:" "$WORKFLOW_FILE"
     # Run with required input
     INPUTS="required_input=value" npm run test:workflow
     ```

4. **Event Payload Issues**:

   - Error: "No such repository"

     ```bash
     # Validate event file
     jq . "$EVENT_FILE"
     # Update repository info
     sed -i '' 's/old-owner/new-owner/' "$EVENT_FILE"
     ```

5. **Path and Permission Issues**:

   - Error: "Permission denied"

     ```bash
     # Fix script permissions
     chmod +x .github/tests/scripts/*.sh
     ```

   - Error: "File not found"

     ```bash
     # Check paths from repository root
     git rev-parse --show-toplevel
     cd $(git rev-parse --show-toplevel)
     ```

### Performance Tips

1. **Faster Testing**:

   - Use `--no-cache` only when necessary
   - Keep Docker images up to date
   - Clean up old containers regularly

2. **Resource Usage**:

   - Monitor Docker resource usage
   - Use `--rm` to auto-remove containers
   - Clean up temporary files

3. **Workflow Optimization**:
   - Test specific jobs: `act -j job_name`
   - Use job conditionals wisely
   - Cache dependencies appropriately

### Local Testing Setup

Our workflow testing system uses a special setup mechanism that works differently in local testing versus GitHub Actions:

1. **Setup Script**:

   - Created dynamically during local testing
   - Installs necessary dependencies (like GitHub CLI)
   - Sets up the test environment
   - Only runs when testing locally with `act`

2. **Environment Detection**:

   ```yaml
   - name: Local test setup
     run: |
       if [ -n "$SETUP_SCRIPT" ] && [ -f "$SETUP_SCRIPT" ]; then
         bash "$SETUP_SCRIPT"
       fi
   ```

   This pattern:

   - Runs setup only when `SETUP_SCRIPT` is set (local testing)
   - Safely skips in GitHub Actions (where `SETUP_SCRIPT` isn't set)
   - Validates script existence before execution
   - Fails gracefully if something goes wrong

3. **Setup Script Validation**:
   The setup script includes several safety checks:

   - Verifies `GITHUB_WORKSPACE` is set
   - Validates tool installations
   - Uses proper error handling
   - Provides clear error messages
   - Cleans up temporary files

4. **Workflow Inputs**:

   - Pass inputs using the `INPUTS` environment variable:

     ```bash
     WORKFLOW=markdownlint EVENT=markdownlint INPUTS="files=README.md" npm run test:workflow
     ```

   - Multiple inputs are comma-separated:

     ```bash
     INPUTS="key1=value1,key2=value2" npm run test:workflow
     ```

5. **Debugging**:
   If the setup fails:

   - Check the setup script at `.github/tests/setup.sh`
   - Verify Docker is running: `docker info`
   - Check GitHub authentication: `gh auth status`
   - Look for specific error messages in the output
   - Try running with `RUNNER_DEBUG=1` for verbose logs

6. **Cleanup**:
   - Temporary files are automatically cleaned up
   - The setup script is removed after testing
   - Docker containers are removed if using `--rm`
   - Failed runs still clean up properly

### Best Practices for Local Testing

1. **Before Testing**:

   - Ensure Docker is running
   - Authenticate with GitHub (`gh auth login`)
   - Be in the correct directory
   - Have all dependencies installed

2. **Writing Tests**:

   - Keep event files up to date
   - Use realistic test data
   - Test both success and failure cases
   - Document special requirements

3. **Running Tests**:

   - Start with basic workflow test
   - Add inputs if needed
   - Check output carefully
   - Clean up between runs

4. **Troubleshooting**:
   - Read error messages carefully
   - Check setup script output
   - Verify environment variables
   - Use debugging flags when needed

## Pre-commit Hooks

We use `husky` and `lint-staged` to run tests before each commit:

1. Markdown files are checked for:
   - Spelling
   - Link validity
   - Code block formatting
   - General markdown style
2. JavaScript files are linted with ESLint
3. JSON files are validated with jsonlint
4. YAML files are checked with yaml-lint
5. Shell scripts are analyzed with shellcheck

## Running Tests Locally

Use these npm scripts to run tests:

```bash
# Run all tests
npm run lint:all

# Individual test suites
npm run lint:js         # Test JavaScript files
npm run lint:json       # Test JSON files
npm run lint:yaml       # Test YAML files
npm run lint:shell      # Test shell scripts
npm run fix:md         # Test and fix markdown files
npm run spell-check    # Check spelling
npm run check-links    # Validate markdown links
npm run check-codeblocks # Validate code blocks
npm run test:actions   # Test GitHub Actions (dry run)
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

1. Add appropriate tests for new functionality
2. Update this document if testing procedures change
3. Ensure all tests pass locally before pushing
4. Consider adding new test cases for edge scenarios
