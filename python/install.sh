#!/usr/bin/env bash
set -e

echo "  Installing pyenv"
brew install pyenv 2> /dev/null

echo "    Installing pyenv plugins"
brew install pyenv-virtualenv pyenv-virtualenvwrapper 2> /dev/null

if [ ! -d "$HOME/.pyenv/plugins/pyenv-doctor" ]; then
  echo "      Installing pyenv-doctor"
  git clone git://github.com/pyenv/pyenv-doctor.git ~/.pyenv/plugins/pyenv-doctor
fi

if [ ! -d "$HOME/.pyenv/plugins/pyenv-update" ]; then
  echo "      Installing pyenv-update"  
  git clone git://github.com/pyenv/pyenv-update.git ~/.pyenv/plugins/pyenv-update
fi

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

if [[ ! -n `pyenv versions | grep 2.7.16` ]]; then
  echo "    Installing python 2.7.16"
  pyenv install 2.7.16
fi

if [[ ! -n `pyenv versions | grep 3.7.4` ]]; then
  echo "    Installing python 3.7.4"
  pyenv install 3.7.4
fi