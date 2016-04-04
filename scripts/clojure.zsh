#!/usr/bin/env zsh
# installs leiningen

if which lein > /dev/null; then
  echo "Leinigen already installed, skipping."
  exit
fi

curl -o lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x lein
sudo mv lein /usr/local/bin

