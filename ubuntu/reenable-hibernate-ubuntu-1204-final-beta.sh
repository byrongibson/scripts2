#!/bin/sh

# Ubuntu 12.04 final beta (and release?) disables Hibernate by default.
# To enable it, first test that it works at the commandline:
#
# $> sudo pm-hibernate
#
# then turn back on.  If everything works ok, permanently enable hibernate:
# http://www.ubuntuvibes.com/2012/04/hibernation-disabled-by-default-in.html
# http://askubuntu.com/questions/94754/how-to-modify-policykit-to-allow-hibernation-in-upower 

if [ ! -e /etc/polkit-1/localauthority/50-local.d/com.ubuntu.desktop.pkla ]; then
    cp ~/bin/scripts/ubuntu/reenable-hibernate-ubuntu-1204-final-beta.txt /etc/polkit-1/localauthority/50-local.d/com.ubuntu.desktop.pkla
else
    cat ~/bin/scripts/ubuntu/reenable-hibernate-ubuntu-1204-final-beta.txt >> /etc/polkit-1/localauthority/50-local.d/com.ubuntu.desktop.pkla
fi

# alternatively:
# http://askubuntu.com/questions/94754/how-to-modify-policykit-to-allow-hibernation-in-upower
