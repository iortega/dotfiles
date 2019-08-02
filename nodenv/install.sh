#!/usr/bin/env bash
set -e

echo "  Installing nodenv"
brew install nodenv

# brew install nodenv/nodenv/nodenv-default-packages
# cp nodenv/default-packages $(nodenv root)/default-packages

if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

if [[ ! -n `nodenv versions | grep 12.4.0` ]]; then
  echo "    Installing node 12.4.0"
  nodenv install 12.4.0
fi
