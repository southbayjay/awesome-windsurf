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
 * 
 * Examples:
 * - add: create guide for windsurf setup
 * - update: improve clarity of installation steps
 * - remove: outdated tutorial section
 * - fix: correct typos in README
 * - meta: update markdown linting rules
 */
module.exports = {
  rules: {
    'type-enum': [
      2,
      'always',
      ['add', 'update', 'remove', 'fix', 'meta']
    ],
    'type-case': [2, 'always', 'lowerCase'],
    'type-empty': [2, 'never'],
    'subject-empty': [2, 'never'],
    'subject-case': [2, 'always', 'lowerCase'],
    'subject-full-stop': [2, 'never', '.']
  }
}
