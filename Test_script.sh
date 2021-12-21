echo " This script is purely expiermental, run it at your own risk "
read -p "Press any key to continue . . ."; echo
ins() {
    sudo apt install $1
    echo " $1 installed Succesfully"
}

ins vlc
ins telegram-desktop
ins ranger
ins neovim
ins firefox
# sudo apt update
