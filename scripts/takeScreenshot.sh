#!/usr/bin/env bash

. $(dirname "$0")/uploadToFtp.sh

takeScreenshot() {
    FILE_NAME=$1

    if [ -z "$FILE_NAME" ]; then
        echo "takeScreenshot.sh requires 1 parameter"
        exit 1
    fi

    echo "Taking screenshot: $(FILE_NAME)"

    import -window root -silent $FILE_NAME

    if [ FTP_PASSWORD ]; then
        uploadToFtp $FILE_NAME
    fi
}
