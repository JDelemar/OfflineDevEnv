# Need to update file to use the IP address of the container it is running in
# TODO: use latest node version 
# Source: https://hub.docker.com/r/orlandohohmeier/local-npm/~/dockerfile/
FROM orlandohohmeier/local-npm:1.0.0-local-npm.1.6.0

CMD mkdir -p "$DATA_DIRECTORY" chmod 700 "$DATA_DIRECTORY" \
    && chown -R local-npm "$DATA_DIRECTORY" 

# copy startup script
COPY start.sh /root/start.sh

RUN chmod +x /root/start.sh 

CMD /root/start.sh