#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for FILE in .screenrc .gitconfig .gitignore_global; do
    if [ -f ~/$FILE ];
    then
        echo "Not linking ~/$FILE as it already exists"
    else
        echo "linking ~/$FILE to $DIR/$FILE"
        ln -s $DIR/$FILE ~/$FILE
    fi
done
