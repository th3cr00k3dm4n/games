#!/bin/bash
pkg=( "nsnake" "bastet" "nudoku" "moon-buggy" "pacman4console" )
dpkg -s ${pkg[@]} 
if [ $?=1 ]
 then
pkg install ${pkg[@]} -y
fi
echo ""
echo ""
echo ""
echo "Adding extra keys"
echo ""
echo ""
echo ""
mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1
echo ""
echo ""
echo "loading................"
echo ""
echo ""
echo ""
echo ""
clear
echo ""
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

