# mac-dotfiles

## Applications to be installed manually
1. 1Password
2. Google Chrome
3. Spotify
4. Telegram
5. Zoom
6. Slack
7. Claude
8. Homebrew (via CLI)

## Install Homebrew packages and casks
```zsh
brew trust anomalyco/tap
brew trust oven-sh/bun
brew bundle install --file=<(curl -fsSL https://raw.githubusercontent.com/rajdeepsh/mac-dotfiles/main/Brewfile)
```

## Authenticate GitHub and configure Git
```zsh
gh auth login
git config --global user.name "Rajdeep"
git config --global user.email "rajd33psh@gmail.com"
```

## Install dotfiles and configure Mac
```zsh
mkdir -p ~/Repos ~/.config && touch ~/.hushlogin
gh repo clone rajdeepsh/mac-dotfiles ~/Repos/mac-dotfiles
cd ~/Repos/mac-dotfiles && stow --target="$HOME" --adopt --no-folding */ && git restore .
defaults write -g ApplePressAndHoldEnabled -bool false
```
