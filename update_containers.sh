#!/bin/bash

# Kills all Containers
docker kill $(docker ps -q)
   
# Pulls images and Runs Containers and updates them
bash portainer.sh
cd NGINX
cd Proxy
bash runner.sh
cd..
cd Webserver
bash runner.sh
cd ..
cd Webserver2
bash runner.sh
cd .. 
cd ..
cd PiHole
bash pirunner.sh
cd ..
bash fileserver.sh
bash glancesrunner.sh
bash plexrunner.sh

#Starts all Containers
docker start $(docker ps -a -q)

echo Plex: @localip:32400
echo Protainer: @localip:8090
echo PI: @localip:8091
echo Webserver: @localip
echo Fileserver: @localip:8092
