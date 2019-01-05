FROM debian:jessie
MAINTAINER Glynn Windebank
ENV HOSTNAME=torpi

#WORKDIR /etc/yum.repos.d/
#COPY /etc/yum.repos.d/torproject.repo .

RUN \
#yum repolist \
apt-get updateinfo \
apt-get update \
apt-get -y install \
tor \
wget \
make \
vim \
ntp \
bzip2 \
zip \
p7zip \
gftp \
unzip \
libzip \
mlocate \
libevent-devel

WORKDIR /etc/tor/
COPY /etc/tor/torrc .

CMD tail -f /dev/null
