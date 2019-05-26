#!/usr/bin/env bash

dconf load /org/gnome/terminal/legacy/profiles:/:1430663d-083b-4737-a7f5-8378cc8226d1/ < $(dirname "$0")/../assets/gnome-terminal-hold-profile.dconf
