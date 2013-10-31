
function be --description 'Helper for bundle exec'
    if [ $argv[1] = 'rake' ]
        set_color red
        echo 'Use ber' $argv[2..-1]
        set_color normal
    end

    bundle exec $argv
end
