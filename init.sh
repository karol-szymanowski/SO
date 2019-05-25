#!/usr/bin/env bash

wget https://raw.githubusercontent.com/tetrash/SO/master/assets/source.list -P /etc/apt/

apt-get update

apt-get install -y git
git clone https://github.com/tetrash/SO.git /usr

cp /usr/SO/.env.example /usr/SO/.env
