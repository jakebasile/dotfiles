#!/usr/bin/env zsh

if which xelatex > /dev/null; then
  echo "TeX already installed, skipping."
  exit
fi

curl -o tex.pkg http://tug.org/cgi-bin/mactex-download/MacTeX.pkg
sudo installer -pkg tex.pkg -target /

rm tex.pkg

