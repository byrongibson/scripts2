#!/usr/bin/env bash

# Less installed via npm:  npm install less
# npm and node installed via PPA:  ppa:chris-lea/node.js
#
# http://lesscss.org/
# Command-line usage
# Less comes with a binary, which lets you invoke the compiler from the command-line, as such:
#
# $ lessc styles.less
# This will output the compiled CSS to stdout, you may then redirect it to a file of your choice:
#
# $ lessc styles.less > styles.css
# To output minified CSS, simply pass the -x option.

lessc $1 $2 > $3

# $1 = options (-x for minified css)
# $2 = .less input file
# $3 = .css output file
