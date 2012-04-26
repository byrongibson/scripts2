#!/usr/bin/env bash

# how to check CPU power governors, etc.  via http://lesswatts.org/

# For current kernels. you can find information on what is running on your system by looking at the files in this directory.
# If this directory is not present, there is a good chance that your kernel does not have the CPUFREQ feature enabled.
ls -al --color=auto /sys/devices/system/cpu/cpu0/cpufreq

# List available governors:
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors

# Show what governor is currently active:
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# Change the currently running governor by echoing one of the available governors to the scaling_governor file node:
# Run from install-power.sh, not here.  Commands below only for demo purposes 
#echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
#echo powersave > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# Some hard disks support disk power management. You can use the hdparm program to check whether your disk supports this feature.
hdparm -i /dev/sda

# If your hard drive supports AdvancedPM, you can use hdparm to tell the disk to go into power savings mode after an elapsed period of idle time. The relevant options for hdparm are:
# -B   set Advanced Power Management setting (1-255)
# -S   set standby (spindown) timeout
# -y   put IDE drive in standby mode
# -Y   put IDE drive to sleep
# -Z   disable Seagate auto-powersaving mode
# To put the disk into the most aggressive power savings mode after 60 seconds of idle time, you would use:
#hdparm -B 1 -S 12 /dev/sda
# call from install-power.sh, not here
# man hdparm

# Check the current value of the VM Writeback Time (default is 500, 
# but with reliable power supply (battery), longer intervals are safe.
# Change to 1500 (15sec) or higher:
cat /proc/sys/vm/dirty_writeback_centisecs

# Laptop mode? (0=disabled, 5=enabled)
cat /proc/sys/vm/laptop_mode

# Using Wake-On-LAN? Using gigabit ethernet?
ethtool eth0

# Check if any secondary display outputs are operating
xrandr
# Disable extras with 
#xrandr --output HDMI1 --off

# To see if power save is enabled for the HDA controllers, you can use this command (0=disabled, >0=enabled):
cat /sys/module/snd_hda_intel/parameters/power_save

