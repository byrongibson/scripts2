#!/usr/bin/env bash

# -vv: max verbosity
# -f : fragment packets
# -A : OS & version detection + traceroute
# -D : cloak a scan with decoys
# -PN: treat all hosts as online, skip host discovery
# -S : cloak IP
# --data-length : append random data to sent packets
# --spoof-mac
# --badsum
# --reason : display reason a port is in a particular state

args="$@"

#sudo nmap -vv -f -A -PN -p1-65535 --data-length --spoof-mac --reason $args 
sudo nmap -vvfAPNSD -p1-65535 --data-length --spoof-mac --reason $args 
