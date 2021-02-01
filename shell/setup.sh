#!/bin/bash

#------------------------------------------------------------------------------
# Useful Symbolic Links
#------------------------------------------------------------------------------
if [[ ! -f $HOME/.icloud ]]; then
    ln -s $HOME/Library/Mobile\ Documents/com~apple~CloudDocs $HOME/.icloud
fi

#------------------------------------------------------------------------------
# ZSH Environment
# Sets the .zshrc config file to point to the default configuration file of bin
#------------------------------------------------------------------------------
echo "Setting up ZSH..."

# if Oh My ZSH is not installed then install
if [[ ! -d $HOME/.oh-my-zsh ]]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

ZSH_PROFILE_FILE=$HOME/.zshrc
if  [[ -f $ZSH_PROFILE_FILE ]] || [[ -L $ZSH_PROFILE_FILE ]]; then
    echo "Removing existing ZSH profile file/symlink..."
    rm $ZSH_PROFILE_FILE
fi

echo "Creating ZSH profile symlink..."
ln -s $PWD/profiles/oh-my-zsh.zshrc $ZSH_PROFILE_FILE
echo "ZSH profile symlink created:"
ls -la ~/.zshrc
echo ""

#------------------------------------------------------------------------------
# PowerShell Environment
# Sets the PowerShell profile file symbolic link
#------------------------------------------------------------------------------
read -p "Do you want to setup PowerShell profile? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    PWSH_PROFILE_FILE_NAME=Microsoft.PowerShell_profile.ps1
    PWSH_PROFILE_PATH=$HOME/.config/powershell
    PWSH_PROFILE_FILE=$PWSH_PROFILE_PATH/$PWSH_PROFILE_FILE_NAME

    if [[ ! -d $PWSH_PROFILE_PATH ]]; then
    echo "Creating the PowerShell Profile path..."
    mkdir -p $PWSH_PROFILE_PATH
    fi

    if [[ -f $PWSH_PROFILE_FILE ]] || [[ -L $PWSH_PROFILE_FILE ]]; then
    echo "Removing existing PowerShell profile file/symlink..."
    rm $PWSH_PROFILE_FILE
    fi

    echo "Creating PowerShell profile symlink..."
    ln -s $PWD/profiles/pwsh_profile.ps1 $PWSH_PROFILE_FILE
    echo "PowerShell profile symlink created:"
    ls -la $PWSH_PROFILE_FILE
    echo ""
fi
