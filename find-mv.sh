#!/usr/bin/env bash

# find files with a specified string in their name (case-insensitive) and move to the current directory

find . -iname *$0* -exec mv '{}' . 
