#!/bin/bash

pacaur -Syu --noconfirm
pacaur -S $(cat package_list) --noconfirm

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

for f in $(ls .)
do
  if [[ -d $f ]]; then
    stow $f
  fi
done

