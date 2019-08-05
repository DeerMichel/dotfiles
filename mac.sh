#!/bin/zsh

echo "- installing macOS updates"
sudo softwareupdate -i -a
echo

echo "- installing Xcode Command Line Tools"
xcode-select --install
echo

echo "- installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
echo

echo "- installing iTerm2"
brew cask install iterm2
echo

echo "- installing yarn"
brew install yarn
echo

echo "- installing Google Chrome"
brew cask install google-chrome
echo

echo "- installing Visual Studio Code"
brew cask install visual-studio-code
echo

echo "- installing Spotify"
brew cask install spotify
echo

echo "- installing Slack"
brew cask install slack
echo