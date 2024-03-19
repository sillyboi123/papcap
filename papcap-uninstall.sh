#!/bin/bash
rm -rf /etc/ppp/plugins/
rm /etc/ppp/pppoe-server-options
rm -rf /usr/share/doc/rp-pppoe-4.0/
rm -rf /usr/sbin/pppoe-relay
rm -rf /usr/sbin/pppoe-sniff
rm -rf /usr/sbin/pppoe-server
rm -rf /usr/sbin/pppoe
rm /usr/share/man/man8/pppoe.8
rm /usr/share/man/man8/pppoe-server.8
rm /usr/share/man/man8/pppoe-sniff.8
rm /usr/share/man/man8/pppoe-relay.8
rm /usr/local/sbin/rp-pppoe-server.sh
apt remove ppp-dev
apt autoremove
