
set --global --export SCRIPT_DIR (dirname (dirname (status -f)))
set --global --export SOURCE_DIR (dirname $SCRIPT_DIR)
set --global --export PROFILE (status -f)

if not contains $SCRIPT_DIR/fish/functions $fish_function_path
    set fish_function_path $SCRIPT_DIR/fish/functions $fish_function_path
end

if not contains $SCRIPT_DIR/bin $PATH
    set PATH $PATH $SCRIPT_DIR/bin
end

set --global --export EDITOR 'subl -w'

rvm use 2.0.0 > /dev/null
