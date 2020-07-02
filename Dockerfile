FROM debian:buster-slim

LABEL maintainer="TheLastBilly jtmonegro@gmail.com"

RUN apt update && apt install -y \
    make \
    git-core \
    cmake \
    python \
    curl \
    sudo \
    wget \
    fish \
    vim 
RUN rm -rf /var/lib/apt/lists/*

ENV VITASDK=/usr/local/vitasdk
ENV PATH=$VITASDK/bin:$PATH

ENV VDPM_REPO=https://github.com/vitasdk/vdpm

RUN cd /tmp/ && git clone ${VDPM_REPO}
WORKDIR /tmp/vdpm

RUN ./bootstrap-vitasdk.sh
RUN ./install-all.sh

RUN mkdir /mnt/share
WORKDIR /mnt/share
RUN rm -rf /tmp/vdpm

CMD ["/usr/bin/fish"]