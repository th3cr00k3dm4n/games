#!/bin/bash
pkg=( "nsnake" "bastet" "nudoku" "moon-buggy" "pacman4console" )

banner()
{

echo ""
echo "         █▀▀ ▄▀█ █▀▄▀█ █▀▀ █▀"
echo "         █▄█ █▀█ █░▀░█ ██▄ ▄█"
echo "                             "
echo "                             °th3cr00k3dm4n"
}

run_script()
{
  banner

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

}


run_install()
{
    banner
    read -p "Do you want to install missing libraries? [Y/n] :" ans
    if [ $ans == "y" ]
    then
        {
        mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1
        pkg install ${pkg[@]} -y
        if [ $? == 0 ]
        then run_script
        else  echo " failed try again" || run_install
        fi
        }
     else echo "failed" || run_install
    fi
}

dpkg -s ${pkg[@]} >/dev/null 2>&1 || run_install
if [ $? == 0 ]
then run_script
fi
