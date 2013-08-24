
function pman --description 'Opens a man page in the OS X Preview app'
    if test (uname -s) = 'Darwin'
        man -t $argv[1] | open -f -a /Applications/Preview.app
    else
        man $argv
    end
end
