#!/bin/sh

POSIXLY_CORRECT=1

clear
echo "Thanks for using xdbars, enjoy the feeing of being a true soydev with you're epic tiling wm rice and CLI file manager, we hope it fills the void in your heart. Enter [start] to begin your install or anything else to exit. If you tenter anything other than the given options during this installation, install.sh will be exited. "
echo ""

read -p "TO START INSTALATION TYPE 'start' -----> " start

case $start in
	start)
		clear ;;
	*)
		exit ;;
esac

#install needed packages
echo "This will install all needed packages (st, bspwm, sxhkd, ranger, polybar and rofi) to provide you with a fully functional yet minimal system. Without these installed deploy.sh won't work properly and then running bloatdestroyer.sh will give you a broken system (this is bad), that is why we highly recommend running this. Remember, you can cncel at any time with ctrl + c [yes] [no]"
echo ""

read -p "TYPE yes OR no -----> " option1
clear

case $option1 in
   yes)
      sudo ./setup.sh ;;
   no)
      echo -e "We highly recommend running every scipt, if you know what you are doing however, feel free to continue.";;
   *)
	   exit ;;
esac

echo "Now to deploy everything, this will also automate all configuration for you. Without this, you will only have the packages needed, they will simply be installed and not remain in use. For this read we recommend running this. [yes] [no]"
echo ""

read -p "TYPE yes OR no -----> " option4
clear

case $option4 in
   yes)
       ./deploy.sh ;;

   no)
      echo "This means you now have multiple packages installed but not actually doing anything (bloat), this is not a good idea." ;;
    
   *)
	exit ;;
esac

echo "thanks for using xdbars, we hope it worked, if not, that sucks, but feel free to let us know why at https://github.com/xor3n/xdbars. Don't forget to run postinstall.sh after you reboot!! Enter reboot to reboot."
echo ""
read -p "TYPE reboot TO REBOOT YOUR MACHINE -----> " reboot

case $reboot in
	reboot)
		reboot ;;
	*)
		exit ;;
esac
