#!/bin/bash

#------------------------------------------------------------------------------
# Developer stuff
#------------------------------------------------------------------------------

## Git aliases
git config --global alias.clone-branches '! git branch -a | sed -n "/\/HEAD /d; /\/master$/d; /remotes/p;" | xargs -L1 git checkout -t'

## .NET Core Command Line tools
dotnet tool install --global dotnet-ef
dotnet tool install -g dotnet-aspnet-codegenerator
dotnet tool install --global dotnet-giio

## Cocoapods
sudo gem install cocoapods

## Swift Lint
brew install swiftlint

## MKDocs with Material
pip3 install mkdocs-material