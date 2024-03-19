#!/bin/bash
apt update
apt install make gcc ppp ppp-dev iptables wireshark
git clone https://github.com/dfskoll/rp-pppoe.git
cd rp-pppoe && cd src && ./configure --enable-plugin
echo 'You will need to type "cd rp-pppoe" press enter, "cd src" press enter, "make" press enter and "make install" press enter as root to install the rp-pppoe'
touch /usr/local/sbin/rp-pppoe-server.sh
echo '#!/bin/bash' >> /usr/local/sbin/rp-pppoe-server.sh
echo 'modprobe pppoe' >> /usr/local/sbin/rp-pppoe-server.sh
echo '/usr/sbin/pppoe-server -k -C Server -I eth0' >> /usr/local/sbin/rp-pppoe-server.sh
echo 'echo "THE PID OF THIS SCRIPT TO KILL LATER IS BELOW, BEFORE DOING THIS MAKE SURE THAT YOU TURNED OFF THE ROUTER, THE FIRST LINE SECOND SEQUENCE OF NUMBERS BEFORE "/usr/local/sbin/rp-pppoe-server.sh" STARTING FROM THE LEFT TO THAT PATH, USE kill PIDNUMBER TO FINISH" ' >> /usr/local/sbin/rp-pppoe-server.sh
echo 'ps -ef | grep rp-pppoe-server.sh' >> /usr/local/sbin/rp-pppoe-server.sh
chmod a+x /usr/local/sbin/rp-pppoe-server.sh
echo 'BEFORE STARTING THE SERVER MAKE SURE THAT THE ROUTER IS OFF AND CONNECT THE CABLE LEAVING YOUR ETH0 PORT AND CONNECT TO THE WAN PORT OF ROUTER, NOW OPEN WIRESHARK AS ROOT USING wireshark -i eth0 -k -S , THEN START THE SERVER USING /usr/local/sbin/rp-pppoe-server.sh , GO BACK TO THE WIRESHARK AND USING THE FILTER TOOLBAR SELECT THE "pap" FILTER AND START CAPTURING PAP PACKETS'
