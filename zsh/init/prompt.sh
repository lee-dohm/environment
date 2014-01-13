autoload -U promptinit
promptinit

prompt_git_branch () {
    git branch --no-color 2>/dev/null |
        sed -e '/^[^*]/d' \
            -e "s/(detached from //" \
            -e "s/)//" \
            -e "s/* \(.*\)/${BOLD_WHITE}(${YELLOW}\1${BOLD_WHITE}) ${RESET}/"
}

# Set the prompt that I like
precmd () {
    branch=`prompt_git_branch`

    exit="%(?..${RED}[%?]${RESET} )"

    sep="${BOLD_WHITE}%#${RESET} "

    host="${YELLOW}%m"
    user="${GREEN}%n"
    loc="${BOLD_WHITE}[$user${BOLD_WHITE}@$host${BOLD_WHITE}] ${RESET}"

    PS1="$loc$branch$exit$sep"
}

RPROMPT="${BOLD_WHITE}[${WHITE}%~${BOLD_WHITE}]${RESET}"
