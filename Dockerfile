FROM centos:7

MAINTAINER Fred Thiele <ferdy_news@gmx.de>

RUN yum -y install epel-release && \
    yum -y update && \
    yum -y install openssl-devel libffi-devel python python-pip python-devel \
                   gcc libyaml-devel && \
    pip install httplib2 ansible && \
    yum -y clean all && \
    rm -rf ~/.pip/cache
