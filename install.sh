#!/bin/sh

if [[ "$0" != "./install.sh" ]]; then
    echo 'FAIL: This script must be run directly from the environment project root.'
    exit 1
fi

link_home () {
    real=$1
    link_name=$2
    link_path=$HOME/$link_name

    if [[ ! -e $link_path ]]; then
        ln -s $real $link_path
    else
        echo "WARN: Skipping linking $link_name because $link_path already exists"
    fi
}

os=$(uname -s)
root=$PWD

link_home $root/bin              bin
link_home $root/config/gemrc     .gemrc
link_home $root/config/gitconfig .gitconfig
link_home $root/config/gitignore .gitignore
link_home $root/config/pryrc     .pryrc
link_home $root/zsh/zshrc        .zshrc
