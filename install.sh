#!/bin/bash
##Beta version
LOC=`pwd`
mkdir /var/license
mkdir /var/license/file
cp $LOC/update.sh /var/license/
chmod +x /var/license/update.sh
echo "sh /var/license/update.sh" >> /etc/rc.local
cp $LOC/server /usr/bin/server
chmod +x /usr/bin/server
