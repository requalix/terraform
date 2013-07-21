#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

x="$(pwd)"

for i in .*; do
  if [ "$i" != . -a "$i" != .. -a "$i" != .git ]; then
    rm -rf ~/"$i"
    ln -s "$x/$i" ~/"$i"
  fi
done

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

settings="
[legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9]
background-color='rgb(0,0,0)'
scrollbar-policy='never'
use-theme-colors=false
foreground-color='rgb(255,255,255)'
use-system-font=false
font='Monospace 8'

[legacy]
schema-version=uint32 3
default-show-menubar=false"

echo "$settings" | dconf load /org/gnome/terminal/

vim +BundleInstall +qall
