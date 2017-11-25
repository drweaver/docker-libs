#!/bin/bash

docker run --restart=always -v `pwd`/etc:/home-hub/etc:ro -d --name google-iot-home-hub handymoose/rpi:google-iot-home-hub
