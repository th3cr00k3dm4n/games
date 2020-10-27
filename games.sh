#!/bin/bash
clear
pkg=("bastet" "pacman4console" "moon-buggy" "nsnake" "nudoku")
 dpkg -s ${pkg[@]}
if [ $?=0 ];
 then
mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1
     echo " GAMES ARE ALREADY INSTALLED"
   else
 [ pkg install ${pkg[@]} -y ]
 mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1

echo ""
echo ""
echo "loading games..........."
echo ""
fi
clear
echo -e "\e[1;31m All games have been installed :)\e[0m "
echo -e "\e[1;31m !Restart is requried to add extra keys to play games !!\e[0m "
clear
printf '\033[8;40;100t'
echo  "█▀▀ ▄▀█ █▀▄▀█ █▀▀ █▀"
echo  "█▄█ █▀█ █░▀░█ ██▄ ▄█"
echo "                                      "
echo  "                    th3cr00k3dm4n"

PS3='SELECT A GAME : '
options=("snake" "sudoku" "pacman" "moon-buggy" "tetris" "Quit")
select opt in "${options[@]}"
do
    case $opt in

        "snake")
        clear
           nsnake
break
           ;;

         "sudoku")
         clear
            nudoku
break
   ;;

        "pacman")
        clear
            pacman
break
            ;;

        "moon-buggy")
        clear
            moon-buggy
break
            ;;

         "tetris")
         clear
            bastet
break
            ;;
        "Quit")
        echo "exiting ...."
            break
            ;;

        *) echo "INVALID OPTION $REPLY";;
    esac
done



