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

COPY convert.sh .

ENV PRESET='Android 720p30'

CMD find ./ -type f -name \*.mkv -execdir /media/convert.sh '{}' \;




    

