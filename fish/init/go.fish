
if which go > /dev/null
    set --local go_dir (get_active_brew_dir (which go))

    set --global --export GOROOT $go_dir
    set --global --export GOPATH $SOURCE_DIR/gopath
    append_path_entry $GOPATH/bin

    function goplay --description 'Interactive Go environment in a web browser'
        go run $GOROOT/misc/goplay/goplay.go $argv
    end
end
