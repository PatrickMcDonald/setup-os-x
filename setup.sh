#!/bin/bash

read -p "WARNING: This script is completely untested. Do you wish to continue? [yN] " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
fi

# install homebrew

if [ ! -f /usr/local/bin/brew ]; then
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

brew doctor

read -p "Do you wish to continue? [yN] " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
fi

brew update

# install RVM

\curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enable

source /Users/Patrick/.rvm/scripts/rvm

rvm install 1.9.3


# install RVM

brew install node
