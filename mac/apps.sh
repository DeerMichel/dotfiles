#!/bin/bash

bold " * Applications *"

# macOS updates
info "Installing macOS updates"
sudo softwareupdate -i -a

# Xcode
info "Installing Xcode Command Line Tools"
xcode-select --install

# Homebrew
info "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
info "Updating Homebrew"
brew update
brew upgrade

# iTerm2
info "Installing iTerm2"
brew cask install iterm2

# zsh
info "Installing zsh"
brew install zsh
info "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# nvm
info "Installing Node Version Manager (nvm)"
brew install nvm
mkdir -p ~/.nvm
# load nvm to install node (later in .*rc file)
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# Node
info "Installing Node"
nvm install node

# Yarn
info "Installing Yarn"
brew install yarn

# Google Chrome
info "Installing Google Chrome"
brew cask install google-chrome

# VSCode
info "Installing Visual Studio Code"
brew cask install visual-studio-code

# Spotify
info "Installing Spotify"
brew cask install spotify

# Slack
info "Installing Slack"
brew cask install slack