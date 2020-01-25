# PATH="$HOME/.node_modules/bin:$PATH"
export PATH=$HOME/bin:$HOME/.config/composer/vendor/bin:$HOME/.vim/bundle/fzf/bin:$HOME/node_modules/.bin/:$HOME/Documents/Script:/usr/local/bin:$HOME/.node_modules/bin:$HOME/.local/bin/:$HOME/go/bin/:$PATH 

export npm_config_prefix=~/.node_modules
export FILEMANAGER="ranger"
export BROWSER="chromium"
export PLAYER="mpv"
# export TZ="Asia/Kathmandu"

#for steam
export DBUS_SESSION_BUS_ADDRESS="$(dbus-daemon --session --print-address --fork)"

#For Fuzzy Finder
export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --follow --glob "!.git/*"'
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

#Google service 
export GOOGLE_APPLICATION_CREDENTIALS="/DriveE/Projects/Git/notes/back/google-project-209d84b8c845.json"

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

# $HOME/Documents/Script/startupBatteryCheck.sh
$HOME/Documents/Script/startupBatteryCheck.sh

# -n:string is not null.
# -z:string is null, that is, has zero length
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    # exec startx > /dev/null 2>&1
    startx_select 1
fi

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 2 ]; then
    startx_select 2
fi
