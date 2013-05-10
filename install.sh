#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

x=$(pwd)
for i in .*; do
  [ $i != . -a $i != .. -a $i != .git -a '!' -e ~/$i ] && ln -s "$x/$i" ~/$i
done

true
