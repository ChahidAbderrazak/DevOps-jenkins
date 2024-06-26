#/bin/bash
docker system prune
clear
echo  && echo "[Docker] creating the Jenkins netwoek"
docker network create jenkins

echo  && echo "[Docker] Running the Jenkins container"
docker run --name jenkins-blueocean --restart=on-failure --detach \
  --network jenkins --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 --publish 50001:50000 --publish 5000:5000\
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  myjenkins-blueocean:2.414.2