#!/bin/bash
# getDockerImages.sh
# gets docker images and loads them in a local repo

# default registry location
REGISTRY="localhost:5000"

# declare docker images to get in an array variable
declare -a aryImages=("nginx:1.13.8-alpine"
                      "nginx:1.13.8"
                      "portainer/portainer:1.15.5"
                      "registry:2.6.2"
                      "alpine:3.7"
                      "mysql:5.7.20"
                      "node:8.9.4"
                      "node:8.9.4-alpine"
                      # "httpd"
                      # "httpd:alpine"
                      "opensuse/portus:2.2"
                      # "waldekm/spfx"        # sharepoint framework, may not be needed
                      "gitlab/gitlab-ce:10.3.3-ce.0"
                      # "piwik"
                      # "haproxy"             # PWD
                      # "golang"              # PWD
                      # "franela/docker"      # PWD development
                     )

for image in "${aryImages[@]}"
do 
    echo Getting "$image"
    docker pull $image
    docker tag $image $REGISTRY/$image
    docker push $REGISTRY/$image
done

echo Finish