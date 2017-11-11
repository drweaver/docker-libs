### BUILDER ###
FROM handymoose/rpi:node.v6.9.4 as builder
WORKDIR /
RUN apt-get -q update && apt-get -qy install \
	automake \
	libtool \
	git \
	make \
	python \
	build-essential \
	unzip

# Install piface libs
RUN git clone https://github.com/piface/libmcp23s17.git
RUN git clone https://github.com/piface/libpifacedigital.git
WORKDIR /libmcp23s17/
RUN make && make install
WORKDIR /libpifacedigital/
RUN make && make install

# Install garage-control
WORKDIR /
RUN wget https://github.com/drweaver/garage-control/archive/master.zip
RUN unzip master.zip
WORKDIR /garage-control-master/
RUN npm install


### GARAGE-CONTROL ###
FROM handymoose/rpi:node.v6.9.4
COPY --from=builder /garage-control-master /garage-control
WORKDIR /garage-control/
CMD node index.js

