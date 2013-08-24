
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
    set --local --erase local_path
    
    if test (math $bin_index - 1) -gt 0
        set local_path $PATH[1..(math $bin_index - 1)]
    end

    set local_path $local_path /usr/local/bin
    set local_path $local_path $PATH[$bin_index..-1]
    set --global --export PATH $local_path
end
