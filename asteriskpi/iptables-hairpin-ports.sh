#!/bin/bash
# Docker does not properly support opening port ranges and spins up a new user-land proxy for every port that is opened. 
# So forwarding 10000-20000 can take hours to bring up the container.
# https://www.engagespark.com/blog/rtp-port-ranges-for-freeswitch-in-docker
# I have also decided I dont need 10k ports as I only have 2 handsets so I have only opened ports 10050-10100 and used docker.
# Below is for documentation only.

vim /etc/docker/daemon.json
{
    "userland-proxy": false
}

iptables -A DOCKER -t nat -p udp -m udp ! -i docker0 --dport 10000:20000 -j DNAT --to-destination $CIP:16384-25000
iptables -A DOCKER -p udp -m udp -d $CIP/32 ! -i docker0 -o docker0 --dport 16384:25000 -j ACCEPT
iptables -A POSTROUTING -t nat -p udp -m udp -s $CIP/32 -d $CIP/32 --dport 16384:25000 -j MASQUERADE
