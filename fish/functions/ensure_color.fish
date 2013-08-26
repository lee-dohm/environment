
##
# @param var_name       Name of the environment variable that holds the color information.
# @param set_color_args Arguments to pass to `set_color` when using this color value.
#
# @example
#     ensure_color fish_color_user -o cyan
#
function ensure_color --description 'Ensures that the given color name is set to the supplied set_color argument array'
    set --local var_name $argv[1]
    set --local set_color_args $argv[2..-1]
    set --local var_value $$var_name

    if [ "$var_value" != "$set_color_args" ]
        set --universal $var_name $set_color_args
    end

    return 0
end
