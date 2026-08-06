function stowdots
    set -l starting_dir (pwd)
    if cd ~/Repos/mac-dotfiles
        stow --target="$HOME" --adopt --no-folding */
        and git restore .
        cd $starting_dir
    end
end
