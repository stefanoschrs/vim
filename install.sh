#!/bin/bash

### Project dependencies
if [[ `whereis git` == "git:" ]]; then
  echo "Unmet dependency: git"
  exit 1
fi
if [[ `whereis curl` == "curl:" ]]; then
  echo "Unmet dependency: curl"
  exit 1
fi

### Main

git clone --recursive https://github.com/stefanoschrs/vim ~/.vim

ln -s ~/.vim/vimrc ~/.vimrc
