#!/usr/bin/env bash

for f in *.sh; do
  bash "$f" -H
done
