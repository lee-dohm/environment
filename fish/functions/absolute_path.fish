
function absolute_path --description 'Converts a relative path into an absolute path'
    set --local target $argv[1]
    set --local curdir (pwd)

    builtin cd (dirname $target) > /dev/null; and echo (pwd -P)/(basename $target); and builtin cd $curdir
end
