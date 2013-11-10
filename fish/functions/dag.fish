
function dag --description 'alias for the git dag command'
    # Because we don't know how many branches there are going to be and branches leave blank lines,
    # we can't determine ahead of time how many lines to display to fill up the screen. So we guess
    # screen height minus ten.
    set --local lines (math (tput lines) - 10)

    git dag --max-count $lines
end
