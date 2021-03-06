#!/bin/bash

set -e

sudo apt-get -y update

sudo apt-get -y dist-upgrade

sudo apt-get -fy install

sudo apt-get install -y \
autofs \
build-essential \
cifs-utils \
cmake \
cmatrix \
curl \
deluge \
git \
git-core \
git-extras \
htop \
libbz2-dev \
libc6-dev \
libcurl4-gnutls-dev \
libpq-dev \
libreadline-dev \
libsqlite3-dev \
libssl-dev \
libxml2-dev \
libxslt1-dev \
lolcat \
nfs-kernel-server \
nmap \
pgadmin3 \
python-dev \
python-pip \
python-software-properties \
python3-dev \
python3-pip \
python3.5-dev \
stow \
terminator \
tmux \
tree \
ttf-mscorefonts-installer \
vim \
wget \
whois \
xsel \
yui-compressor \
zlib1g-dev \
zsh

sudo apt-get autoremove
