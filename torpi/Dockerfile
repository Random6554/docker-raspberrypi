FROM centos:7
MAINTAINER Glynn Windebank
ENV HOSTNAME=torpi

RUN \
yum -y updateinfo && \
yum -y update && \
yum -y install \
epel-release \
tor \
dnsmasq \
vim \
mlocate

WORKDIR /etc/tor/
COPY /etc/tor/torrc .

CMD /usr/sbin/asterisk && tail -f /dev/null
