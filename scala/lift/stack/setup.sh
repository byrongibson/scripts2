#!/usr/bin/env python 

########################################################################################
# TODO
# 1.  Choose container, jetty or netty
# 2.  Choose db: nothing, postgresql, mongodb [,redis, mysql]
#
########################################################################################
# This script automates Lift framework and project setup.  It is intended to be run on 
# a new server installation.  It downloads and configs sbt and sbt-extras, and adds
# the lifty plugin to sbt.
# 
# sbt:          http://github.com/harrah/xsbt  
# sbt-extras:   http://github.com/paulp/sbt-extras 
# lifty:        http://github.com/Lifty/lifty  
#
########################################################################################
#
# REQUIREMENTS
# 1.  Java: 1.5 or higher, installed and in your path
# 2.  Scala: sbt will install 
# 3.  $HOME/bin is the default install dir for the sbt command, so it must be in your path
#   use from any location on the commandline.
#
########################################################################################
#
# SETUP VARIABLES 
BIN_DIR="$HOME/bin"
LS_DIR="${BIN_DIR}/lift/stack"
LIFTY_VER="1.7.4"
SBT_VER="0.12"                                              # 0.11.2 || master || etc.
SBT_DIR="$HOME/.sbt"
SBT_JAR="sbt-launch"
SBT_JAR_EXT="jar"
SBT_JAR_VER_EXT="${SBT_JAR}-${SBT_VER}.${SBT_JAR_EXT}"
SBT_XTR_ZIP="sbt-extras.tar.gz"
SBT_XTR_PATH="${BIN_DIR}/${SBT_XTR_ZIP}"
#
########################################################################################


# test if working dirs exists, if not create it
[ -d "$BIN_DIR" ] || mkdir -p $BIN_DIR 
[ -d "$SBT_DIR/plugins" ] || mkdir -p $SBT_DIR/plugins
[ -d "$LS_DIR" ] || mkdir -p $LS_DIR 
# test if $BIN_DIR in path, if not add it.

# add lifty plugin to sbt plugins
echo "resolvers += Resolver.url(\"sbt-plugin-releases\", new URL(\"http://scalasbt.artifactoryonline.com/scalasbt/sbt-plugin-releases/\"))(Resolver.ivyStylePatterns)" >> $SBT_DIR/plugins/build.sbt
echo "addSbtPlugin(\"org.lifty\" % \"lifty\" % \"${LIFTY_VER}\")" >> $SBT_DIR/plugins/build.sbt
echo "seq( Lifty.liftySettings : _*)" >> $SBT_DIR/build.sbt

# get sbt launcher
#wget http://typesafe.artifactoryonline.com/typesafe/ivy-releases/org.scala-tools.sbt/sbt-launch/$SBT_VER/$SBT_JAR.$SBT_JAR_EXT -O ${SBT_JAR}.${SBT_JAR_EXT}
wget https://github.com/harrah/xsbt/zipball/$SBT_VER -O $BIN_DIR/${SBT_JAR}.${SBT_JAR_EXT}

# get sbt-extras script
#wget https://github.com/paulp/sbt-extras/tarball/master -O- | tar xz --strip-components=1 -O | grep sbt > $BIN_DIR/sbt
wget https://raw.github.com/paulp/sbt-extras/master/sbt -O $BIN_DIR/sbt

# make sbt writeable
echo "Running chmod u+x on ${BIN_DIR}/sbt, please enter your password for sudo:  "
sudo chmod u+x $BIN_DIR/sbt


