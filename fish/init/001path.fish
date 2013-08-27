
append_path_entry $SCRIPT_DIR/bin

if test -d ~/bin
    append_path_entry ~/bin
end

# Fixup for putting /usr/local/bin before /usr/bin because fish still seems
# to not be respecting the /etc/paths file.
set --local bin_index (contains --index /usr/bin $PATH)
set --local local_bin_index (contains --index /usr/local/bin $PATH)

if test $local_bin_index -gt $bin_index
    set --erase $PATH[$local_bin_index]
    list_insert PATH bin_index /usr/local/bin
end
