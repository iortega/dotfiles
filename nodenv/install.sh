#!/usr/bin/env bash
set -e

echo "  Installing nodenv"
git clone https://github.com/OiNutter/nodenv.git ~/.nodenv 2> /dev/null
git clone git://github.com/OiNutter/node-build.git ~/.nodenv/plugins/node-build 2> /dev/null
git clone https://github.com/nicknovitski/nodenv-default-packages.git ~/.nodenv/plugins/nodenv-default-packages 2> /dev/null
git clone https://github.com/OiNutter/nodenv-vars.git ~/.nodenv/plugins/node-vars 2> /dev/null

cp nodenv/default-packages $HOME/.nodenv/default-packages

if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

if [[ ! -n `nodenv versions | grep 0.11.9` ]]; then
  echo "    Installing node 0.11.9"
  nodenv install 0.11.9
fi
