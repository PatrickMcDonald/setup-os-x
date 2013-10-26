#!/bin/bash

echo Installing homebrew

if [ ! -f /usr/local/bin/brew ]; then
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

brew doctor

brew update


echo Installing RVM

\curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enable

source /Users/Patrick/.rvm/scripts/rvm

rvm install 1.9.3


echo Installing node

brew install node


echo more apps

brew install macvim

brew install bash-completion
