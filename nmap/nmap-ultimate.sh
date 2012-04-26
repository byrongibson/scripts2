#!/usr/bin/env

# http://richrines.com/post/10886870567/ultimate-nmap-scan

sudo nmap --spoof-mac Cisco --data-length 9 \ -f -D 172.168.200.200,RND:5,ME -v -n -O -sS -sV \ -oA /home/rich/metasploit/172.168.1.1 --log-errors \ -append-output -p T:1-1024,1433,2222,2249,7778,8080,9999 \ --randomize-hosts 192.178.1.1 172.168.1.2

# Important always run nmap as the root user, running nmap as anything other than the super user with not actually allow you to run a stealth scan on a tcp system because of the layer of abstraction between the regular user and the interface. Also, port scanning is legal in the US, however some of these techniques would be considered intrusive (nearly all of the “aggressive mode” features) so as with all pentesting related things don’t be stupid and only scan what you have permission to scan.
#
# Now for a flag by flag break down:
#
# —spoof-mac Cisco: Spoof your mac address, other valid options would be a complete mac address, 0 for a completely random mac, a vendor’s OUI prefix, or another vendor name
# 
# —data-length 9: Appends 9 random bytes to most of the packets it sends
# 
# -f: Fragment packets
# 
# -D 192.168.200.200,RND:5,ME: Causes decoy scans to run simultaneously with your actual scan to help ids evasion and cause far more traffic in system logs
# 
# -v: Increases the verbosity of the output, you can also run -v -v to increase the verbosity to a higher level
# 
# -n: No DNS resolution
# 
# -O: Enables OS detection, less aggressive than nmap’s advanced OS detection and is usually just as good
# 
# -sS: Stealth TCP SYN scan, the most popular scan option. It is both quick and unobtrusive because it never completes any TCP connections.
# 
# -sV: Enables version detection
# 
# -oA /home/rich/metasploit/172.168.1.1: Output to all formats (normal, greppable, and XML) and where to save the information
# 
# —log-errors: Self explanatory 
# 
# -append-output: If you prefer to keep scan results in a single file and keep appending new information to it this option is perfect, if you would like to create new files for various reasons leave this flag out 
# 
# -p T:1-1024,1433,2222,2249,7778,8080,9999: Specifies which TCP ports to scan. The ports specified in list list are generally the ones that provide the most valuable information. If not interested in specifying each one a similar option is the —top-ports followed by an integer of one or greater. The integer is the N highest ratio of ports found in nmap services. Finally to specify UDP ports you would replace T: with U:
# 
# —randomize-hosts 192.178.1.1 172.168.1.2: Randomizes the target host order
# 
# Optional:
# 
# —traceroute: To trace path to host over various hops
# 
# -A: Aggressive mode, this could be used instead of -sV -O —traceroute amongst other things. Helps keep the list of flags one needs to know shorter but would be considered intrusive.
# 
# -T paranoid|sneaky|polite|agressive|insane: Various timing controls for your scans
# 
# -PN: No Ping, to determine active machines to scan more robustly later
