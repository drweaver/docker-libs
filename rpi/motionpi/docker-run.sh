#!/bin/bash

docker run --restart=always --privileged -d --name motionpi  \
 --add-host="mqtt:192.168.0.28" \
 -e MOTION_DEVICE=kitchen \
   handymoose/rpi:motionpi
