#!/bin/zsh

if [[ -d "$HOME/android-sdk-macosx" ]] then
    export PATH="$PATH:$HOME/android-sdk-macosx/platform-tools:$HOME/android-sdk-macosx/tools"
fi
