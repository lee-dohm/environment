
if which go > /dev/null
    set --local go_bin (which go)
    set --local go_link (readlink -n $go_bin)
    set --local link_base (dirname $go_bin)
    set --local go_dir (dirname (dirname (absolute_path $link_base/$go_link)))

    set --global --export GOROOT $go_dir
    set --global --export GOPATH $SOURCE_DIR/gopath
    append_path_entry $GOPATH/bin
    alias goplay="go run $GOROOT/misc/goplay/goplay.go"
end
