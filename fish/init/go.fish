
if test -e /usr/local/bin/go
    set --global --export GOROOT /usr/local/Cellar/go/1.1
    set --global --export GOPATH $SOURCE_DIR/gopath
    append_path_entry $GOPATH/bin
    alias goplay="go run $GOROOT/misc/goplay/goplay.go"
end
