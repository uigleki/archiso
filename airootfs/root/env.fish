#!/bin/fish

# 移除欢迎语
set -U fish_greeting ""

# git 控制
abbr -Ua g   'lazygit'
abbr -Ua ga  'git add'
abbr -Ua gaa 'git add --all'
abbr -Ua gb  'git branch'
abbr -Ua gba 'git branch -a'
abbr -Ua gc  'git checkout'
abbr -Ua gcl 'git clone --depth=1'
abbr -Ua gd  'git diff'
abbr -Ua gl  'git pull'
abbr -Ua gm  'git commit -am'
abbr -Ua gmm 'git commit -m'
abbr -Ua gp  'git push'
abbr -Ua grh 'git reset --hard'
abbr -Ua grs 'git reset --soft'
abbr -Ua gs  'git status'

# 其他
abbr -Ua 1   'cd -'
abbr -Ua f   "helix"
abbr -Ua fu  'fusermount -u'
abbr -Ua k   'btm'
abbr -Ua l   'exa -laF'
abbr -Ua lt  'exa -TF'
abbr -Ua p   'podman'
abbr -Ua r   'rsync'
abbr -Ua ra  'ranger'
abbr -Ua s   'sudo'
abbr -Ua sp  'sudo pacman'
abbr -Ua sf  'sudo -e'
abbr -Ua t   'tmux'
abbr -Ua ta  'tmux a'
abbr -Ua up  'sudo pacman -Syu --noconfirm'
abbr -Ua v   'nvim'
