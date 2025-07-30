# Only dirs (including hidden).
# Will still look at things specified in .gitignore 
# Does not follow symbolic links and does not show files.
# Skips .git and node_modules
function run_cd
	set pth (fzf --reverse --walker-root $HOME --walker dir,hidden --walker-skip .git,node_modules --border rounded --no-info --no-scrollbar --prompt '  ' --color 'gutter:-1,pointer:#f5e0dc,border:#f5e0dc,query:#f5e0dc,prompt:#f5e0dc,preview-label:#f5e0dc,label:#f5e0dc,current-bg:#f5e0dc,current-fg:#11111b,hl:#f5e0dc:bold,current-hl:#11111b:bold' --preview "eza --color=always --icons=always --all --show-symlinks --group-directories-first --classify=never --grid --sort=name {}" --preview-window noinfo --preview-label " Contents " --border-label " Change Directory ")
  if not test -z $pth
    cd $pth
    commandline -f kill-whole-line repaint
  end
end