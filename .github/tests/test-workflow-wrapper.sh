#!/bin/bash

# Parse command line arguments into environment variables
for arg in "$@"; do
  IFS='=' read -r key value <<< "$arg"
  export "$key"="$value"
done

# Ensure required variables are set
if [ -z "$WORKFLOW" ] || [ -z "$EVENT" ]; then
  echo "Error: WORKFLOW and EVENT environment variables must be set"
  echo "Usage: WORKFLOW=<workflow> EVENT=<event> $0"
  echo "Example: WORKFLOW=markdownlint EVENT=markdownlint $0"
  exit 1
fi

# Run the workflow test
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
"$SCRIPT_DIR/scripts/test-workflow.sh" "$SCRIPT_DIR/../workflows/${WORKFLOW}.yml" "$SCRIPT_DIR/events/${EVENT}.json"
