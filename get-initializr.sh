#!/usr/bin/bash

# Download zip archive of HTML5 Boilerplate + Bootstrap 2.0 from Initializr.com
# Default Initializr build = css.  Specify less using -s or -style cmdline arg:
# sh get-initializr.sh -s less; sh get-initializr.sh -style less
STYLE="css"

while getopts "s:style" optionName; do
    case "$optionName" in
        s)      STYLE="$OPTARG";;
        style)  STYLE="$OPTARG";;
    esac
done

if [ "less" = "$STYLE" ]; then # get less version
    wget 'http://www.initializr.com/builder?mode=less&boot-hero&h5bp-htaccess&h5bp-nginx&h5bp-webconfig&h5bp-chromeframe&h5bp-analytics&h5bp-build&h5bp-iecond&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-404&h5bp-adobecrossdomain&jquery&modernizrrespond&boot-css&boot-scripts' -O initializr-less.zip
else # get css version
    wget 'http://www.initializr.com/builder?boot-hero&h5bp-htaccess&h5bp-nginx&h5bp-webconfig&h5bp-chromeframe&h5bp-analytics&h5bp-build&h5bp-iecond&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-404&h5bp-adobecrossdomain&jquery&modernizrrespond&boot-css&boot-scripts' -O initializr-css.zip
fi
