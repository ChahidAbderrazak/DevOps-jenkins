#/bin/bash
docker system prune
clear
echo  && echo "[Docker] Building the Jenkins image"
docker build -t myjenkins-blueocean:2.414.2 .