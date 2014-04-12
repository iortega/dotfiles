#!/usr/bin/env bash
set -e

echo "  Installing pyenv"
brew install pyenv 2> /dev/null

echo "    Installing pyenv plugins"
brew install pyenv-pip-rehash pyenv-virtualenv pyenv-virtualenvwrapper 2> /dev/null

if [ ! -d "$HOME/.pyenv/plugins/pyenv-doctor" ]; then
  echo "      Installing pyenv-doctor"
  git clone git://github.com/yyuu/pyenv-doctor.git ~/.pyenv/plugins/pyenv-doctor
fi

if [ ! -d "$HOME/.pyenv/plugins/pyenv-update" ]; then
  echo "      Installing pyenv-update"  
  git clone git://github.com/yyuu/pyenv-update.git ~/.pyenv/plugins/pyenv-update
fi

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
# 
# if [ ! `pyenv versions | grep 2.7.6` ]; then
#   echo "    Installing python 2.7.6"
#   pyenv install 2.7.6
# fi

if [[ ! -n `pyenv versions | grep 2.7.6` ]]; then
  echo "    Installing python 2.7.6"
  pyenv install 2.7.6
fi

if [[ ! -n `pyenv versions | grep 3.4.0` ]]; then
  echo "    Installing python 3.4.0"
  pyenv install 3.4.0
fi