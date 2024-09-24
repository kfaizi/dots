# for login shells
# update $PATH
export PATH="${PATH}:/home/kian/miniconda3/bin:/home/kian/.local/share/gem/ruby/3.0.0/bin:/home/kian/.config/:/home/kian/builds/google-cloud-sdk/pkg/google-cloud-sdk/opt/google-cloud-sdk/:/home/kian/.local/bin/:/home/kian/go/bin/:/home/.dotnet/tools"
export XDG_CONFIG_HOME="/home/kian/.config/"
#export CLOUDSDK_PYTHON=$(which python3)

# python venv stuff
#export WORKON_HOME=$HOME/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3'
# export PROJECT_HOME=$HOME/Devel
#source /usr/bin/virtualenvwrapper_lazy.sh


# define global environment variables (from .profile)

## GTK theming
export GTK_THEME=Catppuccin-blue

## Qt theming
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_STYLE_OVERRIDE=adwaita


# source stuff from .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
