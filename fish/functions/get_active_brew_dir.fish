
function get_active_brew_dir
    set --local bin $argv[1]

    set --local link (readlink -n $bin)
    set --local link_base (dirname $bin)
    set --local dir (dirname (dirname (absolute_path $link_base/$link)))

    echo $dir
end
