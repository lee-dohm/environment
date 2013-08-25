
if [ (uname -s) = 'Darwin' ]
    set --global --export EDITOR 'subl -w'
else
    set --global --export EDITOR vim
end
