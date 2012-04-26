#!/usr/bin/env bash
wget --no-check-certificate http://apache.cs.utah.edu//ant/binaries/apache-ant-1.8.2-bin.tar.gz -O - | tar xvz
wget --no-check-certificate http://www.apache.org/dist/ant/binaries/apache-ant-1.8.2-bin.tar.gz.asc 
wget --no-check-certificate http://www.apache.org/dist/ant/binaries/apache-ant-1.8.2-bin.tar.gz.sha1 
wget --no-check-certificate http://www.apache.org/dist/ant/binaries/apache-ant-1.8.2-bin.tar.gz.sha512 
wget --no-check-certificate http://www.apache.org/dist/ant/binaries/apache-ant-1.8.2-bin.tar.gz.md5

