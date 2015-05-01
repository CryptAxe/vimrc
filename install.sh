#!/bin/bash

echo "runtime vimrc" > ~/.vimrc && mkdir ~/.vim && cd ~/.vim &&  cp .tmux.conf ~/ && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall
