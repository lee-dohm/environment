
function append_path_entry --description 'Appends an entry or list of entries to the PATH variable'
    for entry in $argv
        if not contains $entry $PATH
            set PATH $PATH $entry
        end
    end
end
