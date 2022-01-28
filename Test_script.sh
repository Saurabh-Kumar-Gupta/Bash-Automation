echo " This script is purely expiermental, run it at your own risk "
read -p "Press any key to continue . . ."; echo
ins(){
    apt-cache search $1|grep "^$1 "
    if [ $? -eq 0 ] 
    then 
    sudo apt install $1 -y
    echo "$1 installed succcesfully"
    else 
    echo "$1 Not found in apt repositories"
    fi     
 }

declare -a list=(vlc telegram-desktop ranger neovim firefox figlet ubuntu-restricted-extras gnome-tweaks gparted htop neofetch qbittorrent mpv stacer lolcat)
l=${#list[@]}
for((i=0;i<$[l]; i++));
do
   ins ${list[$i]}
done   
echo " if you want to install any other software please enter 0 otherwise enter 1"
DEFAULT=0
read INPUT
if [ "$INPUT" -eq "$DEFAULT" ]
then
     read INPUT2	
     ins $INPUT2;
else
    echo "No Value Found";
fi

# ---------------------------aliashes------------------------------------------

echo "# user edited effects" >> ~/.bashrc
echo "figlet capta1n_Saurabh | lolcat" >> ~/.bashrc
echo "neofetch --ascii_distro Dragonfly" >> ~/.bashrc

echo "#aliases of package manager" >> ~/.bashrc
echo "alias aptup='sudo apt update'" >> ~/.bashrc
echo "'alias aptud='sudo apt upgrade'" >> ~/.bashrc
echo "alias aptu='sudo apt update && sudo apt upgrade -y'" >> ~/.bashrc

echo "'#alias" >> ~/.bashrc
echo "'alias cat='batcat'" >> ~/.bashrc
alias "ls='lsd'" >> ~/.bashrc
alias "sbrc='source ~/.bashrc'" >> ~/.bashrc
alias "nbrc='sudo nvim ~/.bashrc'" >> ~/.bashrc