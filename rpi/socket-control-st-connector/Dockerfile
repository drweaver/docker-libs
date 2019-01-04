### BUILDER ###
FROM handymoose/rpi:node.v6.9.4 
WORKDIR /
RUN apt-get -q update && apt-get -qy install \
        unzip

# Install socket-control connector
WORKDIR /
RUN wget https://github.com/drweaver/socket-control-st-connector/archive/master.zip
RUN unzip master.zip
WORKDIR /socket-control-st-connector-master/
RUN npm install
CMD node server.js

