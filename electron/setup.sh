#!/bin/zsh

echo "** electron setup **\n"

echo "- installing depot tools"
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git ~/Developer/depot_tools
echo

echo "- copying dotfiles"
cp ./electron.sh ~/.dotfiles

source ~/.zshrc
echo "** let's go **"