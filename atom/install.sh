#!/usr/bin/env bash
set -e

brew cask install atom

# eslint setup
apm install intentions busy-signal linter-ui-default linter linter-eslint

# editor utils
apm install atom-copy-on-select

# ruby/rails

# js / node / react
apm install react-snippets

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

if [ ! -d "$HOME/.atom/packages/iortega-snippets" ]; then
  ln -s $SCRIPTPATH/iortega-snippets $HOME/.atom/packages
fi
