#!/bin/bash
##Beta version
read -p "License server IP:" a
LOC=`pwd`
mkdir /var/license
mkdir /var/license/file
cp $LOC/update.sh /var/license/
sed -i "s/serverip/$a/g" $LOC/update.sh
chmod +x /var/license/update.sh
echo "sh /var/license/update.sh" >> /etc/rc.local
cp $LOC/server /usr/bin/server
chmod +x /usr/bin/server
yum install wget -y
yum install at -y
