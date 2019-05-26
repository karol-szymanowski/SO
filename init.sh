#!/usr/bin/env bash
set -e

cp /etc/apt/sources.list /etc/apt/sources.list.bak
wget https://raw.githubusercontent.com/tetrash/SO/master/assets/sources.list -P /etc/apt/

apt-get update && apt-get install -y git

git clone https://github.com/tetrash/SO.git /usr/src/SO

cp /usr/src/SO/.env.example /usr/src/SO/.env

find /usr/src/SO -type f -iname "*.sh" -exec chmod +x {} \;
