#!/usr/bin/env bash

# This script reformats Banshee playlists for mpd.  All that must be done is to replace
# the relative path to the music library with the full path from /.

# find *.m3u, replace ../ with ~/, save to ./new
[ -d ./new ] || mkdir new
find . -iname *$0* -exec mv '{}' ./new
