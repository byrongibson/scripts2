#!/usr/bin/env bash

# for newly cloned virtual machine, must delete this ruleset 
# and reboot to enable networking
sudo rm /etc/udev/rules.d/70-persistent-net.rules
