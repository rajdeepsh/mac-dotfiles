# mac-dotfiles

## Install applications manually
1. 1Password
2. Google Chrome
3. Spotify
4. Telegram
5. Zoom
6. Outlook
7. Slack
8. Claude
9. Homebrew

## Install Homebrew packages and casks
```zsh
brew bundle install --file=<(curl -fsSL https://raw.githubusercontent.com/rajdeepsh/mac-dotfiles/main/Brewfile)
```

## Authenticate GitHub and configure Git
```zsh
gh auth login
git config --global user.name "Rajdeep"
git config --global user.email "rajd33psh@gmail.com"
```

## Configure Mac
```zsh
mkdir -p ~/Work
defaults write -g ApplePressAndHoldEnabled -bool false
```
