#!/bin/sh
# getDockerImages.sh
# gets docker images and loads them in a local repo

# default registry location
REGISTRY="localhost:5000"

# declare docker images to get in an array variable
declare -a aryImages=("nginx:alpine"
                      "nginx"
                      "portainer/portainer"
                      "registry"
                      "alpine"
                      "mysql"
                      "node"
                      "node:alpine"
                      "httpd"
                      "httpd:alpine"
                      "portus"
                      "waldekm/spfx"        # sharepoint framework, may not be needed
                      "gitlab/gitlab-ce"
                      "piwik"
                      "haproxy"             # PWD
                      "golang"              # PWD
                      "franela/docker"      # PWD development
                     )

for image in "${aryImages[@]}"
do 
    echo Getting "$image"
    docker pull $image
    docker tag $image $REGISTRY/$image
    docker push $REGISTRY/$image
done

echo Finish