#!/bin/zsh

if [[ -d "$SOURCE_DIR/local-only" ]] then
    export PATH="$PATH:$SOURCE_DIR/local-only/bin"
fi
