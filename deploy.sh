#!/bin/bash

# Deploy .vimrc and download bundles using git clone

BUNDLE_FILE="$PWD/bundle.txt"
DOT_VIM_DIR="$HOME/.vim"

cp .vimrc $HOME
mkdir "$DOT_VIM_DIR"
rsync -avz .vim/ftplugin "$DOT_VIM_DIR"
rsync -avz .vim/autoload "$DOT_VIM_DIR"
mkdir "$DOT_VIM_DIR/bundle"

# Read Git repository URLs from bundle.txt
cd "$DOT_VIM_DIR/bundle" 
while read url 
do
    git clone $url
done < $BUNDLE_FILE 
