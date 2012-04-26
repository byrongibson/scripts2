#!/usr/bin/env bash
# installation script for new Ubuntu installs
# very incomplete



#1.  Repo's:
#Vim
#Git git-svn
#Chrome
#Chromium daily stable ppa
#Opera
#Firefox 4 ppa
#Gnome-Do
#Guake

#deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen


# Some useful things
#apt-get install fortune ack-grep

# Update time hourly - useful for VMs that may be paused
#ln -s /usr/sbin/ntpdate-debian /etc/cron.hourly/

# Latest weechat (0.3.6-dev)
#add-apt-repository ppa:nesthib/weechat && apt-get update && apt-get dist-upgrade && apt-get install weechat

# Git config
git config --global user.name "Byron Gibson"
git config --global user.email "fbg111@gmail.com"

# Latest git (1.7.6)

#add-apt-repository ppa:git-core/ppa && apt-get update && apt-get dist-upgrade

# Vim 7.3
#echo 'Package: *
#Pin: release a=ubuntu-backports-testers
#Pin-Priority: 300

#Package: vim*
#Pin: release a=ubuntu-backports-testers
#Pin-Priority: 500' > /etc/apt/preferences.d/ubuntu-backports-testers

#add-apt-repository ppa:ubuntu-backports-testers/ppa

#apt-get update && apt-get upgrade

# Tmux trunk
cd /usr/local/src
svn co https://tmux.svn.sourceforge.net/svnroot/tmux/trunk tmux
apt-get install libevent-dev libncurses5-dev
cd tmux && sh autogen.sh && ./configure --prefix=/usr/local && make && make install

# Common home
#mkdir -p ~/Projects && cd ~/Projects
#ssh-keygen -t rsa -C "contact@benjaminhawkeslewis.com"
# Login and add as public key (CTRL-Xe to invoke Vim as editor)
# In Vim :r ~/.ssh/id_rsa.pub
#lynx -editor=vim -accept_all_cookies https://github.com/account/ssh
#PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install HTTP::Lite'
#git clone git@github.com:benjaminhawkeslewis/home.git
#cd ~/Projects/home
#git submodule init
#git submodule update
#~/Projects/home/bin/home-symlinks


# Node
#cd /usr/local/src
#git clone git://github.com/joyent/node.git
#cd node
#git checkout v0.4.10 # Stable tag
#./configure --prefix=/usr/local && make && make install

# NPM
#curl http://npmjs.org/install.sh | sh

# Soda
#npm install soda

# Local selenium
#apt-get install xvfb firefox # Headless Firefox
#apt-get install sun-java6-jre sun-java6-bin # or some other java
#mkdir -p /usr/local/share/java
#cd /usr/local/share/java
#wget https://selenium.googlecode.com/files/selenium-server-standalone-2.5.0.jar

# Start with…
#xvfb-run java -jar selenium-server-standalone-2.5.0.jar

# Additional browsers
#apt-get install chromium-browser

# http://domino.symetrikdesign.com/2011/03/23/installing-opera-11-on-ubuntu-10-04/
apt-add-repository 'deb http://deb.opera.com/opera/ stable non-free'
wget -qO - http://deb.opera.com/archive.key | sudo apt-key add -
apt-get update && apt-get install opera
