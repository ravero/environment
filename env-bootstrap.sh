#!/bin/bash
#------------------------------------------------------------------------------
# Environment Bootstrapper
#------------------------------------------------------------------------------

## Homebrew Installation/Update
if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

## Clone the Environment Repository
ENVIRONMENT_GIT_REMOTE="https://github.com/ravero/environment.git"
ENVIRONMENT_LOCAL_PATH="${HOME}/Environment"

# Check if the Environment Folder doesn't already exists
if [[ ! -d $ENVIRONMENT_LOCAL_PATH ]]; then
    git clone $ENVIRONMENT_GIT_REMOTE "${ENVIRONMENT_LOCAL_PATH}"
fi
