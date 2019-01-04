#!/bin/bash

LATEST=`date +%Y-%m-%d`

docker tag socket-control-st-connector handymoose/rpi:socket-control-st-connector
docker tag socket-control-st-connector handymoose/rpi:socket-control-st-connector.$LATEST

docker push handymoose/rpi:socket-control-st-connector
docker push handymoose/rpi:socket-control-st-connector.$LATEST

