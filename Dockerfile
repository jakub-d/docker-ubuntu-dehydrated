FROM ubuntu:18.04

MAINTAINER Jakub Dlugolecki <jakub.dlugolecki@gmail.com>

RUN apt-get -y update && \
    apt-get -y install python3 python3-pip curl git && \
    apt-get clean && \
    git clone https://github.com/lukas2511/dehydrated /opt/dehydrated && \
    git clone https://github.com/josteink/le-godaddy-dns /opt/le-godaddy-dns && \
    python3 -m pip install -r /opt/le-godaddy-dns/requirements.txt
