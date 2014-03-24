#!/bin/sh
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
echo "which user to add to sudo group: "
read username
usermod -a -G sudo $username

