#!/usr/bin/env bash

. $(dirname "$0")/../.env

uploadToFtp() {

    FILE_NAME=$1

    if [ -z "$FILE_NAME" ]; then
        echo "uploadToFtp.sh requires 1 parameter"
        exit 1
    fi

    if [ -z "$FTP_USER" ] || [ -z "$FTP_PASSWORD" ] || [ -z "$FTP_HOST" ]; then
        echo "uploadToFtp.sh requires FTP_USER FTP_PASSWORD FTP_HOST variables"
        exit 1
    fi

    echo "Uploading $FILE_NAME to $FTP_USER@$FTP_HOST/$FTP_DIRECTORY"

    lftp -u $FTP_USER,$FTP_PASSWORD $FTP_HOST/$FTP_DIRECTORY -e "set ftp:use-allo false; set ftp:passive-mode true; set ftp:prefer-epsv false; put -a $FILE_NAME;quit"
}
