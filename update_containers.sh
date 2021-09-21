#!/bin/bash

# Kills all Containers
docker kill $(docker ps -q)

# Restarts docker service
sudo snap disable docker
sudo snap enable docker
   
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

# Restarts docker service
sudo snap disable docker
sudo snap enable docker

#Starts all Containers
docker start $(docker ps -a -q)
