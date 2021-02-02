brew install --cask sf-symbols

DATA_FOLDER="${PWD}/../data"
FONTS_FOLDER="${DATA_FOLDER}/fonts"

## Input
find "${FONTS_FOLDER}/Input-Font" -name '*.ttf' -exec cp {} ~/Library/Fonts/ \;

cp "${FONTS_FOLDER}/JosefinsSans/"*.ttf ~/Library/Fonts
cp "${FONTS_FOLDER}/Montserrat/"*.ttf ~/Library/Fonts
cp "${FONTS_FOLDER}/OpenSans/"*.ttf ~/Library/Fonts
cp "${FONTS_FOLDER}/roboto-android/"*.ttf ~/Library/Fonts
