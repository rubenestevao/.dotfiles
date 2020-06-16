[core]
  autocrlf = input
  whitespace = fix,space-before-tab,tab-in-indent,trailing-space
  #excludesfile = ~/.gitignore_global
[apply]
  whitespace = fix
[alias]
  br = branch
  branches = branch -a
  brs = branch -a
  ci = commit
  co = checkout
  df = diff
  g = grep -I
  lg = log -p
  pp = !"echo 'Pull'; git pull; echo 'Push'; git push"
  rb = rbranch
  rv = review
  s = status
  unstage = reset HEAD --
  # View abbreviated SHA, description, and history graph of the latest 20 commits
  l = log --pretty=oneline -n 20 --graph --abbrev-commit
  # Amend the currently staged files to the latest commit
  amend = commit --amend --reuse-message=HEAD
  undo = reset HEAD~
[color]
  ui = auto
[color "branch"]
  current = yellow reverse
  local = yellow
  remote = green
[color "diff"]
  meta = yellow bold
  frag = magenta bold
  old = red bold
  new = green bold
[color "status"]
  added = yellow
  changed = green
  untracked = cyan
[merge]
  log = true
[rerere]
  enabled = 1
[push]
  default = simple