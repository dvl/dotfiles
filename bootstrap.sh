#!/bin/bash

set -e

sudo apt-get -y update

sudo apt-get -y dist-upgrade

sudo apt-get -fy install

sudo apt-get install -y \
autofs \
build-essential \
cifs-utils \
curl \
deluge \
git \
google-chrome-stable \
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
nfs-kernel-server \
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

sudo pip install -U pip
sudo pip install virtualenvwrapper ipython

sudo apt-get autoremove
