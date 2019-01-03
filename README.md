# docker-raspberrypi

This repo is to house the build of my current project into docker images and eventually to host them on a Docker swarm on RaspberryPis

docker-asterisk:
docker run --name=asteriskpi -p 10010-10050:10010-10050/udp -p 5060:5060 -p 5060:5060/udp -dit asteriskpi:1.2
