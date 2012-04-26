#!/usr/bin/env bash

# tips from http://lesswatts.org/
# see info power-check
# run with sudo

# Install power utilities
apt-get install powertop ethtool

# Power-aware SMP scheduler
echo 1 > /sys/devices/system/cpu/sched_mc_power_savings

# Enable powersave mode
echo powersave > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# Enable laptop mode
echo 5 > /proc/sys/vm/laptop_mode

# Increase writeback interval
echo 1500 > /proc/sys/vm/dirty_writeback_centisecs

# Disable Wake-On-LAN
ethtool -s eth0 wol d

# Set screen turnoff after idle for 0 0 300 (300sec/5min)
xset +dpms
xset dpms 0 0 300

# Enable sound HDA powersave mode
echo 10 > /sys/module/snd_hda_intel/parameters/power_save

# Disable atime kernel module, replace with relatime  :
mount -o remount,noatime    /
mount -o remount,relatime   /

# Another option is to use the nodiratime option instead of noatime or relatime. nodiratime will not update the atime field on directory inodes. This allows you to continue to update file access on read, for programs which require it, but prevents updates for just reading a directory, such as with ls.
# mount -o remount,nodiratime /

# To put the disk into the most aggressive power savings mode after 60 seconds of idle time, you would use:
#hdparm -B 1 -S 12 /dev/sda

# disable CD/DVD drive polling (no CD/DVD on this machine)
#hal-disable-polling --device /dev/scd0

# Set eth0 speed to 100, from 1000 (this maybe better used in a cron job or specific script
#ethtool -s eth0 autoneg off speed 100
# Set eth0 back to default
#ethtool -s eth0 autoneg on speed 1000


