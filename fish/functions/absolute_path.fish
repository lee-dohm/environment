
function absolute_path --description 'Converts a relative path into an absolute path'
    set --local dst $argv[1]
    cd (dirname $dst) > /dev/null; and echo (pwd -P)/(basename $dst); and popd
end
