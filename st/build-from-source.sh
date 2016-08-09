#!/usr/bin/env bash

git clone http://git@git.suckless.org/st
cp ./config.mk st/
cp ./config.h st/
cp ./st-git-20151106-scrollback-mouse.diff st/
cp ./st-git-20151217-scrollback.diff st/
cp ./st-git-20160203-scrollback-mouse-altscreen.diff st/
cd st/
git apply st-git-20151217-scrollback.diff
git apply st-git-20151106-scrollback-mouse.diff
git apply st-git-20160203-scrollback-mouse-altscreen.diff
make
sudo make install
cd ..
rm -rf st/
