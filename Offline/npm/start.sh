#!/bin/sh
# get IP address of this computer
ip=$(getent hosts devnpm | awk '{ print $1 }')
BASE_URL="http://$ip:5080"

cd /local-npm
npm start -- --remote "$REMOTE_REGISTRY" --remote-skim "$REMOTE_REGISTRY_SKIMDB" --directory "$DATA_DIRECTORY" --url-base "$BASE_URL"
