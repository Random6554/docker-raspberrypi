FROM centos:7
MAINTAINER Glynn Windebank
USER root
# -p 10050-10100:10050-10100/udp -p 5060:5060 -p 5060:5060/udp
EXPOSE 5060
EXPOSE 5060/udp
EXPOSE 10050-10100/udp
ENV HOSTNAME=asteriskpi

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

WORKDIR /etc/asterisk
COPY /etc/asterisk/rtp.conf .
COPY /etc/asterisk/sip.conf .
COPY /etc/asterisk/sip_users.conf .
COPY /etc/asterisk/extensions.conf .


CMD /usr/sbin/asterisk && tail -f /dev/null
#ENTRYPOINT /usr/sbin/asterisk

#Keep the container running
#CMD tail -f /dev/null
