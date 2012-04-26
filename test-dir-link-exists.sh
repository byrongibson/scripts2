#!/usr/bin/env bash

# Test if a directory exists, and if it does whether it's a symlink or not
# http://stackoverflow.com/questions/59838/how-to-check-if-a-directory-exists-in-a-bash-shell-script

LINK_OR_DIR=$1

if [ -d "$LINK_OR_DIR" ]; then 
    if [ -L "$LINK_OR_DIR" ]; then
        # It is a symlink!
        # Symbolic link specific commands go here
        #rm "$LINK_OR_DIR"
        echo "It's a symlink!"
    else
        # It's a directory!
        # Directory command goes here
        #rmdir "$LINK_OR_DIR"
        echo "It's a directory!"
    fi
else
    # Does not exist
    echo "Nada!"
fi
