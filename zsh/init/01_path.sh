# Appends the first argument to the `PATH` if it exists and is a directory.
append-path-entry () {
    dir=$1

    if [ -d $dir ]; then
        PATH="$PATH:$dir"
    fi
}

append-path-entry $HOME/bin
append-path-entry $SOURCE_DIR/local-only/bin

export PATH
