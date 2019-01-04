#!/bin/bash

LATEST=`date +%Y-%m-%d`

docker tag garage-control handymoose/rpi:garage-control-st-connector
docker tag garage-control handymoose/rpi:garage-control-st-connector:$LATEST

docker push handymoose/rpi:garage-control-st-connector
docker push handymoose/rpi:garage-control-st-connector:$LATEST

