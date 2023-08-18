#!/bin/bash

branch_name=${GITHUB_HEAD_REF##*/}  # Get the branch name from the GitHub environment variable

case $branch_name in
  development)
    echo "Deploying Development Version"
    # Run commands to deploy the development version
    ;;
  staging)
    echo "Deploying Staging Version"
    # Run commands to deploy the staging version
    ;;
  master|main)
    echo "Deploying Production Version"
    # Run commands to deploy the production version
    ;;
  *)
    echo "Unsupported branch name: $branch_name"
    exit 1
    ;;
esac
