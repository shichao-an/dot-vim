#!/bin/bash

# Sync files from ~/.vim and ~/.vimrc before every commit
rsync -r ~/.vim .
rsync ~/.vimrc .
git add .
