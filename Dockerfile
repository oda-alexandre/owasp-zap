FROM debian:stretch-slim

LABEL authors https://www.oda-alexandre.com/

ENV USER owaspzap
ENV HOME /home/${USER}
ENV LOCALES fr_FR.UTF-8
ENV OPENJDK openjdk-11-jre
ENV DEBIAN_FRONTEND noninteractive

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m'; \
  apt-get update && apt-get install --no-install-recommends -y \
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

RUN echo -e '\033[36;1m ******* CHANGE LOCALES ******** \033[0m'; \
  locale-gen ${LOCALES}

RUN echo -e '\033[36;1m ******* ADD contrib non-free IN sources.list ******** \033[0m'; \
  echo 'deb https://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list; \
  echo 'deb-src https://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list; \
  wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m'; \
  mkdir -p /usr/share/man/man1; \
  apt-get update && apt-get install --no-install-recommends -y --allow-unauthenticated \
  ${OPENJDK} \
  ${OPENJDK}-headless \
  default-jre \
  ca-certificates-java \
  zaproxy

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m'; \
  useradd -d ${HOME} -m ${USER}; \
  passwd -d ${USER}; \
  adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR ${HOME}

RUN echo -e '\033[36;1m ******* CLEANING ******** \033[0m'; \
  sudo apt-get --purge autoremove -y \
  wget; \
  sudo apt-get autoclean -y; \
  sudo rm /etc/apt/sources.list; \
  sudo rm -rf /var/cache/apt/archives/*; \
  sudo rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD zaproxy -f \