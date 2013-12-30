#
# Copyright (c) 2013 by Lifted Studios. All rights reserved.
#

if which emacs > /dev/null
    set --global --export EDITOR "ec"

    alias e='ec'
    alias vim='ec'
    alias vi='ec'
else if which subl > /dev/null
    set --global --export EDITOR 'subl --wait'
else
    set --global --export EDITOR vim
end
