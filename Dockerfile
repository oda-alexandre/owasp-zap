FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# VARIABLES D'ENVIRONNEMENT
ENV DEBIAN_FRONTEND noninteractive

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install --no-install-recommends -y \
ca-certificates \
locales \
apt-transport-https \
sudo \
tor \
privoxy \
xpdf \
gnupg \
pgpgpg \
dirmngr \
apt-utils \
xz-utils \
wget

# SELECTION LANGUE FRANCAISE
ENV LANG fr_FR.UTF-8
RUN echo fr_FR.UTF-8 UTF-8 > /etc/locale.gen && locale-gen

# MODIFICATION DU FICHIER /etc/apt/sources.list AVEC LES REPOS kali-rolling contrib non-free
RUN echo 'deb https://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list && \
echo 'deb-src https://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list && \
wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add

# INSTALLATION DE L'APPLICATION
RUN mkdir -p /usr/share/man/man1

RUN apt-get update && apt-get install --no-install-recommends -y --allow-unauthenticated \
openjdk-11-jre \
openjdk-11-jre-headless \
default-jre \
ca-certificates-java \
zaproxy

# NETTOYAGE
RUN apt-get --purge autoremove -y \
wget && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/*

# AJOUT UTILISATEUR
RUN useradd -d /home/owaspzap -m owaspzap && \
passwd -d owaspzap && \
adduser owaspzap sudo

# SELECTION UTILISATEUR
USER owaspzap

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/owaspzap

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD zaproxy -f
