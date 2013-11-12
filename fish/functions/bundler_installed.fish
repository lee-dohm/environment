
function bundler_installed --description 'Indicates whether bundler is installed'
    which bundle > /dev/null 2>&1
end
