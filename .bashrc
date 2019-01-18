#
# ~/.bashrc
#

[[ $- != *i* ]] && return

source prompt.sh

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0

#c-[ to copy current command and press again to paste in new
bind '"\C-[": "\C-e\C-u xsel <<"EOF"\n\C-y\nEOF\n\C-y"'

# For pywal
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

alias p="ping sgp-1.valve.net"
alias f="fzf"
alias op="vblank_mode=0 optirun /home/lanaya/Documents/Script/winefps"
alias nvd="optirun -b none nvidia-settings -c :8"
alias ls="ls --color=auto"
alias grep='grep --color=auto'
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
#set vim mode
#set -o vi

alias ec="/usr/lib/eclipse/plugins/org.eclim_2.7.1/bin/eclimd"
alias con="vim ~/.config/i3/config" 
alias conran="vim ~/.config/ranger/rc.conf"
alias conter="vim ~/.config/terminator/config"
alias conncm="vim ~/.ncmpcpp/bindings"
alias conx="vim ~/.Xresources"
alias conblock="vim ~/.config/i3/i3blocks.conf"


alias r="ranger"
alias t="vim /home/lanaya/Desktop/ToDo"
alias yt="mpsyt"
alias ym="youtube-dl-mp3"
alias logo="neofetch" #screenfetch

#export WINEDEBUG=fps
~/Documents/Script/checkMouse.sh
 
#For CTRL+S disable that freeze termial 
stty -ixon

#For Fuzzy Finder
export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --follow --glob "!.git/*"'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

