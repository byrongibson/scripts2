#!/usr/bin/env

## download the entire site at url.
## url passed as first command line argument.
## ignore parent directories and files, 
## append -i or --continue to url to continue from a failed attempt.
## use httrack --update to update a mirror


args="$@"

httrack $args -k -o -x -F "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.7 (KHTML, like Gecko) Ubuntu/11.10 Chromium/16.0.912.77" 
