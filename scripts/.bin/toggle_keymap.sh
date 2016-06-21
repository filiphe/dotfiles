#!/usr/bin/env bash

CURRENT=$(setxkbmap -query | grep 'layout' | tr -d ' ' | cut -d ':' -f 2)
if [[ $CURRENT == "usaswe" ]]; then
  setxkbmap se
else
  setxkbmap usaswe
fi
