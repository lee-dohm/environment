
function should_update_rvm_function
    if throttle --interval 7d should_update_rvm_function
        set --local tempfile (mktemp -t check_rvm.fish.XXXXXXXXXX)

        curl --silent --output $tempfile $__rvm_function_repo
        set --local retstatus 0
        if diff $tempfile $__rvm_function_path
            set retstatus 1
        end

        rm $tempfile

        return $retstatus
    else
        return 1
    end
end
