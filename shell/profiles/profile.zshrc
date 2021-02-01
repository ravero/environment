#-- Profiling Code --
#zmodload zsh/zprof
#-- Profiling Code --

# Prompt Configuration
export PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '
#export RPROMPT='%t'

#------------------------------------------------------------------------------
# **Data Path** is the root where I put my data files and folders
#
# By default it's the Home Path itself, but for shared OS installations I've found useful
# to have it in a separate Volume, so I don't need to mess the other instalation path of
# an operating system in the same system.
#
# A simple check is done to see if the alternate data path exists (a path in a separate volume.)
# This allow a single script to resolve both scenarios.
#------------------------------------------------------------------------------
export DATA_PATH=$HOME
export ALT_DATA_PATH="/Volumes/HakanData"
if [[ -d $ALT_DATA_PATH ]]; then
    export DATA_PATH=$ALT_DATA_PATH
fi

# Path Configuration
export DEV_PATH=$DATA_PATH/Developer
export PATH=$DATA_PATH/bin/scripts:$PATH
export PATH=$DATA_PATH/bin/flutter/bin:$PATH
export PATH=$HOME/.dotnet/tools:$PATH
export PATH=$HOME/Library/Python/2.7/bin:$PATH

# Android SDK Settings
export ANDROID_HOME=$HOME/Library/Android/SDK
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

# Default editor Configuration - Defaults to nvim
export EDITOR="/usr/local/bin/nvim"

#------------------------------------------------------------------------------
# Aliases Configuration
#------------------------------------------------------------------------------

# Standard Aliases
alias l="ls -la"
alias zshcfg="code ~/.zshrc"
alias hist="history 0"
alias gig="dotnet giio generate"
alias gigl="dotnet giio list"
alias gsrc="cd $DATA_PATH/bin/scripts"
alias isim="open -a Simulator"
alias dtp="cd $DATA_PATH"
alias dev="cd $DEV_PATH"

# Developer aliases
alias gitcb="git checkout -b "
alias gitclig="git clean -fxd"          # Reference: https://prototypemakers.medium.com/cleanbinobjdirectoriesxamarinprojects-de58f11d366d

# Cocoa Developer aliases
alias podi="pod install"
alias podiu="pod install --repo-update"

# ABI aliases
alias gtapw="cd ~/Developer/ABI/tapwiser-ios"

#------------------------------------------------------------------------------
# Shell Options
#------------------------------------------------------------------------------
setopt AUTO_CD
setopt NO_CASE_GLOB
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt CORRECT
setopt CORRECT_ALL

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

# Completions
#autoload -Uz compinit && compinit
#zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
#zstyle ':completion:*' list-suffixes
#zstyle ':completion:*' expand prefix suffix

# Git Integration
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT=\$vcs_info_msg_0_$PROMPT
zstyle ':vcs_info:git:*' formats '🦑 %b '

# grep color settings as suggested by https://superuser.com/questions/416835/how-can-i-grep-with-color-in-mac-os-xs-terminal
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

# MFractor Development stuff
export DEV_MFRACTOR_CRM_PATH=$DATA_PATH/Developer/MFractor/mfractor.crm
export PATH=$DEV_MFRACTOR_CRM_PATH/scripts:$PATH    # Global access to MFractor CRM Development scripts
alias devcrm="cd $DEV_MFRACTOR_CRM_PATH"
alias devcrmdb="cd $DEV_MFRACTOR_CRM_PATH/src/CRM/MFractor.CRM.Database.Bootstrap"
alias devmfdocs="cd $DEV_PATH/MFractor/mfractor.github.io"

#-- Profiling Code --
#zprof
#-- Profiling Code --
