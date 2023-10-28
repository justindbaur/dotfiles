#!/usr/bin/env bash

# Automatically setup symlinks to the home directory 
# if the repo is clone in the right place
ln -s ./gitconfig ../.gitconfig
ls -s ./zshrc ../.zshrc
