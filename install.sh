#!/usr/bin/env bash

BASEDIR=$(cd $(dirname "$0") && pwd)

#\cp -fv $(dirname $0)/bash_aliases $HOME/.bash_aliases
#source $HOME/.bashrc #not working, need to run source additionally

#bash
if [ -f ~/.bashrc ]; then
    rm -v ~/.bashrc
fi
ln -s ${BASEDIR}/bashrc ~/.bashrc
#aliases
if [ -f ~/.bash_aliases.sh ]; then
    rm -v ~/.bash_aliases.sh
fi
ln -s ${BASEDIR}/bash_aliases.sh ~/.bash_aliases.sh


#git
if [ -f ~/.gitconfig ]; then
    rm -v ~/.gitconfig
fi
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
#gitignore
if [ -f ~/.gitignore ]; then
    rm -v ~/.gitignore
fi
ln -s ${BASEDIR}/gitignore ~/.gitignore

unset BASEDIR