#!/bin/bash
#debian 9

#Curl
apt install curl -y

#USB realtek internet
sh -c "echo 'deb http://httpredir.debian.org/debian/ stretch main contrib non-free' >> /etc/apt/sources.list"
apt update
apt install firmware-realtek

#atom
apt-get install apt-transport-https -y
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | apt-key add -
sh -c "echo 'deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main' > /etc/apt/sources.list.d/atom.list"
apt-get update
apt-get install atom -y

#git
apt-get install git-core

#docker
#fjern gamle installationer
sudo apt-get remove docker docker-engine docker.io
apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce
