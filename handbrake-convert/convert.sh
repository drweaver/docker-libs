#!/bin/bash

echo Converting $1
(/usr/bin/HandBrakeCLI -i "$1" -o "${1%.mkv}.mp4" -Z "$PRESET" && mv "$1" "${1}.transcoded") || mv "$1" "${1}.transcode-failed"

