#!/bin/bash

sudo service dbus start
sudo service avahi-daemon start

exec "$@"

