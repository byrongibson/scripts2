#!/usr/bin/env bash

# wget all files of specified type from url, spoof user-agent as Mozilla 5.0 (vs wget).
# requires three cmdline arguments:
# 1) filetype extension to get all files of that type (pdf, html, etc).  Just the extension, no quotes, no period, no embellisments.
# 2) recursion max depth level.  default is 5.
# 2) url to download.  Can end in /, or .html/asp/whatever.


wget -rA.$1 --level=$2 --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" $3
