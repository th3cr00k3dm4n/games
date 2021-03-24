#!/bin/bash
#plz don't copy this code without giving me credit
#you don't become codder by copying !
pkg=( "nsnake" "bastet" "nudoku" "moon-buggy" "pacman4console" "ninvaders" "nethack"  )

banner()
{

echo ""
echo "         █▀▀ ▄▀█ █▀▄▀█ █▀▀ █▀"
echo "         █▄█ █▀█ █░▀░█ ██▄ ▄█"
echo "                   𝔽𝕆ℝ 𝕋𝔼ℝ𝕄𝕌𝕏    "
echo "                  {th3cr00k3dm4n}"
echo "     -------------https://bit.ly/th3cr00k3dm4n--------------- ”
echo "   #plz don't copy this code without giving me credit "
echo "   #you don't become codder by copying ! "
echo " ---------------------------------------++++------------------------------------------"
}

run_script()
{
  banner

PS3='SELECT A GAME : '
options=("snake" "sudoku" "pacman" "moon-buggy" "tetris" "ninvaders" "nethack" "About" "Quit")
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

         "ninvaders")
         clear
            nInvaders       
            
  
  break
            ;;

         "nethack")
         clear
            nethack   
            
 break
            ;;

         "About")
         clear
  banner
  echo "𝔾𝔸𝕄𝔼𝕊 𝔽𝕆ℝ 𝕋𝔼ℝ𝕄𝕌𝕏"
  echo ""
  echo "Codded by : th3cr00kedm4n
  echo "visit https://bit.ly/th3cr00k3dm4n for more"
  echo "thanks for your support and don't forget to give a star on github"
  echo "GitHub : https://github.com/th3cr00k3dm4n "
  
            
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
