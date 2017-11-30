#!/bin/bash

MQTT_HOST=192.168.0.27

echo "MQTT Host set to $MQTT_HOST"

docker run --add-host=mqtt:$MQTT_HOST \
	   --restart=always -v node_red_user_data:/data \
           --net=host -d --name node-red \
           handymoose/rpi:node-red
