sudo docker rm -f ghost


sudo docker run -d --name ghost -e url=https://ana.branconet.com -p 8088:2368 -v /home/pi/container-program-files/ghost-blog:/var/lib/ghost/content ghost:alpine

sudo docker exec -it ghost apk update && apk add fail2ban -y
sudo docker update --restart unless-stopped ghost
