if hash hub 2>/dev/null; then
    # Alias `hub` as `git`
    eval "$(hub alias -s)"
fi

alias gci='git commit'
alias gg='git dag'
alias gst='git st'

# `git status` if no arguments; otherwise `git`.
g () {
    if [ $# -eq 0 ]; then
        git st
    else
        git "$@"
    fi
}
