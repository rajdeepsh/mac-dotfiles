# mac-dotfiles

## Applications to be installed manually
1. 1Password
2. Google Chrome
3. Spotify
4. Telegram
5. Zoom
6. Homebrew (via CLI)

## Install Homebrew packages and casks
```zsh
brew trust anomalyco/tap
brew trust oven-sh/bun
brew bundle install --file=<(curl -fsSL https://raw.githubusercontent.com/rajdeepsh/mac-dotfiles/main/Brewfile)
```

## Setup GitHub and Git
```zsh
gh auth login
git config --global user.name "Rajdeep"
git config --global user.email "rajd33psh@gmail.com"
```

## Setup Mac
```zsh
mkdir -p ~/Repos ~/.config
gh repo clone rajdeepsh/mac-dotfiles ~/Repos/mac-dotfiles
cd ~/Repos/mac-dotfiles
stow --target="$HOME" --no-folding */
```
