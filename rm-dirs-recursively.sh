#!/bin/sh

# $1 is the directory name to search and delete

rm -rf `find . -type d -name $1`
