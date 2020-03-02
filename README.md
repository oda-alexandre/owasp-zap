# OWASP-ZAP

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904466/051e0245d787d1f71246d515e88a8564_zap256x256-oversize.png)

## INDEX

- [OWASP-ZAP](#owasp-zap)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [FIRST UPDATE](#first-update)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/owasp-zap/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/owasp-zap/commits/master)

## FIRST UPDATE

Date: 01-01-01

## INTRODUCTION

Docker image of :

- [owasp-zap](https://www.owasp.org/index.php/OWASP_HA_Vulnerability_Scanner_Project)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/owasp_zap/pipelines)

Automatically updated on : [docker hub public](https://hub.docker.com/r/alexandreoda/owasp-zap)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -d --name owasp-zap -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/owaspzap -e DISPLAY alexandreoda/owasp-zap```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/owasp-zap/blob/master/LICENSE)
