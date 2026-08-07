function fzf_cd
    set -l selected (command fzf \
        --walker dir,follow,hidden \
        --walker-root $HOME \
        --walker-skip .git,node_modules,Library,Movies,Music,Pictures,Public)

    if test -n "$selected"
        cd "$selected"
    end
end
