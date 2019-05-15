#
#| |__   __ _ ___| |__  _ __ ___ 
#| '_ \ / _` / __| '_ \| '__/ __|
#| |_) | (_| \__ \ | | | | | (__ 
#|_.__/ \__,_|___/_| |_|_|  \___|
#                                
# ~/.bashrc
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
# bind '"\C-[": "\C-e\C-u xsel <<"EOF"\n\C-y\nEOF\n\C-y"'

# For pywal
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

alias p="ping sgp-1.valve.net"
alias f="fzf"
alias op="vblank_mode=0 optirun /home/lanaya/Documents/Script/winefps"
alias nvd="optirun -b none nvidia-settings -c :8"
alias ls="ls --color=auto"
alias grep='grep --color=auto'
#Processing java Cli--->Foldername and filename should be same. Filename extension(.pde)

# alias pj="processing-java --sketch=`pwd` --run"


#Color man pages
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

if [ -f /usr/lib/bash-git-prompt/gitprompt.sh ]; then
   # To only show the git prompt in or under a repository directory
   GIT_PROMPT_ONLY_IN_REPO=1
   # To use upstream's default theme
   # GIT_PROMPT_THEME=Default
   # To use upstream's default theme, modified by arch maintainer
   GIT_PROMPT_THEME=Single_line_Solarized_Lamda

   # GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status
   # GIT_PROMPT_IGNORE_SUBMODULES=1 # uncomment to avoid searching for changed files in submodules
   # GIT_PROMPT_WITH_VIRTUAL_ENV=0 # uncomment to avoid setting virtual environment infos for node/python/conda environments

   GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
   # GIT_PROMPT_SHOW_UNTRACKED_FILES=normal # can be no, normal or all; determines counting of untracked files

   # GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=0 # uncomment to avoid printing the number of changed files

   # GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

   # GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
   # GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

   # as last entry source the gitprompt script
   # GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
   # GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
   # GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
   source /usr/lib/bash-git-prompt/gitprompt.sh
fi

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
alias t="vim /DriveE/Projects/Git/notes/ToDo"
alias m="vim /DriveE/Projects/Git/notes/Music"
alias yt="mpsyt"
alias ym="youtube-dl-mp3"
alias gom="git push origin master"
alias logo="neofetch" #screenfetch

export WINEDEBUG=fps
~/Documents/Script/checkMouse.sh
 
#For CTRL+S disable that freeze termial 
stty -ixon

#For Fuzzy Finder
export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --follow --glob "!.git/*"'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#for steam
export DBUS_SESSION_BUS_ADDRESS="$(dbus-daemon --session --print-address --fork)"

# export NID=0

EDITOR=vim
