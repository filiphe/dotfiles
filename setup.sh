#!/bin/bash

pacaur -Syu --noconfirm
pacaur -S $(cat package_list) --noconfirm

curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.antigen.zsh

for f in $(ls .)
do
  stow $f
done

setroot --store $HOME/.config/herbstluftwm/wallhaven-170258.jpg
