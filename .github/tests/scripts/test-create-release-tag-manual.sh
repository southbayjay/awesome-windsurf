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

# Create initial commit and tag on main branch
git symbolic-ref HEAD refs/heads/main
echo "# Test Repository" > README.md
git add README.md
git commit -m "initial commit"
git tag -a "v2024.12.0" -m "Initial release"

# Create feature branch with release commit
git checkout -b feature/manual-release

# Create a test file with release commit
echo "Test file" > test.txt
git add test.txt
git commit -m "release: prepare for version 2024.12.9"

# Create a copy of the test directory for the workflow
WORKFLOW_DIR="$TEST_DIR/workflow-test"
mkdir -p "$WORKFLOW_DIR"
cp -r "$TEST_DIR/.git" "$WORKFLOW_DIR/"
cd "$WORKFLOW_DIR"
git checkout feature/manual-release

# Run the workflow test
cd "$GITHUB_WORKSPACE"
"$GITHUB_WORKSPACE/.github/tests/scripts/test-workflow.sh" \
    .github/workflows/create-release-tag.yml \
    .github/tests/events/create-release-tag.json \
    "github_token=$GITHUB_TOKEN"

# Cleanup
rm -rf "$TEST_DIR"
