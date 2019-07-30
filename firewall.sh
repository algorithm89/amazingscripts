




#!/bin/bash


forip="/etc/sysctl.d/99-sysctl.conf"

ifconfig

read -p "Enter the interface to be placed in the Internal Zone: " var1
read -p "Enter the public interface here: " var2

sudo echo "net.ipv4.ip_forward = 1" >> ${forip}
sysctl -p
sudo firewall-cmd --list-all --zone=public

sudo firewall-cmd --remove-interface=$var1 --zone=public   --permanent
sudo firewall-cmd --add-interface=$var1    --zone=internal --permanent

sudo firewall-cmd --add-port=53/tcp --zone=internal --permanent
sudo firewall-cmd --add-port=53/udp --zone=internal --permanent


sudo firewall-cmd --direct --add-rule ipv4 nat POSTROUTING 0 -o $var2 -j MASQUERADE

sudo firewall-cmd --direct --add-rule ipv4 filter FORWARD 0 -i $var1 -o $var2 -j ACCEPT
sudo firewall-cmd --direct --add-rule ipv4 filter FORWARD 0 -i $var2 -o $var1 -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo firewall-cmd --reload



chgrp named -R /var/named
chown -v root:named /etc/named.conf
restorecon -rv /var/named
restorecon /etc/named.conf
