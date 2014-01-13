if [ -d $SOURCE_DIR/local-only ]; then
    __append-path-entry $SOURCE_DIR/local-only/bin

    # Load any local only initializations
    for init in `ls -d1 $SOURCE_DIR/local-only/zsh/init/*`
    do
        source $init
    done
    unset init
fi
