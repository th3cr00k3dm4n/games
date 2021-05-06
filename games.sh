#!/bin/bash
#last updated on :6-5-2020-19:32
#codded by th3cr00k3dm4n
pkg=( "nsnake" "bastet" "nudoku" "moon-buggy" "pacman4console"   )

banner()
{

echo ""
echo "         █▀▀ ▄▀█ █▀▄▀█ █▀▀ █▀"| lolcat
echo "         █▄█ █▀█ █░▀░█ ██▄ ▄█"| lolcat 
echo "                𝔽𝕆ℝ 𝕋𝔼ℝ𝕄𝕌𝕏    "| lolcat 
echo "--------------[th3cr00k3dm4n]--------------"| lolcat -a -d 50
}

run_script()
{
  banner

PS3='SELECT A GAME : '
options=("snake" "sudoku" "pacman" "moon-buggy" "tetris"  "About" "Quit")
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

         "About")
         clear
         banner
         echo "𝔾𝔸𝕄𝔼𝕊 𝔽𝕆ℝ 𝕋𝔼ℝ𝕄𝕌𝕏"| lolcat -a -d 500
         echo ""
         echo "Codded by : th3cr00kedm4n"
         echo "visit https://bit.ly/th3cr00k3dm4n for more"
         echo "thanks for your support and don't forget to give a star on github"
         echo "GitHub : https://github.com/th3cr00k3dm4n"
  
            
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
        pkg install ruby -y && gem install lolcat &&  pkg install ${pkg[@]} -y
        if [ $? == 0 ]
        then run_script
        else  echo " failed try again" || run_install
        fi
        }
     else echo "failed" || run_install
    fi
}

echo "installing dependency please wait " && sleep 3



dpkg -s ${pkg[@]} >/dev/null 2>&1 || run_install
if [ $? == 0 ]
then run_script
fi

