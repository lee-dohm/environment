
function binit --description 'Initializes a new Ruby *application* for bundler'
    set_color red
    echo 'Do NOT use this process for gems, only applications'
    set_color normal

    bi; and b package; and echo 'vendor/ruby' >> .gitignore
end
