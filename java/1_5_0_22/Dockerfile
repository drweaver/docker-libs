FROM ubuntu
RUN apt-get update -q \
    && apt-get install subversion unzip -qy \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /opt/
COPY jdk-1_5_0_22-linux-amd64.bin .
RUN set -e ; \
    chmod +x jdk-1_5_0_22-linux-amd64.bin ; \
    echo yes | ./jdk-1_5_0_22-linux-amd64.bin > /dev/null ; \
    rm jdk-1_5_0_22-linux-amd64.bin ; \
    cd jdk1.5.0_22 ; \
    rm -rf src.zip sample demo man ;

ENV JAVA_HOME=/opt/jdk1.5.0_22
ENV PATH=$PATH:$JAVA_HOME/bin

COPY apache-ant-1.9.9-bin.tar.gz .
RUN set -e ; \
    tar xfz apache-ant-1.9.9-bin.tar.gz ; \
    rm apache-ant-1.9.9-bin.tar.gz ; \
    cd apache-ant-1.9.9 ; \
    rm -rf manual ;

ENV ANT_HOME=/opt/apache-ant-1.9.9
ENV PATH=$PATH:$ANT_HOME/bin

WORKDIR /

CMD /bin/bash
