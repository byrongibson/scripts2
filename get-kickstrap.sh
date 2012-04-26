#!/usr/bin/bash

# Initializr script modified for Kickstrap.  Leaving Initializr params, maybe useful later

# ##### Initializr ##### #
# Download zip archive of HTML5 Boilerplate + Bootstrap 2.0 from Initializr.com
# Default Initializr build = css.  Specify less using -s or -style cmdline arg:
# sh get-initializr.sh -s less; sh get-initializr.sh -style less
# ##### Initializr ##### #

STYLE="css"

while getopts "s:style" optionName; do
    case "$optionName" in
        s)      STYLE="$OPTARG";;
        style)  STYLE="$OPTARG";;
    esac
done

if [ "less" = "$STYLE" ]; then # get less version
    wget 'http://ajkochanowicz.github.com/Kickstrap/assets/kickstrap.zip'
else # get css version
    wget 'http://ajkochanowicz.github.com/Kickstrap/assets/kickstrap.zip'
fi
