#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

x=$(pwd)
for i in .*; do
  [ $i != . -a $i != .. -a $i != .git -a '!' -e ~/$i ] && ln -s "$x/$i" ~/$i
done

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim +BundleInstall +qall

true
