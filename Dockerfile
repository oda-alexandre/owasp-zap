# IMAGE TO USE
FROM debian:stretch-slim

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER owaspzap
ENV LANG fr_FR.UTF-8
ENV OPENJDK openjdk-11-jre
ENV DEBIAN_FRONTEND noninteractive

# INSTALL PACKAGES
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
wget && \

# CHANGE LOCALES
echo ${LANG} > /etc/locale.gen && locale-gen && \

# CHANGE OF FILE /etc/apt/sources.list WITH REPOS kali-rolling contrib non-free
echo 'deb https://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list && \
echo 'deb-src https://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list && \
wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add && \

# INSTALL APP
mkdir -p /usr/share/man/man1 && \
apt-get update && apt-get install --no-install-recommends -y --allow-unauthenticated \
${OPENJDK} \
${OPENJDK}-headless \
default-jre \
ca-certificates-java \
zaproxy && \

# CLEANING
apt-get --purge autoremove -y \
wget && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/* && \

# ADD USER
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECT USER
USER ${USER}

# SELECT WORKING SPACE
WORKDIR /home/${USER}

# START THE CONTAINER
CMD zaproxy -f \
