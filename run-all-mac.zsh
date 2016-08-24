#!/usr/bin/env zsh
# sets up a machine as I like it

if $( uname -v | grep -vq 'Darwin' ); then
  echo "Only works on Ubuntu, what are you doing?"
  exit 1
fi

scripts/brew.zsh
scripts/vim.zsh
scripts/dotfiles.zsh
scripts/clojure.zsh
scripts/go.zsh
scripts/mactex.zsh

