function run_nvim
    if test -e uv.lock
        uv run nvim
    else
        nvim
    end
    commandline -f kill-whole-line
end