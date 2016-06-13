#!/bin/bash
##Test
LIC=`cat /var/license/lic.txt`
rm -rf /var/license/file/*
#yum install wget -y >> /var/log/test.log
#yum install at -y >> /var/log/test.log
wget -P /var/license/file/ http://10.254.254.152/$LIC | grep "GOD"
RST=`cat /var/license/file/$LIC`
at -f /var/license/update.sh now + 7 day
if [ $RST == "licensed" ] ; then
echo "***" > /etc/motd
echo "Licensed server" > /etc/motd
echo "Licensed server."

elif [ $RST == "renew" ] ; then
echo "***" > /etc/motd
echo "Your license will expire soon . Please contact to IPtechnics" >> /etc/motd
echo "Your license will expire soon . Please contact to IPtechnics"

else 
reboot
fi

