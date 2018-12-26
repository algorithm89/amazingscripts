



#!/bin/bash



firewall-cmd --direct --add-rule ipv4 nat POSTROUTING 0 -o br-ex -j MASQUERADE

firewall-cmd --direct --add-rule ipv4 filter FORWARD 0 -i enp0s8 -o br-ex -j ACCEPT
firewall-cmd --direct --add-rule ipv4 filter FORWARD 0 -i br-ex -o enp0s8 -m state --state RELATED,ESTABLISHED -j ACCEPT
