autoload -U compinit
compinit

# Fuzzy matching on completions
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Allow number of errors to grow based on length of what is already typed
zstyle -e ':completion:*:approximate:*' \
       max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# Ignore completion functions for commands I don't have
zstyle ':completion:*:functions' ignored-patterns '_*'

## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
       'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
