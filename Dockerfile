FROM ubuntu:16.04

MAINTAINER jae kaplan <me@jkap.io>

ENV VITASDK /usr/local/vitasdk
ENV PATH   $VITASDK/bin:$PATH

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        make \
        git-core \
        cmake \
        sudo \
        curl \
        wget \
        bzip2 \
        xz-utils \
    && git clone https://github.com/vitasdk/vdpm /vdpm \
    && cd /vdpm \
    && ./bootstrap-vitasdk.sh \
    && ./install-all.sh

WORKDIR /src
CMD ["/bin/bash"]
