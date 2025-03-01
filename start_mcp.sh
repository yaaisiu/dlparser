#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
else
    echo "Error: .env file not found!"
    exit 1
fi

# Check if the token is available
if [ -z "$GITHUB_PERSONAL_ACCESS_TOKEN" ]; then
    echo "Error: GitHub Personal Access Token not found in .env file!"
    exit 1
fi

# Run the server
npx @modelcontextprotocol/server-github --port 3000 --github-personal-access-token $GITHUB_PERSONAL_ACCESS_TOKEN
