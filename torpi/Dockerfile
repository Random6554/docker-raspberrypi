FROM centos:7
MAINTAINER Glynn Windebank
ENV HOSTNAME=torpi

#WORKDIR /etc/yum.repos.d/
#COPY /etc/yum.repos.d/torproject.repo .

RUN \
#yum repolist \
yum -y updateinfo && \
yum -y update && \
yum -y install \
epel-release \
tor \
wget \
make \
dnsmasq \
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

RUN mkdir tor/
WORKDIR /tor
RUN wget https://www.torproject.org/dist/torbrowser/8.0.4/tor-browser-linux32-8.0.4_en-US.tar.xz
#RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-13-current.tar.gz
RUN tar xvzf tor-0.3.4.9.tar.gz
WORKDIR /tor/tor-0.3.4.9
RUN ./configure
RUN make
RUN make install

WORKDIR /etc/tor/
COPY /etc/tor/torrc .

CMD tail -f /dev/null
