#!/bin/bash

rm -i ~/.inputrc
ln -s ~/dotfiles/.inputrc ~/.inputrc

rm -i ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

rm -i ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.vimrc

rm -irf ~/.vim
ln -s ~/dotfiles/.vim ~/.vim
