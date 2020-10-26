#!/bin/bash


pkg install bastet -y
pkg install pacman4console -y
pkg install moon-buggy -y
pkg install nsnake -y
pkg install nudoku -y
apt install nudoku -y
mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1




echo -e "\e[1;31m All games have been installed :)\e[0m "
echo -e "\e[1;31m! To run each game see howto.txt file !!!!!!\e[0m "
echo -e "\e[1;31m !Restart is requried to add extra keys to play games !!\e[0m "

