# papcap
A Simple bash script that sets everything up to capture PPPoE PAP credentials;
# [THE INSTALLATION NEEDS ELEVATED PRIVILEGES TO WORK AS EXPECTED!]

# [PREPARING]:

RECOMMENDED O.S: Kali Live O.S (better) or any other Debian/Ubuntu based distro (optional)

Important packages that you'll need: GIT

You just need download and install the project using:

sudo su

apt update && apt install git && git clone https://github.com/sillyboi123/papcap.git && cd papcap && chmod +x papcap-install.sh && chmod +x papcap-uninstall.sh && ./papcap-install.sh

After everything being set and opened, do the following:

# [TO CAPTURE:]

Now connect the other side of your Ethernet cable connected on your computer "eth0" respective port of your NIC (Network Interface Card) to the WAN (Wide Area Network) port of the router (usually is yellow and below that port there's a "WAN" mark) that makes the pppoe-auth, execute this command as root on terminal to start the PPPoE Server:

/usr/local/sbin/rp-pppoe-server.sh

Turn the router on and watch the packet capture display on Wireshark the way you want. If you want to get the "pap" filter selected to capture "pap" packets ("pap" credentials packets), you can do this by typing "pap" using the Filter Toolbar that's over the packet capture display on Wireshark and press Enter, after this look at the captures and try to find the capture that may be the credentials;

When everything has been done (you got the credentials or something that you were wanting, i hope so), close n' save the Wireshark's packet capture session or just close it. If you poweroff your device the server won't run on the next boot until you execute the command to start the RP-PPPoE Server again (/usr/local/sbin/rp-pppoe-server.sh ), but if you wanna still using your device after finishing, just do what the server said after you started it about how to kill the PID.

That's all, folks!

# [UNINSTALL]:  

Execute the "papcap-uninstall.sh" file as root user using: sudo ./papcap-uninstall.sh


# CREDITS

[Git repos used on this project: https://github.com/dfskoll/rp-pppoe]
