if hash hub 2>/dev/null; then
    # Alias `hub` as `git`
    eval "$(hub alias -s)"
fi

alias ga='git add'
alias gci='git commit'
alias gco='git checkout'
alias gg='git l'
alias gst='git st'
alias guf='git update-fork'

# `git status` if no arguments; otherwise `git`.
g () {
    if [ $# -eq 0 ]; then
        git st
    else
        git "$@"
    fi
}
