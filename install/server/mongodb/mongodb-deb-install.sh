#!/usr/bin/env bash
#http://www.mongodb.org/display/DOCS/Ubuntu+and+Debian+packages

echo '' | sudo tee -a /etc/apt/sources.list
echo '#MongoDB current stable dist' | sudo tee -a /etc/apt/sources.list
echo '#http://www.mongodb.org/display/DOCS/Ubuntu+and+Debian+packages' | sudo tee -a /etc/apt/sources.list
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee -a /etc/apt/sources.list

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
sudo apt-get update && sudo apt-get install mongodb-10gen
