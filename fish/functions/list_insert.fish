
##
# @param var_name Name of the variable containing the list.
# @param index    Index before which to place the values.
# @param values   List of values to insert.
function list_insert --description 'Inserts values into a list before the given index'
    set --local var_name  $argv[1]
    set --local index     $argv[2]
    set --local values    $argv[3..-1]
    set --local var_value $$var_name

    if [ $index -lt 1 -o $index -gt (count $var_value) ]
        log_error 'Index must be between 1 and the number of items in the list, inclusive'
        return 1
    end

    set --local temp ''
    if [ $index -gt 1 ]
        set temp $var_value[1..(math $index - 1)]
    end

    set temp $temp $values

    if [ $index -lt (count $var_value) ]
        set temp $temp $var_value[$index..-1]
    end

    set $var_name $temp
end
