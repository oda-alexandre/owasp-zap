# OWASP-ZAP

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904466/051e0245d787d1f71246d515e88a8564_zap256x256-oversize.png)

## INDEX

- [OWASP-ZAP](#owasp-zap)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/owasp-zap/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/owasp-zap/commits/master)

## INTRODUCTION

Docker image of :

- [owasp-zap](https://www.owasp.org/index.php/OWASP_HA_Vulnerability_Scanner_Project)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/owasp_zap/pipelines)

Automatically updated on : [docker hub public](https://hub.docker.com/r/alexandreoda/owasp-zap)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```docker run -d --name owasp-zap -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/owaspzap -e DISPLAY alexandreoda/owasp-zap
```

### DOCKER COMPOSE

```yml
version: "3.7"

services:
  owasp-zap:
    container_name: owasp-zap
    image: alexandreoda/owasp-zap
    restart: "no"
    privileged: false
    environment:
      - DISPLAY
    volumes:
      - "${HOME}:/home/owasp-zap"
      - "/tmp/.X11-unix/:/tmp/.X11-unix/"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/owasp-zap/blob/master/LICENSE)
