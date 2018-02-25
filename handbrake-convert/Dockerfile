FROM ubuntu:latest

RUN set -e ; \
    apt-get update -qq ; \
    apt-get install software-properties-common -qqy ; \
    add-apt-repository ppa:stebbins/handbrake-releases ; \
    apt-get update -qq ; \
    apt-get install handbrake-cli -qqy ; \
    HandBrakeCLI --version ; \
    rm -rf /var/lib/apt/lists/* ;

WORKDIR /media

COPY convert.sh run.sh /media/

# The Handbrake preset to use - override with e.g. --env PRESET='High Profile'
ENV PRESET='Android 720p30'
# The wait between checks for new files, override with e.g. --env INTERVAL='10m', 
# command is passed to 'sleep' e.g. 20s, 10m, 5h
ENV INTERVAL='3h'

CMD ./run.sh
