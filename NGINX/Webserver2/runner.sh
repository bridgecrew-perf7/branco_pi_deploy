#!bin/bash

docker pull nginx
sudo docker-compose up -d
echo
echo
echo
echo webserver live @ localhost:8092
sudo docker update --restart unless-stopped ws2-santos.branconet.com