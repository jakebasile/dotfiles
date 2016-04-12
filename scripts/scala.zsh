#!/usr/bin/env zsh
local version=1.3.9

if which activator > /dev/null; then
  echo "activator is installed, skipping."
  exit
fi

wget https://downloads.typesafe.com/typesafe-activator/$version/typesafe-activator-$version.zip

unzip typesafe-activator-$version.zip
sudo mv activator-dist-$version /usr/local/activator/

# no
sudo rm /usr/local/activator/bin/activator.bat

echo '
# Scala
export PATH=$PATH:/usr/local/activator/bin' >> ~/.path

