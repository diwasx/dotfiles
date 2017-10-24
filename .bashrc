#
# ~/.bashrc
#

[[ $- != *i* ]] && return

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
(wal -r &)
alias p="ping sgp-1.valve.net"
#alias op="vblank_mode=0 optirun winefps"
alias dota="optirun '/home/lanaya/.local/share/Steam/steamapps/common/dota 2 beta/game/dota.sh'"
alias nvd="optirun -b none nvidia-settings -c :8"
alias ls="ls --color=auto"
alias ec="$ECLIPSE_HOME/eclimd"
alias con="vim ~/.config/i3/config" 
alias conran="vim ~/.config/ranger/rc.conf"
alias conter="vim ~/.config/terminator/config"
alias conncm="vim ~/.ncmpcpp/bindings"

alias r="ranger"
alias t="vim /home/lanaya/Desktop/ToDo"
