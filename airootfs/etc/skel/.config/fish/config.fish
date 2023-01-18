starship init fish | source     # 终端提示符
zoxide init fish | source       # 目录跳转

# git 控制
abbr -a g   'lazygit'
abbr -a ga  'git add'
abbr -a gaa 'git add --all'
abbr -a gb  'git branch'
abbr -a gba 'git branch -a'
abbr -a gc  'git checkout'
abbr -a gcl 'git clone --depth=1'
abbr -a gd  'git diff'
abbr -a gl  'git pull'
abbr -a gm  'git commit -am'
abbr -a gmm 'git commit -m'
abbr -a gp  'git push'
abbr -a grh 'git reset --hard'
abbr -a grs 'git reset --soft'
abbr -a gs  'git status'

# 其他
abbr -a 1   'cd -'
abbr -a f   "helix"
abbr -a fu  'fusermount -u'
abbr -a k   'btm'
abbr -a l   'exa -laF'
abbr -a lt  'exa -TF'
abbr -a p   'podman'
abbr -a r   'rsync'
abbr -a ra  'ranger'
abbr -a s   'sudo'
abbr -a sp  'sudo pacman'
abbr -a sf  'sudo -e'
abbr -a t   'tmux'
abbr -a ta  'tmux a'
abbr -a up  'sudo pacman -Syu --noconfirm'
abbr -a v   'nvim'
