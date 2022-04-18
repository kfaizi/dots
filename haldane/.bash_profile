# for login shells
# update $PATH
export PATH="${PATH}:/home/kian/miniconda3/bin:/home/kian/.local/share/gem/ruby/3.0.0/bin"
export XDG_CONFIG_HOME="/home/kian"

# source stuff from .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
