#!/bin/zsh

echo "- setting preferences"
# general: show all file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# general: disable are you sure to open this app dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
# general: disable text autocorrect
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
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
defaults write com.apple.dock size-immutable -bool yes
# dock: hide recents
defaults write com.apple.dock show-recents -bool false
# menubar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string YES
# restart apps
killall "Finder" &> /dev/null
killall "Dock" &> /dev/null
killall "SystemUIServer" &> /dev/null

echo "- installing macOS updates"
sudo softwareupdate -i -a
echo

echo "- installing Xcode Command Line Tools"
xcode-select --install
echo

echo "- installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade
echo

echo "- installing iTerm2"
brew install iterm2
# disable prompt when quitting iterm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
echo

echo "- installing Google Chrome"
brew install google-chrome
echo

echo "- installing Visual Studio Code"
brew install visual-studio-code
echo

echo "- installing Spotify"
brew install spotify
echo

echo "- installing Slack"
brew install slack
echo
