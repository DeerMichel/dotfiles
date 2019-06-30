#!/bin/zsh

source ./common/print.sh
bold " * Electron *"

# TODO: zsh patch

# depot tools
info "Installing depot tools"
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git ~/Developer/depot_tools

# dotfiles
info "Copying dotfiles"
mkdir -p ~/.dotfiles/aliases
cp ./electron/aliases ~/.dotfiles/aliases/electron
mkdir -p ~/.dotfiles/exports
cp ./electron/exports ~/.dotfiles/exports/electron

# source current setup
source ~/.zshrc