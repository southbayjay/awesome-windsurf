/**
 * Commitlint configuration for documentation repository
 * 
 * Commit Message Format:
 * <type>: <description>
 * 
 * Types:
 * - add: Add new documentation
 * - update: Update existing documentation
 * - remove: Remove documentation
 * - fix: Fix typos, formatting, or broken links
 * - meta: Changes to the repository itself (CI, scripts, etc)
 * - release: Version releases and changelogs
 * 
 * Examples:
 * - add: create guide for windsurf setup
 * - update: improve clarity of installation steps
 * - remove: outdated tutorial section
 * - fix: correct typos in README
 * - meta: update markdown linting rules
 * - release: bump version to v2024.12.4
 */
module.exports = {
  rules: {
    'type-enum': [
      2,
      'always',
      ['add', 'update', 'remove', 'fix', 'meta', 'release']
    ],
    'type-case': [2, 'always', 'lowerCase'],
    'type-empty': [2, 'never'],
    'subject-empty': [2, 'never'],
    'subject-full-stop': [2, 'never', '.']
  }
}
