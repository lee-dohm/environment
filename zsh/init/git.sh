if hash hub 2>/dev/null; then
    # Alias `hub` as `git`
    eval "$(hub alias -s)"
fi

alias gci='git commit'
alias gg='git dag'
alias gst='git st'
alias guf='git-update-fork'

# `git status` if no arguments; otherwise `git`.
g () {
    if [ $# -eq 0 ]; then
        git st
    else
        git "$@"
    fi
}

# Writes the name of the current branch to `STDOUT`.
git-current-branch () {
    git branch --no-color | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# Updates a GitHub forked project with the latest code from the original and pushes the updated code
# to the personal copy.
#
# Assumes that the original project is on a remote named `upstream` and the personal copy is on a
# remote named `origin`. It will only merge by fast-forward and will not push to the personal copy
# unless the fetch and merge was successful.
git-update-fork () {
    if [ `git-current-branch` != 'master' ]; then
        echo Must be on the master branch to update the fork! >&2
        return 1
    fi

    git pull --ff-only upstream master && git push origin master
}
