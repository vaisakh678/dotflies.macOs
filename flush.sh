#!/bin/bash

###### creating paths ######
mkdir -p ~/Pictures/Screenshots
mkdir -p /Users/${USER}/.config
mkdir -p /Library/Developer/CommandLineTools/usr/include/c++/v1
sudo mkdir -p /usr/local/include/
sudo mkdir -p /usr/local/bin



###### plist configs ######

sudo ln -s ${PWD}/src/plists/com.googlecode.iterm2.plist ~/Library/Preferences/
# enabling key repeat for vscode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
# setting Kcreenshot path
defaults write com.apple.screencapture location /Users/${USER}/Pictures/Screenshots
# setting Key repeat rate
defaults write -g KeyRepeat -int 5
# setting Delay untile repeat
defaults write -g InitialKeyRepeat -int 15



###### Syncing configs ######

sudo ln -s ${PWD}/src/config/iterm2 /Users/${USER}/.config
sudo ln -s ${PWD}/src/config/nvim /Users/${USER}/.config
sudo ln -s ${PWD}/src/config/qBittorrent /Users/${USER}/.config



# bits installination
sudo ln -s ${PWD}/src/bits /usr/local/include/
sudo ln -s ${PWD}/src/bits /Library/Developer/CommandLineTools/usr/include/c++/v1 # for intelisence..

# setting gcc path
if [[ ! -f "/opt/homebrew/bin/gcc-11" && "/opt/homebrew/bin/g++-11" ]];
then
    echo "gcc-11 not found! program exiting.."
    exit
fi
sudo ln -s /opt/homebrew/bin/gcc-11 /usr/local/bin/gcc
sudo ln -s /opt/homebrew/bin/g++-11 /usr/local/bin/g++





