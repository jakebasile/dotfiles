#!/usr/bin/env zsh

for dir in $( ls ~/.vim/bundle ); do
  echo updating $dir
  cd ~/.vim/bundle/$dir
  git pull origin master
done

