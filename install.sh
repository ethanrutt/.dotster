#!/bin/bash

cwd="$(pwd)"
echo "$cwd"

echo "switching to ~ dir and installing common packages"
cd ~
sudo apt update
sudo apt install git
sudo apt install python
sudo apt install npm
sudo apt install nvim
sudo apt install tmux
sudo apt install oh-my-posh
sudo apt install fzf

echo "cloning oh-my-posh"
echo "!!!"
echo "remember to move themes out of oh-my-posh, set themes dir in bashrc, and you can delete the rest"
echo "!!!"
git clone https://github.com/JanDeDobbeleer/oh-my-posh.git

echo "switching back to .dotster and linking dotfiles"
cd "$cwd"
./link.sh
