FROM centos:7
MAINTAINER Glynn Windebank
USER root
ENV HOSTNAME=centosdefault

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

# Keep the container running
CMD tail -f /dev/null
