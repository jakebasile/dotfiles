#!/usr/bin/env zsh
# sets up a machine as I like it

if $( uname -v | grep -vq 'Ubuntu' ); then
  echo "Only works on Ubuntu, what are you doing?"
  exit 1
fi

scripts/apt.zsh
scripts/vim.zsh
scripts/dotfiles.zsh
scripts/clojure.zsh
scripts/go.zsh

