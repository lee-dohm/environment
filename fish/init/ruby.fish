
if not functions --query rvm
    curl --create-dirs -o ~/.config/fish/functions/rvm.fish https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish
end

rvm use default > /dev/null
