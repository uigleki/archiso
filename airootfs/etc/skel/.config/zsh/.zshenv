# 语言
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
export LC_CTYPE=en_US.UTF-8

# 输入法
if [ -n "$DISPLAY" ]; then
    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx
    export SDL_IM_MODULE=fcitx
fi

# 编辑器
export COLORTERM=truecolor
export EDITOR=helix

# 模糊搜索
export FZF_DEFAULT_COMMAND='fd --type=file'
export FZF_DEFAULT_OPTS='--preview="bat -n --color=always {}"'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_CTRL_R_OPTS='--preview="echo {}" --preview-window=hidden'
export FZF_ALT_C_COMMAND='fd --type=directory'
export FZF_ALT_C_OPTS='--preview="exa -TF {}"'
