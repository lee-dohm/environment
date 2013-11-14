
if which emacs > /dev/null
    set --global --export EDITOR emacs
else if which subl > /dev/null
    set --global --export EDITOR 'subl --wait'
else
    set --global --export EDITOR vim
end
