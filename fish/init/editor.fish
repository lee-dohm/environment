
if which emacs > /dev/null
    set --global --export EDITOR "emacsclient -t"
    set --global --export ALTERNATE_EDITOR ''

    alias e='emacsclient -t'
    alias ec='emacsclient -c'
    alias vim='emacsclient -t'
    alias vi='emacsclient -t'
else if which subl > /dev/null
    set --global --export EDITOR 'subl --wait'
else
    set --global --export EDITOR vim
end
