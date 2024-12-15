# Contributing to Awesome Windsurf

Thank you for your interest in contributing to Awesome Windsurf! We welcome all contributions, big or small:

- Found a typo? Please fix it!
- Have an idea for improvement? Open an issue!
- Want to add your prompts? We'd love to see them!
- Something unclear? Help us improve the docs!

Every contribution makes Windsurf better for everyone. Don't hesitate to:

- Open issues for questions or suggestions
- Submit pull requests for any improvements
- Start discussions on Discord or GitHub Discussions

## General Guidelines

1. Ensure your contribution adds value to the Windsurf community
2. Follow the existing style and format of the repository
3. Keep descriptions clear and concise
4. Test any code or commands before submitting

## How to contribute

1. Fork the repository to your GitHub account

2. Clone your fork locally:

   ```bash
   git clone https://github.com/YOUR_USERNAME/awesome-windsurf.git
   cd awesome-windsurf
   ```

3. Install dependencies and set up Git hooks:

   ```bash
   npm install
   ```

   This will install all required dependencies and set up Git hooks through Husky automatically.

4. Create a new branch for your changes:

   ```bash
   git checkout -b your-branch-name
   ```

5. Make your changes and commit them using conventional commits:

   ```bash
   git add .
   git commit -m "type: description"
   ```

   Example commit messages:
   - `git commit -m "add: add link to windsurf docs"`
   - `git commit -m "update: improve clarity of installation steps"`
   - `git commit -m "remove: remove old documentation"`
   - `git commit -m "fix: correct typos in README"`
   - `git commit -m "meta: update commitlint configuration"`
   - `git commit -m "release: added significant new section X"`

6. Push to your fork:

   ```bash
   git push origin your-branch-name
   ```

7. Open a Pull Request from your fork to our main branch

### Pull Request Requirements

1. **PR Content**:
   - Write a clear title and description explaining your changes
   - Link to any related issues

2. **Markdown Quality**: All markdown files must pass the markdownlint checks
   - This is automatically checked by GitHub Actions
   - It's also enforced by the pre-commit hook
   - You can run checks manually using `npx markdownlint-cli2 "**/*.md"`

3. **Changelog**: Changes are automatically tracked
   - We use [auto-changelog](https://github.com/CookPete/auto-changelog) to generate our CHANGELOG.md
   - The changelog is automatically generated from your commit messages
   - You don't need to edit the CHANGELOG.md file manually
   - For releases, add the 'release' label to your PR to create a version tag

## Releases and Versioning

We use Calendar Versioning (CalVer) with the format `YYYY.MM.PATCH`. Releases are managed entirely through GitHub Actions to ensure consistency:

### Automated Releases

A GitHub Action monitors changes and automatically proposes releases when:

- More than 5 files have changed since last release, or
- More than 10 commits have been made since last release

The Action will:

1. Calculate the next version number
2. Update package.json
3. Generate the changelog
4. Create a PR with all changes

### Manual Releases

To manually trigger a release:

1. Create a new PR
2. Use "release:" in the PR title (e.g., "release: add new feature X")
3. The same GitHub Action will handle version bumping and changelog updates

All releases go through PRs and the merge queue, ensuring proper review and consistency.

## Contributing Prompts

For detailed information about contributing prompts, including:

- Directory structure
- Standard files and naming
- Documentation requirements

Please see [memories/README.md](memories/README.md).

## Git Hooks

We use [husky](https://github.com/typicode/husky) to manage our Git hooks. These hooks ensure code quality and consistency:

### commit-msg

- Validates commit message format
- Ensures messages follow pattern: `type: description`
- Valid types: `add`, `update`, `remove`, `fix`, `meta`, `release`

### pre-commit

- Runs linting checks via lint-staged
- Ensures code style consistency
- Validates markdown files

Note: All version management, changelog updates, and releases are handled entirely by GitHub Actions through our auto-release workflow, not local hooks. This ensures consistency across all contributors.

## Need Help?

If you have questions or need help with your contribution:

1. Check existing issues and pull requests
2. Join the Discord community at the top of [README.md](README.md)
3. Open a new issue for discussion

## Code of Conduct

- Be respectful and inclusive
- Focus on constructive feedback
- Help others learn and grow
- Follow the project's code style and guidelines

Thank you for contributing to making Windsurf better for everyone!
