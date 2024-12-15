#!/bin/bash

# Test a GitHub Actions workflow with specific event and mocks
# Usage: ./test-workflow.sh <workflow-file> <event-file> [workflow-inputs]
# Example: ./test-workflow.sh ../workflows/markdownlint.yml events/markdownlint.json "files=README.md"

# Exit on error, but allow for empty variables
set -e

# Cleanup function
cleanup() {
    if [ -f "$GITHUB_WORKSPACE/.github/tests/setup.sh" ]; then
        echo "🧹 Cleaning up temporary files..."
        rm -f "$GITHUB_WORKSPACE/.github/tests/setup.sh"
    fi
}
trap cleanup EXIT

WORKFLOW_FILE=$1
EVENT_FILE=$2
WORKFLOW_INPUTS=${3:-""}

# Validate Docker
if ! docker info > /dev/null 2>&1; then
    echo "❌ Error: Docker is not running"
    echo "Please start Docker and try again"
    exit 1
fi

# Validate environment
if [ -z "${GITHUB_WORKSPACE:-}" ]; then
    GITHUB_WORKSPACE=$(git rev-parse --show-toplevel 2>/dev/null || pwd)
    export GITHUB_WORKSPACE
fi

# Validate input files
if [ ! -f "$WORKFLOW_FILE" ]; then
    echo "❌ Error: Workflow file $WORKFLOW_FILE not found"
    echo "Available workflows:"
    ls -1 ../workflows/
    exit 1
fi

if [ ! -f "$EVENT_FILE" ]; then
    echo "❌ Error: Event file $EVENT_FILE not found"
    echo "Available events:"
    ls -1 events/
    exit 1
fi

# Get GitHub token from gh CLI with validation
if [ -z "${GITHUB_TOKEN:-}" ]; then
    GITHUB_TOKEN=$(gh auth token)
    if [ -z "$GITHUB_TOKEN" ]; then
        echo "❌ Error: Could not get GitHub token"
        echo "Please make sure you're logged in with 'gh auth login'"
        exit 1
    fi
fi

# Create setup script
echo "🛠️ Creating setup script..."
cat > "$GITHUB_WORKSPACE/.github/tests/setup.sh" << 'EOL'
GITHUB_WORKSPACE=/github/workspace
GITHUB_REPOSITORY=ichoosetoaccept/awesome-windsurf
GITHUB_SHA=$(git rev-parse HEAD)
GITHUB_REF=refs/pull/44/merge
GITHUB_EVENT_NAME=pull_request
GITHUB_EVENT_PATH=/github/workflow/event.json
GITHUB_ACTOR=ichoosetoaccept
GITHUB_API_URL=https://api.github.com
GITHUB_GRAPHQL_URL=https://api.github.com/graphql
EOL

# Add workflow inputs to setup script
if [ -n "$WORKFLOW_INPUTS" ]; then
    echo "⚙️ Setting workflow inputs: $WORKFLOW_INPUTS"
    IFS=',' read -ra INPUTS <<< "$WORKFLOW_INPUTS"
    for input in "${INPUTS[@]}"; do
        KEY=$(echo "$input" | cut -d= -f1)
        VALUE=$(echo "$input" | cut -d= -f2)
        KEY_UPPER=$(echo "$KEY" | tr '[:lower:]' '[:upper:]')
        echo "INPUT_${KEY_UPPER}=${VALUE}" >> "$GITHUB_WORKSPACE/.github/tests/setup.sh"
    done
fi

# Set up environment
if [ -z "$GITHUB_WORKSPACE" ]; then
    GITHUB_WORKSPACE=$(git rev-parse --show-toplevel)
    export GITHUB_WORKSPACE
fi

# Run the workflow with act
echo "🔍 Testing workflow: $WORKFLOW_FILE"
echo "📋 Using event: $EVENT_FILE"
echo "📍 Current directory: $GITHUB_WORKSPACE"

cd "$GITHUB_WORKSPACE" && act pull_request \
    -W "$WORKFLOW_FILE" \
    -e "$EVENT_FILE" \
    -s GITHUB_TOKEN="$GITHUB_TOKEN" \
    -P ubuntu-latest=ghcr.io/catthehacker/ubuntu:act-latest \
    --container-architecture linux/amd64 \
    --artifact-server-path /tmp/artifacts \
    --env-file .github/tests/setup.sh \
    --bind
