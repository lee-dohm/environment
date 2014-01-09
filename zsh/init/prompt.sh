autoload -U promptinit
promptinit

# Set the prompt that I like
precmd () {
    branch=`git branch --no-color 2>/dev/null | grep \* | sed "s/^\* \(.*\)$/(${YELLOW}\1${BOLD_WHITE}) /"`

    exit="%(?..${RED}[%?]${RESET} )"

    sep="${BOLD_WHITE}%#${RESET} "

    host="${YELLOW}%m"
    user="${GREEN}%n"
    loc="${BOLD_WHITE}[$user${BOLD_WHITE}@$host${BOLD_WHITE}] "

    PS1="$loc$branch$exit$sep"
}

RPROMPT="${BOLD_WHITE}[${WHITE}%~${BOLD_WHITE}]${RESET}"
