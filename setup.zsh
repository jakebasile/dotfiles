#!/usr/bin/env zsh
# sets up an ubuntu machine as I like it

# check for Ubuntu
if $( uname -v | grep -vq 'Ubuntu' ); then
  echo "Only works on Ubuntu for now."
  exit 1
fi

# check for sudo
if [[ $( sudo whoami ) != 'root' ]]; then
  echo "Need sudo access."
  exit 1
fi

# install requisites
sudo apt-get -y install $( paste -sd ' ' apt-installs.txt )


# install clojure
# install go
# install scala
# install kotlin


