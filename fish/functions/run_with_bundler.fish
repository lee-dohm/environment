
function run_with_bundler
    if bundler_installed; and within_bundled_project
        bundle exec $argv
    else
        eval $argv
    end
end
