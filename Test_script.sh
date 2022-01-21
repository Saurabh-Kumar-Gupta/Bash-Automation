echo " This script is purely expiermental, run it at your own risk "
read -p "Press any key to continue . . ."; echo
ins(){
         sudo apt install $program -y
         echo "$program installed succcesfully"
     done    
 }

list=(vlc telegram-desktop ranger neovim firefox figlet ubuntu-restricted-extras gnome-tweaks gparted htop neofetch qbittorrent mpv stacer)
l = ${#list[@]}
echo $l
ins

echo " if you want to install any other software please enter 0 otherwise enter 1"
DEFAULT=0
read INPUT
if [ "$INPUT" -eq "$DEFAULT" ]
then
     read INPUT2	
     ins INPUT2;
else
    echo "No Value Found";
fi
# sudo apt update && sudo apt upgrade -y

 
#echo 'figlet shoo' >> ~/.bashrc
