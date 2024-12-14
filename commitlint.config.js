/**
 * Commitlint configuration for enforcing Angular commit convention
 * See: https://github.com/conventional-changelog/commitlint
 */
module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    'type-enum': [
      2,
      'always',
      [
        'feat',     // New feature for the user
        'fix',      // Bug fix for the user
        'docs',     // Documentation only changes
        'style',    // Changes that do not affect the meaning of the code (white-space, formatting, etc)
        'refactor', // A code change that neither fixes a bug nor adds a feature
        'perf',     // A code change that improves performance
        'test',     // Adding missing tests or correcting existing tests
        'build',    // Changes that affect the build system or external dependencies
        'ci',       // Changes to our CI configuration files and scripts
        'chore',    // Other changes that don't modify src or test files
        'revert',   // Reverts a previous commit
      ],
    ],
    'type-case': [2, 'always', 'lowerCase'],      // Type must be lowercase
    'type-empty': [2, 'never'],                   // Type cannot be empty
    'scope-case': [2, 'always', 'lowerCase'],     // Scope must be lowercase
    'subject-empty': [2, 'never'],                // Subject cannot be empty
    'subject-full-stop': [2, 'never', '.'],       // Subject cannot end with period
    'header-max-length': [2, 'always', 72],       // Header has a maximum length
    'body-leading-blank': [2, 'always'],          // Body should have leading blank line
    'footer-leading-blank': [1, 'always'],        // Footer should have leading blank line
    'body-max-line-length': [2, 'always', 100],   // Body lines should not exceed 100 chars
  },
};
