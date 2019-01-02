FROM centos:7
MAINTAINER Glynn Windebank
USER root

RUN \
yum -y updateinfo && \
yum -y install \
gcc \
make \
hgsvn \
libxml12 \
libnewt \
sqlite \
subversion \
mysql \
spandsp \
speex \
ntp \
bzip2 \
zip \
p7zip \
gftp \
unzip \
libzip \
vim \
mlocate \
wget \
gcc-c++ \
ncurses-devel \
uuid-devel \
libuuid-devel \
libxml2-devel \
sqlite-devel \
bison \
subversion \
git-core \
libedit-devel 

RUN mkdir asterisk/
WORKDIR /asterisk
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-11.21.2.tar.gz
#RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-13-current.tar.gz
RUN tar xvzf asterisk-*
WORKDIR /asterisk/asterisk-11.21.2
RUN ./configure
RUN make
RUN make install
RUN make samples
RUN make config
RUN asterisk
