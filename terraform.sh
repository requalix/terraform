#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

x="$(pwd)"

for i in .*; do
  if [ "$i" != . -a "$i" != .. -a "$i" != .git -a '!' -e ~/"$i" ]; then
    rm -rf ~/"$i"
    ln -s "$x/$i" ~/"$i"
  fi
done

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim +BundleInstall +qall
