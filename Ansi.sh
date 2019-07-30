#!/bin/bash


var2='sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp'
var3='sudo firewall-cmd --zone=public --permanent --add-port=9990/tcp'
var4='sudo firewall-cmd --reload'
var8='sudo firewall-cmd --list-all'

var5='sudo yum install java-1.8.0-openjdk-devel'
var6='java -version'
var9='sudo alternatives --config java'

var7='wget http://download.jboss.org/wildfly/15.0.0.Final/wildfly-15.0.0.Final.tar.gz'
var8='sudo sudo mv wildfly* /opt/'
var88='cd /opt/'
var89='sudo tar -xvf wildfly*'

var90='echo "JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.191.b12-1.el7_6.x86_64" > ~/.bashrc '
var91='echo "PATH=$JAVA_HOME/bin:$PATH"'

options=(
    "1.Add Firewall rules in FirewallD"
    "2.Install Open Jdk "
    "3.Check Java Version & Configure Default java"
    "4.Install WildFly"
    "5.Extract Wildfly"
    "6.Install Ansbible"
    "7.Configure JAVA VARIABLES"
    "8.QUIT"

)

select option in "${options[@]}"; do
    case "$REPLY" in
        1)$var2
          $var3
          $var4
          $var8

                ;;


        2)$var5

                ;;

        3)$var6
          $var9

                ;;
        4)$var7

                ;;

        5) $var8
           $var88
           $var89
;;
        6) sudo yum install epel-release
           sudo yum install ansible
           ansible --version

 ;;
        7)echo "JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.191.b12-1.el7_6.x86_64" >> ~/.bashrc
          echo "PATH=$JAVA_HOME/bin:$PATH" >> ~/.bashrc
          source ~/.bashrc
;;




8)break ;;


esac
done