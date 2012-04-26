#!/usr/bin/env bash

wget --no-check-certificate http://www.apache.org/dyn/closer.cgi/maven/binaries/apache-maven-3.0.4-bin.tar.gz -O - | tar xvz
wget --no-check-certificate http://www.apache.org/dist/maven/binaries/apache-maven-3.0.4-bin.tar.gz.md5
wget --no-check-certificate http://www.apache.org/dist/maven/binaries/apache-maven-3.0.4-bin.tar.gz.asc
