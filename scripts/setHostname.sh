#!/usr/bin/env bash

. $(dirname "$0")/takeScreenshot.sh

if [ !$1 ]; then
    echo "setHostname.sh requires 1 parameter"
    exit 1
fi

echo NEW_HOSTNAME > /etc/hostname
cat /etc/hostname

takeScreenshot hostname-1

echo "Reboot system"
