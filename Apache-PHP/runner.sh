#!/bin/bash

docker build -t piadminapp .

docker run -p 8082:80 -v /media/pi/pi-ssd/share_files/Websites/phpserver/sites:/var/www/site -d piadminapp