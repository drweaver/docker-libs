FROM centos:7

RUN yum -y groupinstall "Development Tools" && \
    yum -y install subversion glibc-devel.i686

WORKDIR /build
COPY linux-unwind.h.patch .

## Install g++/gcc 4.1.2
RUN set -e ; \
    curl -o gcc-4.1.2.tar.gz http://mirrors-usa.go-parts.com/gcc/releases/gcc-4.1.2/gcc-4.1.2.tar.gz ; \
    curl -o gcc-g++-4.1.2.tar.gz http://mirrors-usa.go-parts.com/gcc/releases/gcc-4.1.2/gcc-g++-4.1.2.tar.gz ; \
    gunzip gcc-4.1.2.tar.gz ; \
    gunzip gcc-g++-4.1.2.tar.gz ; \
    tar xvf gcc-4.1.2.tar ; \
    tar xvf gcc-g++-4.1.2.tar ; \
    cd gcc-4.1.2 ; \
    patch -Np1 -i ../linux-unwind.h.patch ; \
    mkdir build ; \
    cd build ; \
    ../configure --disable-checking --enable-languages=c,c++ \
      --enable-multiarch --enable-shared --enable-threads=posix \
      --program-suffix=-4.1 \
#      --prefix=/usr/local \
      --with-system-zlib \
      --disable-libunwind-exceptions ;  \
    make -j4 ; \
    make install ; \
    cd /build ; \
    rm -rf gcc* linux-unwind* ;

RUN set -e ; \
    mv /usr/bin/g++ /usr/bin/g++-4.8 ; \
    mv /usr/bin/gcc /usr/bin/gcc-4.8 ; \
    update-alternatives --install /usr/bin/g++ g++ /usr/local/bin/g++-4.1 20 ; \
    update-alternatives --install /usr/bin/gcc gcc /usr/local/bin/gcc-4.1 20 ; \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 30 ; \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 30 ; \
    update-alternatives --set g++ /usr/local/bin/g++-4.1 ; \
    update-alternatives --set gcc /usr/local/bin/gcc-4.1 ;




