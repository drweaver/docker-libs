#!/bin/bash

LATEST=`date +%Y-%m-%d`
NAME=traccar

docker tag $NAME handymoose/rpi:$NAME
docker tag $NAME handymoose/rpi:$NAME.$LATEST

docker push handymoose/rpi:$NAME
docker push handymoose/rpi:$NAME.$LATEST

