#!/usr/bin/env bash

. /usr/src/SO/scripts/takeScreenshot.sh
. /usr/src/SO/scripts/importProfile.sh

x-terminal-emulator --window-with-profile='hold' -e 'echo;echo;echo;echo;hostname'
takeScreenshot hostname-2

rm $0
