FROM handymoose/rpi:node.v6.9.4 as builder
WORKDIR /
RUN apt-get -q update && apt-get -qy install \
	git 

# Install piface libs
RUN git clone https://github.com/drweaver/google-iot.git
WORKDIR /google-iot/home-hub/
RUN npm install

### GARAGE-CONTROL ###
FROM arm32v6/node:alpine
COPY --from=builder /google-iot/home-hub /home-hub
WORKDIR /home-hub/
CMD node index.js

