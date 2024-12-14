# Changelog

All notable changes to the awesome-windsurf repository will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
This project uses Calendar Versioning (YYYY.MM.MINOR).

## [Unreleased]

### Added

- Automatic changelog generation using auto-changelog
- GitHub workflow to update changelog on PR merges
- Switched to Calendar Versioning
- Added GitHub Actions status badge to README.md
- Enhanced commitlint configuration with better documentation and additional rules:
  - Added detailed comments for each commit type
  - Added new rules for body and footer formatting
  - Improved overall code documentation

## [2024.12.2] - 2024-12-14

### Changed

- Updated README.md layout and structure:
  - Restored Windsurf logo and improved header layout
  - Removed redundant Community section
  - Streamlined content organization
- Enhanced README.md with informative badges:
  - Added Discord community badge with online member count
  - Added project status badges (PRs Welcome, Maintained, Contributors)
  - Added repository information badges (Last Commit, Size, License, Stars)
- Moved Global Rules Custom Prompt to simplify project structure

## [2024.12.1] - 2024-12-14

### Changed

- Updated README.md:
  - Removed Community Wishlist section
  - Added link to official Windsurf feature request page (<https://codeium.canny.io/feature-requests>)
  - Improved markdown formatting and consistency
  - Simplified installation instructions
- Updated husky pre-commit hook:
  - Removed deprecated husky initialization lines
  - Reordered hooks to run lint-staged before CHANGELOG check
  - Maintained CHANGELOG.md update enforcement
- Restructured repository organization:
  - Fixed markdown linting issues throughout
  - Improved documentation organization and readability
  - Created new content directory structure
  - Added repository guidelines for CHANGELOG updates and content standards
- Reorganized sections for better readability
- Added disclaimer about community-driven nature

### Added

- Created dedicated prompts directory with README:
  - Added computerK's Global Rules prompt
  - Added custom prompts section to main README
- Added link to official Cascade documentation in Rules Files section
- Added markdownlint configuration and GitHub Actions workflow for markdown linting
- Added direct link to Codeium documentation in the "Please Read" section
- Added clarification about project's community focus and relationship to official documentation
- Added Known Issues & Solutions section with common problems and workarounds
- Added OS-specific installation sections with macOS instructions and placeholders for Linux and Windows
- Added link to custom Jest reporter for handling special characters in chat

## [2024.12.0] - 2024-12-14

### Added

- Initial repository structure
- README.md with comprehensive sections:
  - Official Resources (Discord, Website, Documentation, Changelog)
  - Getting Started guide
  - Known Issues & Solutions section
  - Placeholders for Tips, Themes, and Troubleshooting
  - Community section
  - Contributing guidelines
- Links to official Codeium resources:
  - Common Issues documentation
  - Changelog
  - Discord community

### Changed

- Organized sections for better readability
- Added disclaimer about community-driven nature

For official Windsurf updates, please visit the [Codeium Changelog](https://codeium.com/changelog)

[Unreleased]: https://github.com/ismar/awesome-windsurf/compare/2024.12.2...HEAD
[2024.12.2]: https://github.com/ismar/awesome-windsurf/compare/2024.12.1...2024.12.2
[2024.12.1]: https://github.com/ismar/awesome-windsurf/compare/2024.12.0...2024.12.1
[2024.12.0]: https://github.com/ismar/awesome-windsurf/releases/tag/2024.12.0
