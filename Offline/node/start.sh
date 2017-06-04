#!/bin/sh
ip=$(getent hosts devnpm | awk '{ print $1 }')
echo IP for devnpm is $ip

# wait for devnpm container to be ready
echo "Waiting for devnpm"
while true; do
    nc -z -w1 devnpm 5080 2>/dev/null && break
done

echo devnpm found, application started

cd ~
mkdir tempApp
cd tempApp

# set registry to local-npm IP address
npm set registry http://$ip:5080
# pull some packages so they can install in local-npm 
npm install --global gulp yo @microsoft/generator-sharepoint
npm install --global generator-fountain-webapp

echo "Finished pulling packages"
echo "Run yo @microsoft/sharepoint and accept default settings to pull some more packages"

# sleeps a number of seconds, otherwise docker will exit this container
echo "Sleeping"
while true; do sleep 1000; done # about 16 minutes
