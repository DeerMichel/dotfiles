#!/bin/zsh

echo "** dotfiles by @deermichel **\n"

echo "- installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo

echo "- installing Node Version Manager (nvm)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
source ~/.zshrc
echo

echo "- installing node"
nvm install node
echo

# os-specific setup
if [[ "$OSTYPE" == "darwin"* ]]; then
    source ./mac.sh
else
    echo "!! no os-specific setup for '$OSTYPE'"
fi

echo "- creating ~/Developer folder"
mkdir -p ~/Developer

echo "- creating ~/.dotfiles folder"
mkdir -p ~/.dotfiles

echo "- installing dotfiles loader"
if ! grep -q "# dotfiles loader" ~/.zshrc; then
    echo -e "\n# dotfiles loader" >> ~/.zshrc
    echo "for f in ~/.dotfiles/*; do [ -s \$f ] && source \$f; done" >> ~/.zshrc
fi
touch ~/.dotfiles/suppress_no_matches_warning

source ~/.zshrc
echo "** let's go **"