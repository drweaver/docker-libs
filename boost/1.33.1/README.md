# Boost

CentOS base image with old version of boost built and installed from source.

Boost installed under `/usr/local/boost-<tag-version>`. Symbolic link added so `/usr/local/boost -> /usr/local/boost-<tag-version>/boost`.

Boost libraries compiled using compatible version of gcc/g++ - likely from [handymoose/gxx](https://hub.docker.com/r/handymoose/gxx/).

## Tags

* **1.33.1** ([1.33.1/Dockerfile](https://github.com/drweaver/docker-libs/blob/master/boost/1.33.1/Dockerfile))

