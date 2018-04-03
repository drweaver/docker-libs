FROM handymoose/gxx:4.1.2

## Install Boost 1.33.1
RUN set -e ; \
    curl https://netcologne.dl.sourceforge.net/project/boost/boost/1.33.1/boost_1_33_1.tar.gz -o boost_1_33_1.tar.gz ; \
    gunzip boost_1_33_1.tar.gz ; \
    tar xvf boost_1_33_1.tar ; \
    cd boost_1_33_1 ; \
    ./configure ; \
#    --prefix=/usr ; \
    make -j4 ; \
    make install ; \
    cd /build ; \
    rm -rf boost* ;

RUN ln -s /usr/local/include/boost-1_33_1/boost /usr/local/include/boost
