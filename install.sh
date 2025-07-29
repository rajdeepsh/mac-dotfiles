#!/bin/bash
set -e

echo "Configuring Mac..."

# Keyboard settings
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 1

# Make default directories
mkdir -p $HOME/Projects $HOME/.config $HOME/.ssh

# Copy over keys
cp -R /Users/rajdeep/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/.ssh/* $HOME/.ssh/

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install git stow

echo "Installing Packages..."
brew bundle install --file $HOME/mac-dotfiles/Brewfile

fastfetch
for i in {5..1}; do
    echo "Rebooting in $i ..."
    sleep 1
done
sudo shutdown -r now