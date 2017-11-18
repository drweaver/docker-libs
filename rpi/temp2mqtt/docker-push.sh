#!/bin/bash

LATEST=`date +%Y-%m-%d`

docker tag temp2mqtt handymoose/rpi:temp2mqtt
docker tag temp2mqtt handymoose/rpi:temp2mqtt.$LATEST

docker push handymoose/rpi:temp2mqtt
docker push handymoose/rpi:temp2mqtt.$LATEST

