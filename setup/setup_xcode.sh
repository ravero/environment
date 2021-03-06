#! /bin/bash

## Xcode Themes
# Reference: https://medium.com/@EldonChan/customizing-xcode-themes-e98d0f06101e
themes_folder_name=FontAndColorThemes
themes_path="${HOME}/Library/Developer/Xcode/UserData/${themes_folder_name}/"

if [[ ! -d "$themes_path" ]]; then
    mkdir $themes_path
fi

cp ../data/xcode-themes/* $themes_path