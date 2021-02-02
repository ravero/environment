#!/bin/bash
#------------------------------------------------------------------------------
# Environment Bootstrapper
#------------------------------------------------------------------------------

## Homebrew Installation/Update
# Reference: Snazzy Labs Homebrew Tips - https://www.youtube.com/watch?v=Ym2pxzWpTNw&t=19s / https://pastebin.com/jV9XzPrs
if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

## Clone the Environment Repository
ENVIRONMENT_GIT_REMOTE="git@github.com:ravero/environment.git"
ENVIRONMENT_LOCAL_PATH="${HOME}/Environment"

# Check if the Environment Folder doesn't already exists
if [[ ! -d $ENVIRONMENT_LOCAL_PATH ]]; then
    git clone $ENVIRONMENT_GIT_REMOTE "${ENVIRONMENT_LOCAL_PATH}"
fi

# Install essential stuff
brew install mas                            # mas-cli - https://github.com/mas-cli/mas - Required for app store script

read -p "Check if the App Store is signed-in before we continue..." -n 1 -r
mas install 1333542190	        # 1Password
mas install 937984704           # Amphetamine
