#!/usr/bin/env bash

# reset all java alternatives if install/config problems.
# run with sudo

update-alternatives --remove-all java 
update-alternatives --remove-all javac 
update-alternatives --remove-all javaws 
update-alternatives --remove-all jar 
update-alternatives --remove-all jexec 
update-alternatives --remove-all keytool 
update-alternatives --remove-all keytool.1.gz 
update-alternatives --remove-all orbd 
update-alternatives --remove-all orbd.1.gz 
update-alternatives --remove-all pack200 
update-alternatives --remove-all pack200.1.gz 
update-alternatives --remove-all policytool 
update-alternatives --remove-all policytool.1.gz 
update-alternatives --remove-all rmid 
update-alternatives --remove-all rmid.1.gz 
update-alternatives --remove-all rmiregistry 
update-alternatives --remove-all rmiregistry.1.gz 
update-alternatives --remove-all servertool 
update-alternatives --remove-all servertool.1.gz 
update-alternatives --remove-all tnameserv 
update-alternatives --remove-all tnameserv.1.gz 
update-alternatives --remove-all unpack200 
update-alternatives --remove-all unpack200.1.gz 
