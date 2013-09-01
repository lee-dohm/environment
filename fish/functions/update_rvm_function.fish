
function update_rvm_function
    curl --silent --create-dirs -o $__rvm_function_path $__rvm_function_repo
end
