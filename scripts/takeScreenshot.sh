#!/usr/bin/env bash

. $(dirname "$0")/uploadToFtp.sh

takeScreenshot() {
    if [ !$1 ]; then
        echo "takeScreenshot.sh requires 1 parameter"
        exit 1
    fi

    FILE_NAME=$1

    echo "Taking screenshot: $(FILE_NAME)"

    import -window root -silent FILE_NAME

    if [ FTP_PASSWORD ]; then
        uploadToFtp ${FILE_NAME}
    fi
}
