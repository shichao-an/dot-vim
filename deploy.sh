#!/bin/bash

# Deploy .vimrc, .vim and download bundles using git clone

git submodule update --init --recursive
echo 'Copying .vim directory to $HOME...'
cp .vimrc $HOME
cp -a .vim $HOME
echo 'Please copy .vimrc or .vimrc-osx to $HOME.'
