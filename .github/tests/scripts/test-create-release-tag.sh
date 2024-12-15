#!/bin/bash

# Exit on error
set -e

# Set GITHUB_WORKSPACE
export GITHUB_WORKSPACE=$(git rev-parse --show-toplevel)

# Get GitHub token from gh CLI
GITHUB_TOKEN=$(gh auth token)
if [ -z "$GITHUB_TOKEN" ]; then
    echo "❌ Error: Could not get GitHub token"
    echo "Please make sure you're logged in with 'gh auth login'"
    exit 1
fi

# Create temporary test directory
TEST_DIR=$(mktemp -d)
cd "$TEST_DIR"

echo "🔧 Setting up test repository in $TEST_DIR..."

# Initialize git repository
git init
git config --local user.email "test@example.com"
git config --local user.name "Test User"

# Create initial commit and tag
echo "# Test Repository" > README.md
git add README.md
git commit -m "initial commit"
git tag -a "v2024.12.0" -m "Initial release"

# Create feature branch with changes
git checkout -b feature/test-changes

# Create multiple file changes
for i in {1..6}; do
    echo "Test file $i" > "file$i.txt"
    git add "file$i.txt"
done
git commit -m "feat: add multiple test files"

# Run the workflow test
cd "$GITHUB_WORKSPACE"
"$GITHUB_WORKSPACE/.github/tests/scripts/test-workflow.sh" \
    .github/workflows/create-release-tag.yml \
    .github/tests/events/create-release-tag.json \
    "github_token=$GITHUB_TOKEN"

# Cleanup
rm -rf "$TEST_DIR"
