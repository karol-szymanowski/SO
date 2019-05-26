#!/usr/bin/env bash

for f in $(dirname "$0")/*.sh; do
  bash "$f" -H
done
