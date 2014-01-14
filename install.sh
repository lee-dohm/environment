#!/bin/sh

# Gets the absolute path of the first parameter.
abspath() {
    cd -P -- "$(dirname -- "$1")" && printf '%s\n' "$(pwd -P)/$(basename -- "$1")"
}

# Creates a symbolic link in the user's home directory.
link_home () {
    local real=$1
    local link_name=$2
    local link_path=$HOME/$link_name
    local backup_dir=$HOME/dotfiles-backup

    if [[ -e $link_path ]]; then
        [[ ! -d $backup_dir ]] && mkdir $backup_dir
        echo "WARN: Backing up $link_path to $backup_dir" >&2
        mv $link_path $backup_dir/$link_name
    fi

    ln -s $real $link_path
}

root=`dirname $(abspath $0)`

link_home $root/bin              bin
link_home $root/config/bundler   .bundle
link_home $root/config/gemrc     .gemrc
link_home $root/config/gitconfig .gitconfig
link_home $root/config/gitignore .gitignore
link_home $root/config/pryrc     .pryrc
link_home $root/zsh/zshrc        .zshrc
