#!/usr/bin/env zsh
# installs Homebrew and then things I like to use.

# check for OS X
if $(uname -v | grep -vq 'Darwin'); then
  echo "Only works on OS X, what are you doing?"
  exit 1
fi

# check for sudo
if [[ $( sudo whoami ) != 'root' ]]; then
  echo "need sudo access"
  exit 1
fi

echo "installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install $( paste -sd ' ' conf/brew-installs.txt )

