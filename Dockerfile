FROM debian:jessie

MAINTAINER Fred Thiele <ferdy_news@gmx.de>

RUN apt-get -y update && apt-get -y upgrade && \
    apt-get -y install libssl-dev libffi-dev python python-pip python-dev gcc libyaml-dev && \
    pip install --upgrade pip && \
    pip install cryptography httplib2 ansible && \
    apt-get remove --purge -y $BUILD_PACKAGES $(apt-mark showauto) && \
    rm -rf /var/lib/apt/lists/*

