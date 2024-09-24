# aliases
alias ls='ls -Fah --color=auto'
alias obsidian='obsidian --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias sshx='TERM=xterm-256color ssh'
alias gn='sudo systemctl suspend'

# functions

# terminal prompt customization
PS1='[\u@\h \w]\$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kian/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kian/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kian/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kian/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

