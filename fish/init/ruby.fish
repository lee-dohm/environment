
set --global __rvm_function_path ~/.config/fish/functions/rvm.fish
set --global __rvm_function_repo https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish

if not functions --query rvm; or should_update_rvm_function
    update_rvm_function
end

rvm use default > /dev/null

set --global --export RAILS_ENV development
