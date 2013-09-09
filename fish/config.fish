
set --global --export PROFILE (status --current-filename)
set --global --export SCRIPT_DIR (dirname (dirname $PROFILE))
set --global --export SOURCE_DIR (dirname $SCRIPT_DIR)

if not contains $SCRIPT_DIR/fish/functions $fish_function_path
    set fish_function_path $SCRIPT_DIR/fish/functions $fish_function_path
end

if [ -n $fish_greeting ]
    set --universal fish_greeting ''
end

for script in (ls -d $SCRIPT_DIR/fish/init/*.fish)
    if set --query debug_fish_login
        echo "Loading: $script"
    end

    . $script
end
