#! /bin/bash
#------------------------------------------------------------------------------
# Install settings
#------------------------------------------------------------------------------
pref_file="MonoDevelopProperties.xml"
pref_folder="${HOME}/Library/Preferences/VisualStudio/8.0/"
pref_path="${pref_folder}${pref_file}"
pref_path_previous="${pref_path}.previous"

# Check if the preferences folder exists
if [[ ! -d "${pref_folder}" ]]
then
  echo "Creating Preferences folder for VSMac 2019"
  mkdir "${pref_folder}"
fi

# Check if the properties file exists and back it up
if [[ -f "${pref_path}" ]]
then
  echo "Backing up current preferences file..."
  mv "${pref_path}" "${pref_path_previous}"
fi

echo "Copying Preferences to VSMac 2019"
cp -rfv "${PWD}/../data/visual-studio/preferences/MonoDevelopProperties.xml" "${pref_folder}"

#------------------------------------------------------------------------------
# Install snippets for Visual Studio Mac.
#------------------------------------------------------------------------------
snippets_folder="${HOME}/Library/VisualStudio/8.0/Snippets/"

# Create Snippets folder if it doesn't exists
if [[ ! -d "${snippets_folder}" ]]; then
  echo "Creating Snippets folder for VSMac 2019"
  mkdir "${snippets_folder}"
fi

echo "Copying Snippets to VS2019..."
cp -rfv ../data/visual-studio/code-snippets/* "${snippets_folder}"