#!/bin/zsh

echo "- setting preferences"
# general: show all file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# general: disable text autocorrect
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
# finder: show connected servers on desktop
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
# finder: new finder window shows documents folder
defaults write com.apple.finder NewWindowTarget -string "PfDo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Documents/"
# finder: no recent tags
defaults write com.apple.finder ShowRecentTags -bool false
# finder: list view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder FXPreferredSearchViewStyleVersion -string "Nlsv"
# dock: set icon size
defaults write com.apple.dock tilesize -int 48
# dock: hide recents
defaults write com.apple.dock "show-recents" -bool false
# restart apps
killall "Finder" &> /dev/null
killall "Dock" &> /dev/null

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
# disable prompt when quitting iterm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
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