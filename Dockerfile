FROM opensuse:42.2 

MAINTAINER Fred Thiele <ferdy_news@gmx.de>

RUN zypper -n install openssl-devel libffi-devel python python-pip python-devel \
                      gcc libyaml-devel && \
    pip install --upgrade pip && \
    pip install cryptography httplib2 ansible && \
    zypper -n clean && \
    rm -rf ~/.pip/cache
