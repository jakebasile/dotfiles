#!/usr/bin/env zsh
# Link dotfiles to proper locations

# BSD readlink is no good
# need to install greadlink on OS X
if [[ `uname -s` = "Darwin" ]]; then
  alias readlink=/usr/local/bin/greadlink
fi

mkdir ~/.lein
mkdir ~/.devilspie

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

