#!/usr/bin/env bash
set -e

if [ ! -d "$HOME/.vim/bundle/vundle" ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

if [[ ! -d "$HOME/.vim/colors" ]]; then
  mkdir -p "$HOME/.vim/colors"
  cp vim/railscasts.vim "$HOME/.vim/colors"
fi

vim -u ~/.vimrc.bundles +BundleInstall +qa