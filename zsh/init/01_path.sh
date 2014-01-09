append-path-entry () {
    if [ -d $1 ]; then
        PATH="$PATH:$1"
    fi
}

append-path-entry $HOME/bin
append-path-entry $SOURCE_DIR/local-only/bin

export PATH
