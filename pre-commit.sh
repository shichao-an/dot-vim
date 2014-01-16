#!/bin/bash


rsync -r ~/.vim .
rsync ~/.vimrc .
git add .
