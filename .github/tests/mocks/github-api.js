// Mock GitHub API responses for testing
module.exports = {
  // Mock PR data
  pulls: {
    get: {
      data: {
        number: 999,
        head: {
          sha: '0a97d696',
          ref: 'test/manual-release',
        },
        base: {
          ref: 'main',
        },
        labels: [],
        title: 'Manual Release Test',
      },
    },
  },
  // Mock commit data
  repos: {
    getCommit: {
      data: {
        commit: {
          message: 'release: test manual release',
        },
      },
    },
  },
  // Track API calls for verification
  calls: {
    createComment: [],
    createCommitStatus: [],
  },
};
