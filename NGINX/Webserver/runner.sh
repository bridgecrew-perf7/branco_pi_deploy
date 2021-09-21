#!bin/bash

docker pull nginx
sudo docker-compose up -d
echo
echo
echo
echo webserver live @ localhost:8091
sudo docker update --restart unless-stopped ws1-lucinda.branconet.com