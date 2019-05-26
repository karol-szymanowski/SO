#!/usr/bin/env bash
set -e

. $(dirname "$0")/takeScreenshot.sh

NEW_HOSTNAME=$1

if [ -z "$NEW_HOSTNAME" ]; then
    echo "setHostname.sh requires 1 parameter"
    exit 1
fi

hostname $NEW_HOSTNAME

exec bash

clear
hostname
takeScreenshot hostname
