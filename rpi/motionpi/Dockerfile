### BUILDER ###
FROM balenalib/raspberrypi3-python:latest-run
WORKDIR /
RUN install_packages \
	unzip \
	wget \
	python-gpiozero

# Install motionpi
WORKDIR /
RUN wget https://github.com/drweaver/motionpi-st-connector/archive/master.zip
RUN unzip master.zip
WORKDIR /motionpi-st-connector-master/motionpi/
RUN pip install paho-mqtt 

CMD python ./motion_sensor.py

