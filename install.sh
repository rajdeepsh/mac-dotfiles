#!/bin/bash
set -e

echo "Configuring Mac..."

# Keyboard settings
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 1

# Make default directories
mkdir -p $HOME/Projects $HOME/.config

echo "Installing Packages..."

fastfetch
for i in {5..1}; do
    echo "Rebooting in $i ..."
    sleep 1
done
sudo shutdown -r now