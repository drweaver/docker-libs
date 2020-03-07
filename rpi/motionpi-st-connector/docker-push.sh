#!/bin/bash

LATEST=`date +%Y-%m-%d`

docker tag motionpi-st-connector handymoose/rpi:motionpi-st-connector
docker tag motionpi-st-connector handymoose/rpi:motionpi-st-connector.$LATEST

docker push handymoose/rpi:motionpi-st-connector
docker push handymoose/rpi:motionpi-st-connector.$LATEST

