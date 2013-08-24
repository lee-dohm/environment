
set --global --export SCRIPT_DIR (dirname (dirname (status -f)))
set --global --export SOURCE_DIR (dirname $SCRIPT_DIR)
set --global --export PROFILE (status -f)

set --local os (uname -s)

if not contains $SCRIPT_DIR/fish/functions $fish_function_path
    set fish_function_path $SCRIPT_DIR/fish/functions $fish_function_path
end

for script in (ls -d $SCRIPT_DIR/fish/init/*)
    . $script
end
