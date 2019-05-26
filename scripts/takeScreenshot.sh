#!/usr/bin/env bash
set -e

. $(dirname "$0")/uploadToFtp.sh

takeScreenshot() {
    FILE_NAME=$1

    if [ -z "$FILE_NAME" ]; then
        echo "takeScreenshot.sh requires 1 parameter"
        exit 1
    fi

    echo "Taking screenshot: $FILE_NAME"

    import -window root -silent /home/student/$FILE_NAME

    if [ -z "$FTP_PASSWORD" ]; then
        uploadToFtp $FILE_NAME || echo "Cannot upload $FILE_NAME to $FTP_HOST. Skipping this operation"
    fi
}
