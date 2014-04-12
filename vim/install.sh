#!/usr/bin/env bash
set -e

if [ ! -d "$HOME/.vim/bundle/vundle" ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
vim -u ~/.vimrc.bundles +BundleInstall +qa