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
wget

RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-11.21.2.tar.gz
RUN tar xvzf asterisk-11-current.tar.gz

#ADD wget http://downloads.asterisk.org/pub/telephony/asterisk/old-releases/asterisk-11.21.2.tar.gz
