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
3. Update the CHANGELOG.md for any notable changes
4. Keep descriptions clear and concise
5. Test any code or commands before submitting

## How to contribute

1. Fork the repository to your GitHub account

2. Clone your fork locally:

   ```bash
   git clone https://github.com/YOUR_USERNAME/awesome-windsurf.git
   cd awesome-windsurf
   ```

3. Create a new branch for your changes:

   ```bash
   git checkout -b your-branch-name
   ```

4. Make your changes and commit them using conventional commits:

   ```bash
   git add .
   git commit -m "type: description"
   ```

   Example commit messages:
   - `git commit -m "docs: add link to windsurf docs"`
   - `git commit -m "fix: correct typo in README"`
   - `git commit -m "build: add missing dependency"`

5. Push to your fork:

   ```bash
   git push origin your-branch-name
   ```

6. Open a Pull Request from your fork to our main branch

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

## Contributing Prompts

For detailed information about contributing prompts, including:

- Directory structure
- Standard files and naming
- Documentation requirements
- Best practices and examples

Please see [prompts/README.md](prompts/README.md).

## Git Hooks

This project uses several git hooks to maintain code quality:

1. **pre-commit**: Runs markdownlint-cli2 to ensure markdown files follow our style guidelines
2. **commit-msg**: Uses commitlint to enforce our documentation commit convention:

   ```txt
   Types:
   - add: Add new documentation
   - update: Update existing documentation
   - remove: Remove documentation
   - fix: Fix typos, formatting, or broken links
   - meta: Changes to the repository itself

   Examples:
   - add: create guide for windsurf setup
   - update: improve clarity of installation steps
   - fix: correct typos in README
   ```

These hooks will automatically run when you commit changes. If a hook fails, it will provide feedback on what needs to be fixed.

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
