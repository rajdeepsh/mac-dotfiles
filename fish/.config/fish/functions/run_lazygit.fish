function run_lazygit
    set repo (git rev-parse --show-toplevel 2>/dev/null)
    if not test -z $repo
        lazygit
        commandline -f kill-whole-line
    end
end