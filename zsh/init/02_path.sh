# The default on OS X is for `/usr/local/bin` to be in the PATH, but *after* `/usr/bin`. Homebrew
# does not work if /usr/local/bin is after and OS X includes that in the OS itself, like emacs. One
# can edit `/etc/paths`, but I would rather not edit system files if I can avoid it. So the
# following code allows me to parse the `PATH`, find the two paths relative to each other, ensure
# that `/usr/local/bin` is first and then remove any duplicates when I'm done while continuing to
# maintain relative order of the first instance of any entry.
#
# Oh, and I wanted to make it so this would work with only POSIX-guaranteed utilities. There may
# still be bits of code that depend on bash or zsh features though. These should be fixed when they
# are discovered.

# Appends the first argument to the `PATH` iff:
#
# * It exists
# * Is a directory
# * Is not already in PATH
__append-path-entry () {
    local dir=$1

    if [ -d $dir ]; then
        case ":$PATH:" in
            *":$dir:"*) :;;
            *) PATH="$PATH:$dir";;
        esac
    fi
}

# Escapes the first argument to be used as a regular expression.
__escape-string () {
    local text=$1

    echo $text | sed -e 's/[\/&]/\\&/g'
}

# Splits the first argument by the second.
__split-string () {
    local text=$1
    local sep=$2

    echo $text | tr $2 '\n'
}

# Gets the index of the first instance of the second argument within the first.
__get-index () {
    local text=$1
    local search=`__escape-string $2`

    __split-string $text ':' | awk "/$search/{print NR - 1}" | head -n 1
}

# Removes duplicate path entries.
#
# @see http://unix.stackexchange.com/a/40973/10613
__remove-path-duplicates () {
    set -f
    local IFS=:
    local old_PATH=$PATH:
    PATH=
    while [ -n "$old_PATH" ]; do
        local x=${old_PATH%%:*}
        case $PATH: in
            *:${x}:*) :;;
            *) PATH=$PATH:$x;;
        esac
        old_PATH=${old_PATH#*:}
    done
    PATH=${PATH#:}
    set +f
}

# Checks to ensure that `/usr/local/bin` is before `/usr/bin` in the `PATH`. If not, it puts it in
# front.
__local-fixup () {
    if [ `__get-index $PATH /usr/local/bin` -gt `__get-index $PATH /usr/bin` ]; then
        PATH="/usr/local/bin:$PATH"
    fi
}

__local-fixup

__append-path-entry $HOME/bin

export PATH
