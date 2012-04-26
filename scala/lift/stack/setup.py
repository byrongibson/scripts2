#!/usr/bin/env python 

# [PSEUDOCODE]
# MSG:  Welcome to the Lift Stack installer.  This installer can download and configure 
# all required elements of the Lift Stack.  The current stable configuration is listed 
# below, but Lift Stack will default to any preinstalled Java or Scala it finds in $PATH.
# You can change the defaults and the installer will download and setup any element it 
# needs (Java, Scala, framework, utilities).  You can also change the default install
# locations as well.

# [stable config] list 

# [installation configuration] 
# Enter the item number to change the default version and/or installation location, 
# 0 to accept the configuration and install, or q to quit the installer.
#
# 1.   If Java Detected: 
#           Detected Java version ... at /path/to/jvm.  
#           if recommended version:
#               This is the recommended version of Java for current stable Lift Stack.
#               No change is recommended.
#           else
#               Lift Stack will use this JVM by default, or you can instruct the Lift Stack 
#               installer to download and install another version.  Lift Stack recommends
#               Java version ...  Enter 1 to change Java version.
#
# 2.    If Scala Detected:
#           Detected Scala version ... at /path/to/scala.
#           if recommended version:
#               This is the recommended version of Scala for current stable Lift Stack.
#               No change is recommended.
#           else
#               Lift Stack will use this Scala by default, or you can instruct the Lift Stack 
#               installer to download and install another version.  Lift Stack recommends
#               Scala version ...  Enter 2 to change Scala version.
#       
# 3.    Simple Build Tool (SBT)
#       Recommended version:  ...
#       Install version:  ...
#       Install path:  ~/bin/lift/stack/xsbt
#
# 4.    Lifty (a Lift REPL)
#       Recommended version:  ...
#       Install version:  ...
#       Install path:  ~/bin/lift/stack/lifty
#
# 5.    Lift Framework
#       Recommeded version (stable):  ...
#       Install version:  ...
#       Install path:  ...
#       


# check if java and scala are installed, get them if not.
#   if getting them:
#       ask for preferred java version.  recommend the default.
#       ask for preferred scala version.  recommend the default.
#       ask for preferred java install directory.  recommend the default /opt/java.
#           show full install directory.  1 to accept, 2 to edit, 3 to quit.
#       ask for preferred scala install directory.  recommend default /opt/scala.
#           show full isntall directory.  1 to accept, 2 to edit, 3 to quit.
# ask for preferred lift stack install directory.  default to ~/bin/lift/stack
#   show full install directory.  1 to accept, 2 to edit, 3 to quit.
# ask for preferred lift version, recommend the default current stable version
# ask for preferred sbt version, recommend the default current stable version
# ask for preferred lifty version, recommend the default current stable version
# show final installation params.  1 to install, 2 to edit, 3 to quit
# cd lift/stack/temp
# download java, scala, lift, sbt, lifty
# install, setup.  link lifty to lift. 
# add to path
# completion msg:  Welcome to Lift.  


# [DATA STRUCTURES]
# recommended dictionary, name|version|install path, immutable
# install dictionary, intialized to recommended, mutable
# element download locations


# [PROGRAM] 
# this script assumes you already have Java and Scala installed and on your path

# test if target dir exists

# if not, create working dir
mkdir ~/bin/lift-stack
cd ~/bin/lift-stack

# get sbt launcher
wget http://typesafe.artifactoryonline.com/typesafe/ivy-releases/org.scala-tools.sbt/sbt-launch/0.11.2/sbt-launch.jar
# create sbt script
echo "java -Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=384M -jar `dirname $0`/sbt-launch.jar \"$@\"" > sbt


