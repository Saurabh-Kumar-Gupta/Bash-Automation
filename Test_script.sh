echo " This script is purely expiermental, run it at your own risk "
read -p "Press any key to continue . . ."; echo
ins(){
    for program in ${list[@]}; do
        sudo apt install $program -y
        echo "$program installed succcesfully"
    done    
}
list=(vlc telegram-desktop ranger neovim firefox figlet ubuntu-restricted-extras gnome-tweaks gparted htop neofetch qbittorrent mpv ifconfig stacer)
ins list
sudo apt update && upgrade -y

 
#echo 'figlet shoo' >> ~/.bashrc
