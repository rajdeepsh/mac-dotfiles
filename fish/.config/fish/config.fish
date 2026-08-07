if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -g fish_greeting

alias c opencode
alias g lazygit
alias v nvim
alias s stowdots
alias ls "eza -l -F never --color always --icons always -s name --group-directories-first --show-symlinks -h -o"
alias lsa "ls -a"
alias lt "ls -T"
alias lta "lt -a"

fzf --fish | source

bind \cd fzf_cd
