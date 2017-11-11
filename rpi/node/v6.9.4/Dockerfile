FROM resin/rpi-raspbian:latest

RUN apt-get -q update && \  
    apt-get -qy install wget && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root/

ENV NODE_VERSION=6.9.4
ENV NODE_FILENAME=node-v$NODE_VERSION-linux-armv6l.tar.xz

RUN wget https://nodejs.org/dist/v$NODE_VERSION/$NODE_FILENAME && \
    tar xf $NODE_FILENAME -C /usr/local --strip-components=1 && \
    rm $NODE_FILENAME



