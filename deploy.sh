#!/usr/bin/env bash

# Deploy .vimrc, .vim and download bundles using git clone

git submodule update --init --recursive
cp .vimrc "$HOME"
rsync -avz -I .vim "$HOME"
