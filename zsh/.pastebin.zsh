#!/usr/bin/env zsh


pb () {
    curl -F "c=@${1:--}" https://ptpb.pw/
}