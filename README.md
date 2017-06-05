# Dev Env
Set up an offline developer environment.

Work in progress..

### Tools
|Software|Acquire|OS |Benefit|
|--------|-------|---|-------|
|**Nodejs**|[Get Node.js LTS](https://nodejs.org)|Windows|Continuous development, continuous testing, automating testing
|**Docker**|[Get Docker Community Edition](https://www.docker.com/community-edition)|Linux/Windows 10/Windows Server 2016|Quick environment setups and tear downs to support continuous development,  continuous testing, automating testing, increase of discovery to use
|**Visual Studio Code**|[Get Visual Studio Code](https://code.visualstudio.com/download)|Windows|Integrated development environment better than Notepad|
|Local Docker images and npm|[Local Docker images and npm](https://github.com/JDelemar/OfflineDevEnv/tree/master/Offline)|Linux/Mac (Docker)|Utilize Docker and npm locally
|**Play With Docker**|[Get PWD](https://github.com/play-with-docker/play-with-docker/archive/master.zip)|Linux|Play with Docker things

#### Other potential tools

|Software|Acquire|OS|Benefit|
|--------|-------|---|-------|
|Playground|???|javascript - nodejs|Check out how your scripts look

##### Docker Images
[Local Docker images and npm](https://github.com/JDelemar/link)

|Image|OS |Benefit
|-----|---|-------
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
[Local Docker images and npm](https://github.com/JDelemar/OfflineDevEnv/tree/master/Offline)

|Image|Benefit
|---|---
|local-npm|Offline npm registry for installing node packages
|SharePoint Framework|Could be the direction of SharePoint 2016 and beyond<br/>(May have to get example/empty projects<br/>From a node environment, git [_To do Client-Side Web Part_](https://github.com/waldekmastykarz/spfx-angular-ts-todo), run following the README, save the files)
|Yeoman scaffolding|Project scaffolding. Could also duplicate these scaffolds in GitLab<br/>(May have to get some empty projects if unable to get for offline usage)
|Selenium|Multibrowser testing<br/>(May have to get docker image or project ready to run)
