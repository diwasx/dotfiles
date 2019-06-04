# PATH="$HOME/.node_modules/bin:$PATH"
export PATH=$HOME/bin:/home/lanaya/.config/composer/vendor/bin:/home/lanaya/.vim/bundle/fzf/bin:/home/lanaya/node_modules/.bin/:/home/lanaya/Documents/Script:/usr/local/bin:$HOME/.node_modules/bin:$HOME/.local/bin/:$PATH 

export npm_config_prefix=~/.node_modules
export FILEMANAGER="ranger"
export BROWSER="chromium"
export PLAYER="mpv"

#for steam
export DBUS_SESSION_BUS_ADDRESS="$(dbus-daemon --session --print-address --fork)"

#For Fuzzy Finder
export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --follow --glob "!.git/*"'
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

if [ -n "$GTK_MODULES" ]
then
    GTK_MODULES="$GTK_MODULES:unity-gtk-module"
else
    GTK_MODULES="unity-gtk-module"
fi

if [ -z "$UBUNTU_MENUPROXY" ]
then
    UBUNTU_MENUPROXY=1
fi

export WINEDEBUG=fps
export XDG_CURRENT_DESKTOP=i3wm
export XDG_SESSION_DESKTOP=i3wm
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx > /dev/null 2>&1
fi
