#!/usr/bin/env bash
set -e

. $(dirname "$0")/takeScreenshot.sh

NEW_HOSTNAME=$1

if [ -z "$NEW_HOSTNAME" ]; then
    echo "setHostname.sh requires 1 parameter"
    exit 1
fi

echo $NEW_HOSTNAME > /etc/hostname

clear
cat /etc/hostname
takeScreenshot hostname-1

echo "/usr/src/SO/scripts/post-setHostname.sh" >> /home/student/.profile/
chmod /home/student/.profile/post-setHostname.sh

reboot
