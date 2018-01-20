FROM nodered/node-red-docker:rpi

USER root

# Install dependencies for HomeKit
RUN apt-get update -qq && apt-get install -qy \ 
	libavahi-compat-libdnssd-dev \
	avahi-daemon \
	avahi-discover \
	libnss-mdns

# Start services needed for HomeKit
RUN echo "node-red ALL = NOPASSWD: /usr/sbin/service" > /etc/sudoers.d/node-red

#RUN service dbus start && service avahi-daemon start

RUN    chown -R node-red:node-red /data \
    && chown -R node-red:node-red /usr/src/node-red
USER node-red
WORKDIR /usr/src/node-red

# Install nodes for home automation
RUN npm install \
		node-red-contrib-homekit \
		node-red-contrib-bigtimer \
		node-red-contrib-looptimer \
		drweaver/node-red-contrib-ramp-thermostat \
		node-red-contrib-ifttt \
		node-red-contrib-counter \
		node-red-contrib-debounce \
		node-red-contrib-timerswitch

COPY entrypoint.sh .

ENTRYPOINT ["/usr/src/node-red/entrypoint.sh"]
CMD ["npm", "start", "--", "--userDir", "/data"]
