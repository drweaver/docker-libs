### BUILDER ###
FROM balenalib/raspberrypi3-node:latest-run
WORKDIR /
RUN install_packages \
	unzip \
	wget 

# Install motionpi
WORKDIR /
RUN wget https://github.com/drweaver/motionpi-st-connector/archive/master.zip
RUN unzip master.zip
WORKDIR /motionpi-st-connector-master/
RUN npm install

CMD node ./server.js

