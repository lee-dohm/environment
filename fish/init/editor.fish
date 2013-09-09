
if [ (uname -s) = 'Darwin' -a -f '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' ]
    set --global --export EDITOR 'subl --wait'
else
    set --global --export EDITOR vim
end
