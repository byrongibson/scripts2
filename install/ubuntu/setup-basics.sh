#!/usr/bin/env bash

sudo apt-get install aptitude htop tmux

# mv screen-keys.conf to /etc/tmux.conf
sudo mv /usr/share/doc/tmux/examples/screen-keys.conf /etc/tmux.conf
# edit line 29 to delete the incomplete 'bind c' line
