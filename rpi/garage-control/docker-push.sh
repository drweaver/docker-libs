#!/bin/bash

LATEST=`date +%Y-%m-%d`

docker tag garage-control handymoose/rpi:garage-control
docker tag garage-control handymoose/rpi:garage-control.$LATEST

docker push handymoose/rpi:garage-control
docker push handymoose/rpi:garage-control.$LATEST

