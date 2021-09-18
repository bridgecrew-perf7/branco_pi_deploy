#!/bin/bash

# Removes unused images
docker image prune -f

# Kills all Containers
docker kill $(docker ps -q)

# Removes all containers
docker rm $(docker ps -a -q)

# Pulls Images
docker pull linuxserver/plex
docker pull alpine
docker pull filebrowser/filebrowser
docker pull nicolargo/glances
docker pull nginx
docker pull pihole/pihole 
docker pull portainer/portainer-ce   
docker pull mjenz/rpi-openvpn         

# Runs Containers



#Starts all Containers
docker start $(docker ps -a -q)
