#!/bin/bash
sudo apt update
sudo apt install make gcc ppp ppp-dev iptables wireshark
git clone https://github.com/dfskoll/rp-pppoe.git
cd rp-pppoe && cd src && sudo ./configure –enable-plugin && sudo make && sudo make install
touch /usr/local/sbin/rp-pppoe-server.sh
echo '#!/bin/bash' >> /usr/local/sbin/rp-pppoe-server.sh
echo 'modprobe pppoe' >> /usr/local/sbin/rp-pppoe-server.sh
echo '/usr/sbin/pppoe-server -k -C Server -I eth0' >> /usr/local/sbin/rp-pppoe-server.sh
echo 'echo "THE PID OF THIS SCRIPT TO KILL LATER IS BELOW, THE FIRST LINE SECOND SEQUENCE OF NUMBERS, PROBABLY 2903, USE kill 2903 (if its 2903) TO FINISH LATER" ' >> /usr/local/sbin/rp-pppoe-server.sh
echo 'ps -ef | grep rp-pppoe-server.sh' >> /usr/local/sbin/rp-pppoe-server.sh
sudo chmod a+x /usr/local/sbin/rp-pppoe-server.sh
sudo wireshark -i eth0 -k -S
