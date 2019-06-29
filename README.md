# OWASP-ZAP

<img src="http://4.bp.blogspot.com/-QnYf9hlKYuU/U4h991LRk4I/AAAAAAAALac/FbPo0Ji_v8Y/s1600/owasp_zap.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequisites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/owasp-zap/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/owasp-zap/commits/master)


## INTRODUCTION

Docker image of :

- [owasp-zap](https://www.owasp.org/index.php/OWASP_HA_Vulnerability_Scanner_Project)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/owasp_zap/pipelines)

Automatically updated on : [docker hub public](https://hub.docker.com/r/alexandreoda/owasp-zap)


## PREREQUISITES

Use [docker](https://www.docker.com)


## INSTALL

```
docker run -d --name owasp-zap -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v ${HOME}:/home/owaspzap -e DISPLAY alexandreoda/owasp-zap
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/owasp-zap/blob/master/LICENSE)
