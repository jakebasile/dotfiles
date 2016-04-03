#!/usr/bin/env zsh
# sets up a machine as I like it

# BSD readlink is no good
# need to install greadlink on OS X
if [[ `uname -s` = "Darwin" ]]; then
  alias readlink=/usr/local/bin/greadlink
fi

# check for Ubuntu
if $( uname -v | grep -vq 'Ubuntu' ); then
  echo "Only works on Ubuntu for now."
else
  # check for sudo
  if [[ $( sudo whoami ) != 'root' ]]; then
    echo "Need sudo access."
  else
    sudo apt-get -y install $( paste -sd ' ' apt-installs.txt )
  fi
fi

# install clojure
# install go
# install scala
# install kotlin

# link dotfiles
for relative_source_file in $( find files -type f ); do
  source_file=$(readlink -f $relative_source_file)
  dest_file=$HOME/`echo $relative_source_file | sed "s/files\//./"`
  if [[ -e $dest_file ]]; then
      echo "$dest_file already exists. Skipping."
  else
      echo "ln -s $source_file $dest_file"
      ln -s $source_file $dest_file
  fi
done

# install vim stuff
mkdir -p ~/.vim/{autoload,bundle}
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

for vim_plugin in $( cat vim-plugins.txt ); do
  cd ~/.vim/bundle
  git clone $vim_plugin
done

