#!/bin/zsh

source ./common/print.sh
bold " * Misc *"

# create dev folder
info "Creating ~/Developer folder"
mkdir -p ~/Developer

# dotfiles loader
info "Installing dotfiles loader"
mkdir -p ~/.dotfiles
cp ./common/dotfiles_loader.sh ~/.dotfiles/loader.sh
echo -e "\n# dotfiles loader" >> ~/.zshrc
echo "[ -s ~/.dotfiles/loader.sh ] && source ~/.dotfiles/loader.sh" >> ~/.zshrc

# source current setup
source ~/.zshrc