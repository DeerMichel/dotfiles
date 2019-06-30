#!/bin/bash

source ./common/print.sh
bold " * Electron *"

# depot tools
info "Installing depot tools"
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git ~/Developer/depot_tools

# exports and aliases
info "Copying dotfiles"
mkdir -p ~/.dotfiles/aliases
cp ./electron/aliases ~/.dotfiles/aliases/electron
mkdir -p ~/.dotfiles/exports
cp ./electron/exports ~/.dotfiles/exports/electron

# source current setup
source ~/.zshrc