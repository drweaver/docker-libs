FROM handymoose/rpi:node.v6.9.4

# Override these!
ENV TEMP_MQTT_URL=mqtt://mqtt
ENV TEMP_LOCATION=lounge
ENV TEMP_DEVICE_ID=28-0316824291ff

RUN apt-get -q update && apt-get -qy install \
	unzip \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /

RUN set -ex; \ 
	wget https://github.com/drweaver/heating-control/archive/master.zip; \
    	unzip master.zip; \
    	rm master.zip; \
    	mv heating-control-master/temp2mqtt .; \
        rm -rf heating-control-master; \
    	cd temp2mqtt; \
    	npm install;

WORKDIR /temp2mqtt/

CMD node index.js
