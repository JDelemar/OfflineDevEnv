FROM node:alpine

COPY start.sh /home/node/start.sh

RUN chmod +x /home/node/start.sh 

VOLUME /home/node/tempApp
WORKDIR /home/node/tempApp 
RUN chown -R node:node /home/node/tempApp

CMD /home/node/start.sh
