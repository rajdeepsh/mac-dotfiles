# Shows everyting (hidden, symlinks, those listed in .gitignore)
function run_eza
  echo ""
  eza --color=always --icons=always --all --show-symlinks --group-directories-first --classify=never --grid --sort=name
  commandline -f kill-whole-line repaint
end