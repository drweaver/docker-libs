#!/bin/bash

docker run --restart=always -d --name motionpi-st-connector  \
 -e MQTT_URL="mqtt://192.168.0.28" \
 -e MOTION_DEVICE=kitchen \
 -p 5003:5003 \
   handymoose/rpi:motionpi-st-connector
