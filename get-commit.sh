#!/bin/bash
OWNER='Bhavitha2217-git'
REPO='bhavith-node-application'
set -x  # DEBUG: shows each command as it runs

curl -s -H "Authorization: token $GIT_TOKEN" \
     "https://api.github.com/repos/$OWNER/$REPO/commits/$BRANCH_NAME" \
| grep '"sha":' \
| head -1 \
| sed -E 's/."sha": *"([^"]+)"./\1/' \
| cut -c1-6
