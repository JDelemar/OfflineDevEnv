# Local Docker images and npm
Get local Docker images and npm packages

##### Steps:
1. Get folders and files in this repository
   ```
   git clone https://github.com/JDelemar/OfflineDevEnv.git
   cd OfflineDevEnv/Offline
   ```
2. Run the docker-compose.yml `docker-compose up -d` or `./go.sh`

   local-npm should start cloning the npm registry into the `data/npm` directory

   To check the status of downloaded packages
   `docker logs devnpm`

   Yeoman should be downloaded in local-npm

   a. Get SharePoint Framework

   (1) Check the `devnode` container logs to see if has finished yeoman and generators with `docker logs devnode`

   (2) Once the `devnode` container has finished, start a temporary project to capture sharepoint framework packages by type `yo @microsoft/sharepoint` in the `/home/node/tempApp` directory as the node user (`su node`). Enter the running container by using portainer or entering `docker exec -it devnode /bin/sh`

   b. Get Selenium
   `working on this`

3. Get Docker images by running the `getDockerImages.sh` shell script
4. Shutdown when finished getting Docker images and npm packages
`docker-compose down`

All files should be located in the `data` directory

##### Docker Images

|Image|OS |Benefit
|-----|---|---
|Portus|Linux|House Docker images with a front end for Docker Repository 2.1 or later
|Portainer|Linux|Docker engine web interface|
|Registry|Linux|Stores and distributes Docker images|
|Nginx|Linux|Open source reverse proxy server|
|Apache|Linux|Apache HTTP server|
|Node|Linux|Javascript for server-side and networking apps|
|Alpine|Linux|Lightweight Linux distro|
|MySql|Linux|Popular opensource database|
|Gitlab|Linux|Source code management|
|Piwik|Linux|Open source analytics|
|Spfx|Linux|SharePoint Framework|
|Play with Docker|Linux|Docker playground|

Microsoft - dotnet, aspnet, windowsservercore, nanoserver, mssql-server-linux, dotnet-samples

##### Node packages

|Image|Benefit
|-----|---
|local-npm|Offline npm registry for installing node packages
|SharePoint Framework|Could be the direction of SharePoint 2016 and beyond<br/>(May have to get example/empty projects<br/>From a node environment, git [_To do Client-Side Web Part_](https://github.com/waldekmastykarz/spfx-angular-ts-todo), run following the README, save the files)
|Yeoman scaffolding|Project scaffolding. Could also duplicate these scaffolds in GitLab<br/>(May have to get some empty projects if unable to get for offline usage)
|Selenium|Multibrowser testing<br/>(May have to get docker image or project ready to run)
