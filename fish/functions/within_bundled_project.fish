
function within_bundled_project
    set --local dir (pwd)

    while [ (dirname $dir) != "/" ]
        [ -f "$dir/Gemfile" ]; and return
        set dir (dirname $dir)
    end

    false
end
