
if which postgres > /dev/null
    set --global --export POSTGRES (get_active_brew_dir (which postgres))
    set --global --export POSTGRES_BIN $POSTGRES/bin
end
