#!/usr/bin/env bash

# Tmux trunk
cd /usr/local/src
svn co https://tmux.svn.sourceforge.net/svnroot/tmux/trunk tmux
apt-get install libevent-dev libncurses5-dev
cd tmux && sh autogen.sh && ./configure --prefix=/usr/local && make && make install
