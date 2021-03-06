#!/bin/bash
# go.sh
# To test on play with docker (http://labs.play-with-docker.com), cut and paste this into the console starting with the next line uncommented
# git clone https://github.com/JDelemar/OfflineDevEnv.git
cd Offline 
docker-compose up -d
echo To check the status of local-npm: docker logs devnpm
echo To check the status of the node container: docker logs devnode
echo To enter the node container: docker exec -it devnode /bin/sh  # (press CTRL+P, CTRL+Q to exit the container)
