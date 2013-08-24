
set --global --export PROFILE (status -f)
set --global --export SCRIPT_DIR (dirname (dirname $PROFILE))
set --global --export SOURCE_DIR (dirname $SCRIPT_DIR)

if not contains $SCRIPT_DIR/fish/functions $fish_function_path
    set fish_function_path $SCRIPT_DIR/fish/functions $fish_function_path
end

for script in (ls -d $SCRIPT_DIR/fish/init/*)
    . $script
end
