#!/bin/bash


ins_theme() {
    wget $1
    name=$(echo "$1"|awk -F/ '{print $NF}')
    tar -xvf $name
    fname=$(echo "$name"|awk -F. '{print $1}')
    mv $fname ~/.themes
    rm -rf $name
}

echo " if you want to install any other themes press 0 if not then press 1"



# Nordic 
link_1=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/Nordic-darker-v40.tar.xz

# Juno -1 themes
link_2=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/Juno-ocean-v40.tar.xz

#juno -2 theme
link_3=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/Juno-palenight-v40.tar.xz

# Kimi Theme
link_4=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/Kimi-v40.tar.xz

#Graphite theme -1
link_5=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/Graphite-dark-nord.tar.xz

#Graphics theme -2
link_6=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/Graphite-dark.tar.xz

#Graphite Theme -3 
link_7=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/Graphite-light-nord.tar.xz

# WhiteSur[MAC] Theme 
link_8=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/WhiteSur-dark.tar.xz

# WhiteSur[MAC] Theme 
link_9=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/WhiteSur-light.tar.xz

# Layan Dark Theme 
link_10=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/Layan-dark.tar.xz

# Layan Light Theme
link_11=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/Layan-light.tar.xz

link_Test=https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Themes/Layan-light.tar.xz
ins_theme $link_Test









# #Icons
# wget https://github.com/Saurabh-Kumar-Gupta/Bash-Automation/raw/main/Icons/WhiteSur-red.tar.xz
# tar -xvf WhiteSur-red.tar.xz
# mv WhiteSur-red ~/.icons
# rm -rf WhiteSur-red.tar.xz






