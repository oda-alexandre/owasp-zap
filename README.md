# OWASP-ZAP

[![dockeri.co](https://dockeri.co/image/alexandreoda/owasp-zap)](https://hub.docker.com/r/alexandreoda/owasp-zap)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/owasp-zap.svg)](https://microbadger.com/images/alexandreoda/owasp-zap)
[![size](https://images.microbadger.com/badges/image/alexandreoda/owasp-zap.svg)](https://microbadger.com/images/alexandreoda/owasp-zap")
[![build](https://img.shields.io/docker/build/alexandreoda/owasp-zap.svg)](https://hub.docker.com/r/alexandreoda/owasp-zap)
[![automated](https://img.shields.io/docker/automated/alexandreoda/owasp-zap.svg)](https://hub.docker.com/r/alexandreoda/owasp-zap)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [owasp-zap](https://www.owasp.org/index.php/OWASP_HA_Vulnerability_Scanner_Project)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/owasp-zap).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name owasp-zap -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/owaspzap -e DISPLAY alexandreoda/owasp-zap
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/owasp-zap/blob/master/LICENSE)
