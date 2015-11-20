#!/bin/bash

pacaur -Syu
pacaur -S git
pacaur -S $(cat package_list)

zsh prezto.zsh

rm -f $HOME/.zprezto/runcoms/z*

for f in $(ls .)
do
  stow $f
done
