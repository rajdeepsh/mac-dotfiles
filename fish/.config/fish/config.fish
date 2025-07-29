if status is-interactive
    # Commands to run in interactive sessions can go here
end
/opt/homebrew/bin/brew shellenv | source
set -g fish_greeting
set -gx XDG_CONFIG_HOME $HOME/.config

alias sw="cd $HOME/mac-dotfiles && stow --adopt */ && git reset --hard HEAD && cd -"
alias swn="cd $HOME/mac-dotfiles && stow --adopt -nv */ && cd -"