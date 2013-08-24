
function prepend_path_entry --description 'Prepends an entry or list of entries onto the PATH'
    for entry in $argv
        if not contains $entry $PATH
            set PATH $entry $PATH
        end
    end
end
