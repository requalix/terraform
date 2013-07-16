#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

x="$(pwd)"

for i in .*; do
  rm -rf ~/"$i"
  if [ "$i" != . -a "$i" != .. -a "$i" != .git -a '!' -e ~/"$i" ]; then
    ln -s "$x/$i" ~/"$i"
  fi
done

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim +BundleInstall +qall
