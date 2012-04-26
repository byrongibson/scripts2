#!/usr/bin/env

##args=0
args="$@"

if [ -n args ]; then
    if ["update" == $1]; then
        echo "yes"
    else 
        echo "no"
    fi
fi
