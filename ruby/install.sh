#!/usr/bin/env bash
set -e

echo "  Installing rbenv"
brew install rbenv ruby-build 2> /dev/null

echo "    Installing rbenv plugins"
brew install rbenv-readline rbenv-aliases rbenv-bundler rbenv-gem-rehash rbenv-default-gems 2> /dev/null

cp ruby/default-gems $HOME/.rbenv/default-gems

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [[ ! -n `rbenv versions | grep 2.5.1` ]]; then
  echo "    Installing ruby 2.5.1"
  rbenv install 2.5.1
fi
if [[ ! -n `rbenv versions | grep 2.6.3` ]]; then
  echo "    Installing ruby 2.6.3"
  rbenv install 2.6.3
fi