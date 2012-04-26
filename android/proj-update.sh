#!/usr/bin/env

EXPECTED_ARGS_OPTIONAL=3
EXPECTED_ARGS_REQUIRED=2 
ERROR_ARGS=65 
BASE_PATH="~/bin/Google/Android/sdk/projects/"

# set android_sdk location from env var if available, otherwise hard code for now.  parameterize later.
# http://fixunix.com/questions/15902-bash-checking-if-env-var-set.html
if [ -n "${ANDROID_SDK:+x}" ]; then 
    BASE_PATH=$ANDROID_SDK"projects/"
fi

##if [ $# -ne $EXPECTED_ARGS_OPTIONAL || $# -ne $EXPECTED_ARGS_REQUIRED ]
if [ $# -eq $EXPECTED_ARGS_OPTIONAL ]; then
    ##echo $2 $3 $4 $5 $6 
    tools/android create project \
    --target $1 \
    --name $2 \
    --path $BASE_PATH$3 \
elif [ $# -eq $EXPECTED_ARGS_REQUIRED ]; then
    ##echo $1 $2 $3 $4 
    tools/android create project \
    --target $1 \
    --path $BASE_PATH$2 \
else
    echo ""
    echo "Wrong number of args.  Four args are required, five optional."
    echo "four args:  --target \$1 --path \$2 --activity \$3 --package \$4"
    echo "five args:  --target \$1 --name \$2 --path \$3 --activity \$4 --package \$5" \n
    echo ""
    echo "--target is the build target for your application. It corresponds to an \
Android platform library (including any add-ons, such as Google APIs) \
that you would like to build your project against. To see a list of \
available targets and their corresponding IDs, execute: android list \
targets.  Generally, target should be 1 (Android 2.1) or 2 (Android 2.1 with \
Google APIs).  "
    echo ""
    echo "--name is the name for your project. This is optional. If provided, this \
name will be used for your .apk filename when you build your application."
    echo ""
    echo "--path is the location of your project directory. If the directory does \
not exist, it will be created for you.  This script automatically appends \
your specified path to ~/bin/Google/Android/sdk/projects/"
    echo ""
    echo "--activity is the name for your default Activity class. This class file \
will be created for you inside \
<path_to_your_project>/src/<your_package_namespace_path>/. This will also \
be used for your .apk filename unless you provide a name."
    echo ""
    echo "--package is the package namespace for your project, following the same \
rules as for packages in the Java programming language."
    echo ""
    echo "additional info: \
http://developer.android.com/guide/developing/projects/projects-cmdline.html"
    echo ""
    echo "example:"
    echo "android create project \\"
    echo "--target 1 \\"
    echo "--name MyAndroidApp \\"
    echo "--path ./MyAndroidAppProject \\"
    echo "--activity MyAndroidAppActivity \\"
    echo "--package com.example.myandroid"
    ##exit $ERROR_ARGS
fi

echo ""
echo "Debug Output"
echo "args: " $#
echo "EXPECTED_ARGS_OPTIONAL: " $EXPECTED_ARGS_OPTIONAL
echo "EXPECTED_ARGS_REQUIRED: " $EXPECTED_ARGS_REQUIRED
echo "BASE_PATH: " $BASE_PATH
