#!/usr/bin/env bash

apt-get -y install sudo
sed -i '/root\tALL=(ALL:ALL) ALL/a student\tALL=(ALL:ALL) ALL' /etc/sudoers
