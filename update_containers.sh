#!/bin/bash

# Removes unused images
docker image prune -f

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
bash filerserver.sh
bash glancesrunner.sh
bash plexrunner.sh


#Starts all Containers
docker start $(docker ps -a -q)
