#!/usr/bin/env zsh
# Updates Ubuntu and installs things I like to use

# check for Ubuntu
if $( uname -v | grep -vq 'Ubuntu' ); then
  echo "Only works on Ubuntu, what are you doing?"
  exit 1
fi

if [[ $( sudo whoami ) != 'root' ]]; then
  echo "Need sudo access."
  exit 1
fi

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install $( paste -sd ' ' conf/apt-installs.txt )

