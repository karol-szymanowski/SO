#!/usr/bin/env bash

. ./uploadToFtp.sh

takeScreenshot() {
    if [ !$1 ]; then
        echo "screenshot.sh requires filename"
        exit 1
    fi

    FILE_NAME=$1

    import FILE_NAME

    if [ FTP_PASSWORD ]; then
        uploadToFtp ${FILE_NAME}
    fi
}
