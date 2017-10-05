#!/bin/bash
##Beta version
read -p "License server IP:" a
LOC=`pwd`
mkdir /var/license
mkdir /var/license/file
sed -i "s/serverip/$a/g" $LOC/update.sh
cp $LOC/update.sh /var/license/
chmod +x /var/license/update.sh
echo "sh /var/license/update.sh" >> /etc/rc.local
cp $LOC/server /usr/bin/server
chmod +x /usr/bin/server
yum install wget at -y
