#!/usr/bin/env bash

# http://www.jamesward.com/2010/10/14/install-adobe-air-on-64-bit-ubuntu-10-10/

#args="adobeair_2.6.0.19170-0-ubuntu-partner-repo-natty1_i386.deb"
#echo $args 
#nfn=${args//i386/amd64}
#echo $nfn

dpkg-deb -x $1 tmp
dpkg-deb --control $1 tmp/DEBIAN
sed -i "s/i386/all/" tmp/DEBIAN/control
dpkg -b tmp adobeair_2.6.0.19170-0-ubuntu-partner-repo-natty1_amd64.deb
