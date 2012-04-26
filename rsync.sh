#!/usr/bin/env bash

# example argv:  kurtosis@192.168.1.21:/home/kurtosis/Documents/Rainbow/* .

argv="$@"

# original: http://everythinglinux.org/rsync/
#rsync --verbose  --progress --stats --compress --rsh=/usr/local/bin/ssh \
#      --recursive --times --perms --links --delete \
#      --exclude "*bak" --exclude "*~" \
#      /www/* webserver:simple_path_name

rsync --verbose  --progress --stats --compress \
      --recursive --times --perms --links \
      --exclude "*bak" --exclude "*~*" \
      $argv
