if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Sources
/opt/homebrew/bin/brew shellenv | source

# Variables
set -g fish_greeting
set -gx XDG_CONFIG_HOME $HOME/.config

# Aliases
alias sw="cd $HOME/mac-dotfiles && stow --adopt */ && git reset --hard HEAD && cd -"
alias swn="cd $HOME/mac-dotfiles && stow --adopt -nv */ && cd -"
alias br="brew update && brew upgrade && brew bundle install --file ~/mac-dotfiles/Brewfile && brew bundle cleanup --file ~/mac-dotfiles/Brewfile --force"

# Functions
bind \cd run_cd
bind \cj run_nvim
bind \cg run_lazygit
bind \ce run_eza