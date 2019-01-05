FROM debian:jessie
MAINTAINER Glynn Windebank
ENV HOSTNAME=torpi

#WORKDIR /etc/yum.repos.d/
#COPY /etc/yum.repos.d/torproject.repo .

RUN \
#yum repolist \
apt-get -y update && \
apt-get -y install \
tor \
wget \
make \
vim \
ntp \
bzip2 \
zip \
p7zip \
unzip \
mlocate

WORKDIR /etc/tor/
COPY /etc/tor/torrc .

CMD tail -f /dev/null
