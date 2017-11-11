#!/bin/bash

LATEST=`date +%Y-%m-%d`

docker tag socket-control handymoose/rpi:socket-control
docker tag socket-control handymoose/rpi:socket-control.$LATEST

docker push handymoose/rpi:socket-control
docker push handymoose/rpi:socket-control.$LATEST

