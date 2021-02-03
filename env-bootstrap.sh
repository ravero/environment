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

## Clone the Environment Repository if it doesn't exists
ENVIRONMENT_LOCAL_PATH="${HOME}/Environment"

if [[ ! -d $ENVIRONMENT_LOCAL_PATH ]]; then
    ENVIRONMENT_GIT_REMOTE_SSH="git@github.com:ravero/environment.git"
    ENVIRONMENT_GIT_REMOTE_HTTPS="https://github.com/ravero/environment.git"
    git clone $ENVIRONMENT_GIT_REMOTE_HTTPS "${ENVIRONMENT_LOCAL_PATH}"
fi

# Setup Network devices
source "${ENVIRONMENT_LOCAL_PATH}/setup/setup_network.sh"

# Install essential stuff
brew install mas                            # mas-cli - https://github.com/mas-cli/mas - Required for app store script

read -p "Check if the App Store is signed-in before we continue..." -n 1 -r
mas install 1333542190	        # 1Password
mas install 937984704           # Amphetamine
