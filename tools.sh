#!/bin/bash

echo "Installing tools"
sudo apt update
sudo apt install htop terminator build-essential zsh git wget

echo "Setting zsh as main shell"
ZSH_DIR=$( which zsh )
chsh -s $zsh_dir $USER
chsh -s $zsh_dir root

echo "Installing oh-my-zsh"
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh 
zsh install.sh

cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc

