#!/usr/bin/env zsh
# Install my Vim plugins

mkdir -p ~/.vim/{autoload,bundle}
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

for vim_plugin in $( cat conf/vim-plugins.txt ); do
  cd ~/.vim/bundle
  git clone $vim_plugin
done

