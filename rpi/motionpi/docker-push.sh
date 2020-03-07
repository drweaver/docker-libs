#!/bin/bash

LATEST=`date +%Y-%m-%d`

docker tag motionpi handymoose/rpi:motionpi
docker tag motionpi handymoose/rpi:motionpi.$LATEST

docker push handymoose/rpi:motionpi
docker push handymoose/rpi:motionpi.$LATEST

