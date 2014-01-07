#!/bin/bash

BASE_FILES=".bashrc \
	.bashrc-prompt \
	.colordiffrc \
	.compton.conf \
	.dircolors \
	.gtkrc-2.0 \
	.inputrc \
	.vimrc \
	.xinitrc \
	.Xresources \
	.yaourtrc"

BASE_DIRS=".vim"

CONFIG_DIRS="bspwm \
	gtk-3.0 \
	sxhkd"

for F in $BASE_FILES $BASE_DIRS
do
	rm -rf $F
	ln -s dotfiles/$F
done

for F in $CONFIG_DIRS
do
	rm -rf .config/$F
	ln -s dotfiles/.config/$F .config/
done

echo git submodule update --init
