#!/bin/bash

pacaur -Syu --noconfirm
pacaur -S $(cat package_list) --noconfirm

zsh prezto.zsh

rm -f $HOME/.zprezto/runcoms/z*

for f in $(ls .)
do
  stow $f
done

setroot --store $HOME/.config/herbstluftwm/wallhaven-170258.jpg
