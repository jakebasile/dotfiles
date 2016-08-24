#!/usr/bin/env zsh
local version=1.7

if which go > /dev/null && go version | grep -q $version; then
  echo "Go already installed, skipping."
  exit
fi

if [[ `uname -s` = "Darwin" ]]; then
  curl -o go.pkg https://storage.googleapis.com/golang/go$version.darwin-amd64.pkg
  sudo installer -pkg go.pkg -target /
  rm go.pkg
elif [[ `uname -s` = "Linux" ]]; then
  curl -o go.tgz https://storage.googleapis.com/golang/go$version.linux-amd64.tar.gz
  sudo tar -C /usr/local -xzf go.tgz
  rm go.tgz
fi


echo '
# Golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
' >> ~/.path
