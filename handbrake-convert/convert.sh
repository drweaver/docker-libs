#!/bin/bash

echo "Converting $1, logging to ${1%.*}.handbrake.log"
if 
  /usr/bin/HandBrakeCLI -i "$1" -o "${1%.*}.mp4" -Z "$PRESET" > "${1%.*}.handbrake.log" 2>&1
then
  mv "$1" "${1}.transcoded"
  touch .indexme
  rm "${1%.*}.handbrake.log"
  echo 'Conversion completed successfully'
else  
  mv "$1" "${1}.transcode-failed"
  echo 'Conversion failed, check log file!'
fi

