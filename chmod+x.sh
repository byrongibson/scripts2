#!/usr/bin/env

args="$@"

for arg in $args
do 
    sudo chmod +x "$arg"
done
