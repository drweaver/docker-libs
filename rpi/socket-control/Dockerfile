FROM handymoose/rpi:node.v6.9.4

RUN apt-get -q update && apt-get -qy install \
	python \
	python-gpiozero \
	python-rpi.gpio \
	unzip \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /

RUN set -ex; \ 
	wget https://github.com/drweaver/socket-control/archive/master.zip; \
    	unzip master.zip; \
    	rm master.zip; \
    	mv socket-control-master socket-control; \
    	cd socket-control; \
    	npm install;

WORKDIR /socket-control/

CMD node index.js
