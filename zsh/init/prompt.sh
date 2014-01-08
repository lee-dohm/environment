autoload -U promptinit
promptinit

# Set the prompt that I like
precmd()
{
    local branch=''
    local exit=''
    branch=`git branch --no-color 2>/dev/null | grep \* | sed "s/^\* \(.*\)$/(${YELLOW}\1${BOLD_WHITE}) /"`
    exit="%(?..${RED}[%?]${RESET} )"
    PS1="${BOLD_WHITE}[${GREEN}%n${BOLD_WHITE}@${YELLOW}%m${BOLD_WHITE}] $branch$exit%#${RESET} "
}

RPROMPT="${BOLD_WHITE}[${WHITE}%~${BOLD_WHITE}]${RESET}"
