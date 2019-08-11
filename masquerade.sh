#!/bin/bash



sudo firewall-cmd --direct --add-rule ipv4 nat POSTROUTING 0 -o enp0s3 -j MASQUERADE

sudo firewall-cmd --direct --add-rule ipv4 filter FORWARD 0 -i enp0s8 -o enp0s3 -j ACCEPT
sudo firewall-cmd --direct --add-rule ipv4 filter FORWARD 0 -i enp0s3 -o enp0s8 -m state --state RELATED,ESTABLISHED -j ACCEPT
