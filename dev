#!/bin/bash

echo "Operating System: $OSTYPE"

# Windows (assumed default)
sourcePath="nvim\\"
destinationPath="$USERPROFILE\\AppData\\Local\\nvim\\"

if [[ "$OSTYPE" == "linux-gnu"* ]] || [[ "$OSTYPE" == "darwin"* ]];
then
    # Linux or Mac OSX
    sourcePath="nvim/"
    destinationPath="$HOME/.config/nvim"
else
    # Unknown.
    echo "Unknown OS, exiting."
    exit 1
fi

echo "Source Path: $sourcePath"
echo "Destination Path: $destinationPath"

cp -r "$sourcePath" "$destinationPath"
