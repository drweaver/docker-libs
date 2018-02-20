#!/bin/bash

docker run \
 -d --restart always \
 --name traccar \
 --hostname traccar \
 -p 8082:8082 \
 -p 5064:5064 \
 -p 5064:5064/udp \
 -v /etc/timezone:/etc/timezone:ro \
 -v /etc/localtime:/etc/localtime:ro \
 -v $(pwd)/logs:/opt/traccar/logs:rw \
 -v $(pwd)/traccar.xml:/opt/traccar/conf/traccar.xml:ro \
 -v $(pwd)/data:/opt/traccar/data:rw \
 traccar
