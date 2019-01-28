# OWASP-ZAP

![owasp-zap](https://raw.githubusercontent.com/oda-alexandre/owasp-zap/master/img/logo-owasp-zap.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/owasp-zap/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![owasp-zap docker build](https://img.shields.io/docker/build/alexandreoda/owasp-zap.svg)](https://hub.docker.com/r/alexandreoda/owasp-zap)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [owasp-zap](https://www.owasp.org/index.php/OWASP_HA_Vulnerability_Scanner_Project) pour [Docker](https://www.docker.com), mis à jour automatiquement dans le [Docker Hub](https://hub.docker.com/r/alexandreoda/owasp-zap/) public.


## PREREQUIS

Installer [Docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name owasp-zap -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/owaspzap -e DISPLAY alexandreoda/owasp-zap
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/owasp-zap/blob/master/LICENSE)
