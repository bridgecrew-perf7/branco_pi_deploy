#!bin/bash

sudo rm -rfv /home/pi/container-program-files/aplb.branconet.com
cd /home/pi/container-program-files/ && git clone https://github.com/chucky747/aplb.branconet.com.git

docker pull nginx
sudo docker-compose up -d
echo
echo
echo
echo webserver live @ localhost:8093
sudo docker update --restart unless-stopped ws3-aplb.branconet.com
