#!/bin/bash
#------------------------------------------------------------------------------
# Update Repository Remote Origin
#
# The initial cloning of the Environment repo on a machine that doesn't have 
#   SSH keys doesn't work because GitHub doesn't allow using SSH on public 
#   repos. The initial clone should be done with HTTPS then this script change
# 
# This script updates the remote for the local repo.
#------------------------------------------------------------------------------

ENVIRONMENT_GIT_REMOTE_SSH="git@github.com:ravero/environment.git"
ENVIRONMENT_GIT_REMOTE_HTTPS="https://github.com/ravero/environment.git"

git remote set-url origin ${ENVIRONMENT_GIT_REMOTE_SSH}

echo "Update URL for remote origin.."
git remote -v
