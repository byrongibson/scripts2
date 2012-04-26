#!/usr/bin/env

args=$@

#rename 's/.htm/.json/g' *.htm
#rename 's/${args[0]}/${args[1]}/g' ${args[2]} 
#rename 's/$0/$1/g' $2 
mmv "$0" "$1"
#mmv -r "$0" "$1" #rename directories


# mmv Examples
# To change extensions of all files in the current directory from .jpeg  to .jpg, use:

#mmv "*.jpeg" "#1.jpg"

# Notice, how in the above example, the match for a * wildcard in the first argument 
# (source/from pattern) gets used in the second argument (destination/to pattern) via #1.

# Similarly, if we have more than one wildcard, the match for the second wildcard can 
# be used in the destination pattern with #2, and so on. For example, the following 
# command will insert an underscore after the first occurrence of the word page in 
# filenames with extensions starting with htm:

#mmv "*page*.htm*" "#1page_#2.htm#3"

# More here:
# http://linux.dsplabs.com.au/mmv-copy-append-link-move-multiple-files-under-linux-shell-bash-by-wildcard-patterns-p5/
