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

# Install essential stuff
brew install --cask iterm2
brew install mas                            # mas-cli - https://github.com/mas-cli/mas - Required for app store script

mas install 1333542190	        # 1Password
mas install 937984704           # Amphetamine
