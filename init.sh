#!/usr/bin/env bash
set -e

wget --backups=1 https://raw.githubusercontent.com/tetrash/SO/master/assets/sources.list -O /etc/apt/sources.list

apt-get -y update && apt-get install -y git

git clone https://github.com/tetrash/SO.git /usr/src/SO

cp /usr/src/SO/.env.example /usr/src/SO/.env

find /usr/src/SO -type f -iname "*.sh" -exec chmod +x {} \;
