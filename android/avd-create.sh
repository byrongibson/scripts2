#!/usr/bin/env

EXPECTED_ARGS_REQUIRED=2 


if [ $# -eq $EXPECTED_ARGS_REQUIRED ]; then
    android create avd \
    \-n $1 \
    \-t $2 \
    \-p $HOME/bin/Google/Android/sdk/avd/ \
    --force    
else
    echo ""
    echo "Wrong number of args.  Two args are required, additional are not yet supported."
    echo "four args:  -n \$1 -t \$2"
    echo ""
    echo "--name is the name for your project. This is optional. If provided, this \
name will be used for your .apk filename when you build your application."
    echo ""
    echo "--target is the build target for your application. It corresponds to an \
Android platform library (including any add-ons, such as Google APIs) \
that you would like to build your project against. To see a list of \
available targets and their corresponding IDs, execute: android list \
targets.  Generally, target should be 1 (Android 2.1) or 2 (Android 2.1 with \
Google APIs).  "
    echo ""
    echo "More info creating AVDs:  http://developer.android.com/guide/developing/devices/managing-avds-cmdline.html"
fi
#[-<option> <value>] ... 

echo ""
echo "Debug Output"
echo "args: " $#
echo "EXPECTED_ARGS_REQUIRED: " $EXPECTED_ARGS_REQUIRED
