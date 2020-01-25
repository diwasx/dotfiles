#
# ~/.profile
#
#

[[ "$XDG_CURRENT_DESKTOP" == "KDE" ]] || export QT_QPA_PLATFORMTHEME="qt5ct"

[[ -f ~/.extend.profile ]] && . ~/.extend.profile
# Append our default paths
appendpath () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

appendpath "$HOME/.config/composer/vendor/bin"
appendpath "$HOME/Documents/Script"
appendpath "$HOME/.vim/bundle/fzf/bin"
appendpath "$HOME/node_modules/.bin/"
appendpath "$HOME/go/bin/"

unset appendpath

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
[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
   exec startx > /dev/null 2>&1
fi

#Environment variable
# EDITOR=vim
