#!/bin/bash
##Beta version
# Asking License server IP to connect.
## Put OPN Server IP here.
read -p "License server IP:" a
## Reading current location
LOC=`pwd`
## Creating license directory to store all subscription informations.
mkdir /var/license
mkdir /var/license/file
## Updating server IP to main update.sh file.
sed -i "s/serverip/$a/g" $LOC/update.sh
## Moving update.sh file to main subscription directory.
cp $LOC/update.sh /var/license/
## Giving excecution permission.
chmod +x /var/license/update.sh
## Updating rc.local with given command for start up excecution.
echo "sh /var/license/update.sh" >> /etc/rc.local
# Creating new binary file for subscription validation.
cp $LOC/server /usr/bin/server
chmod +x /usr/bin/server
## Installing some additional packages.
yum install wget at -y
## --  End of install setup.
###
## Patches will add here.
