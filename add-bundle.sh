#!/bin/bash

set -e

if [[ $# -eq 0 ]] ; then
    echo "Error: Missing bundle git url"
    exit 1
fi

pushd .

cd ~/.vim

url=$1
name=$(echo ${url##*/} | sed 's/\.git//')

git submodule add ${url} ${DIR}/bundle/${name}

cat .gitmodules | sed "s/${name}.git/${name}.git\n\tignore = dirty/" > .gitmodules.tmp
mv .gitmodules.tmp .gitmodules

popd
