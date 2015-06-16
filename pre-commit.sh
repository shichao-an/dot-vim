#!/usr/bin/env bash

# Sync files from ~/.vim and ~/.vimrc before every commit
rsync -avz --exclude 'bundle' --exclude '.netrwhist' ~/.vim .
rsync ~/.vimrc .
