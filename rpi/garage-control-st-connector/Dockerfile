### BUILDER ###
FROM handymoose/rpi:node.v6.9.4 
WORKDIR /
RUN apt-get -q update && apt-get -qy install \
        unzip

# Install garage-control connector
WORKDIR /
RUN wget https://github.com/drweaver/garage-control-st-connector/archive/master.zip
RUN unzip master.zip
WORKDIR /garage-control-st-connector-master/
RUN npm install
CMD node server.js

