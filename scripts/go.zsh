#!/usr/bin/env zsh
local version=1.6

if which go > /dev/null; then
  echo "Go already installed, skipping."
  exit
fi

if [[ `uname -s` = "Darwin" ]]; then
  curl -o go.tgz https://storage.googleapis.com/golang/go$version.darwin-amd64.pkg
elif [[ `uname -s` = "Linux" ]]; then
  curl -o go.tgz https://storage.googleapis.com/golang/go$version.linux-amd64.pkg
fi

sudo tar -C /usr/local -xzf go.tgz
rm go.tgz

echo 'export GOPATH=/usr/local/go
export PATH=$PATH:$GOPATH/bin
export GOROOT=$HOME/go' >> ~/.path
