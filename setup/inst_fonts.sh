brew install --cask sf-symbols

## Fira Code - https://github.com/tonsky/FiraCode/wiki/Installing
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

## Fira Code for Powerline
brew install svn        # Fira Mono powerline requires SVN
brew install --cask font-fira-mono-for-powerline

DATA_FOLDER="${PWD}/../data"
FONTS_FOLDER="${DATA_FOLDER}/fonts"

## Input
find "${FONTS_FOLDER}/Input-Font" -name '*.ttf' -exec cp {} ~/Library/Fonts/ \;

cp "${FONTS_FOLDER}/JosefinsSans/"*.ttf ~/Library/Fonts
cp "${FONTS_FOLDER}/Montserrat/"*.ttf ~/Library/Fonts
cp "${FONTS_FOLDER}/OpenSans/"*.ttf ~/Library/Fonts
cp "${FONTS_FOLDER}/roboto-android/"*.ttf ~/Library/Fonts
