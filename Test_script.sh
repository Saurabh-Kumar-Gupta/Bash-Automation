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

declare -a list=(vlc telegram-desktop ranger neovim firefox figlet ubuntu-restricted-extras gnome-tweaks gparted htop neofetch qbittorrent mpv stacer lolcat xterm)
l=${#list[@]}
for((i=0;i<$[l]; i++));
do
   ins ${list[$i]}
done   



for (( i=0; i<1000; i++ ));
do
   echo " if you want to install any other software please enter 0 otherwise enter 1" 
   DEFAULT=0
   read INPUT
   if [ "$INPUT" -eq "$DEFAULT" ]
    then
      read INPUT2	
      ins $INPUT2;
   else
      echo "Alrighty love bye bye";
      break
   fi
done

wget -O /tmp/wallpaper.jpg "http://www.bing.com/$(wget -q -O- https://binged.it/2ZButYc | sed -e 's/<[^>]*>//g' | cut -d / -f2 | cut -d \& -f1)"
gsettings set org.gnome.desktop.background picture-uri file:////tmp/wallpaper.jpg


# ---------------------------aliashes and effects------------------------------------------

# echo "# user edited effects" >> ~/.bashrc
# echo "figlet capta1n_Saurabh | lolcat" >> ~/.bashrc
# echo "neofetch --ascii_distro Dragonfly" >> ~/.bashrc

# echo "#aliases of package manager" >> ~/.bashrc
# echo "alias aptup='sudo apt update'" >> ~/.bashrc
# echo "'alias aptud='sudo apt upgrade'" >> ~/.bashrc
# echo "alias aptu='sudo apt update && sudo apt upgrade -y'" >> ~/.bashrc

# echo "'#alias" >> ~/.bashrc
# echo "'alias cat='batcat'" >> ~/.bashrc
# echo "alias ls='lsd'"  >> ~/.bashrc
# echo "alias sbrc='source ~/.bashrc'"  >> ~/.bashrc
# echo "alias nbrc='sudo nvim ~/.bashrc'"  >> ~/.bashrc