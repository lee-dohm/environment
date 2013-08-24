
function cd --description 'Custom cd command to work like pushd'
    if count $argv >/dev/null
        switch $argv[1]
            case -h --h --he --hel --help
                __fish_print_help pushd
                return 0
        end
    end

    # Comment to avoid set completions
    set -g dirstack (command pwd) $dirstack
    fish-cd $argv[1]
end

function fish-cd --description "Change directory"

    # Skip history in subshells
    if status --is-command-substitution
        builtin cd $argv
        return $status
    end

    # Avoid set completions
    set -l previous $PWD

    if test $argv[1] = - ^/dev/null
        if test "$__fish_cd_direction" = next ^/dev/null
            nextd
        else
            prevd
        end
        return $status
    end

    builtin cd $argv[1]
    set -l cd_status $status

    if test $cd_status = 0 -a "$PWD" != "$previous"
        set -g dirprev $dirprev $previous
        set -e dirnext
        set -g __fish_cd_direction prev
    end

    return $cd_status
end
