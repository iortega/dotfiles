#!/usr/bin/env bash
set -e

echo "  Installing rbenv"
brew install rbenv ruby-build 2> /dev/null

echo "    Installing rbenv plugins"
brew install rbenv-readline rbenv-aliases rbenv-bundler rbenv-gem-rehash rbenv-default-gems 2> /dev/null

cp ruby/default-gems $HOME/.rbenv/default-gems

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
  
if [[ ! -n `rbenv versions | grep 1.9.3-p545` ]]; then
  echo "    Installing ruby 1.9.3-p545"
  rbenv install 1.9.3-p545
fi
if [[ ! -n `rbenv versions | grep 2.0.0-p451` ]]; then
  echo "    Installing ruby 2.0.0-p451"
  rbenv install 2.0.0-p451
fi
if [[ ! -n `rbenv versions | grep 2.1.1` ]]; then
  echo "    Installing ruby 2.1.1"
  rbenv install 2.1.1
fi