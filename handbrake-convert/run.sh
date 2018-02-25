#!/bin/bash

while true; do \
  find ./ -type f \( -name \*.mkv -o -name \*.avi \) -execdir /media/convert.sh '{}' \;
  echo "Sleeping for $INTERVAL"
  sleep $INTERVAL
done