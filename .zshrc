#    ▒███████▒  ██████  ██░ ██  ██▀███   ▄████▄  
#    ▒ ▒ ▒ ▄▀░▒██    ▒ ▓██░ ██▒▓██ ▒ ██▒▒██▀ ▀█  
#    ░ ▒ ▄▀▒░ ░ ▓██▄   ▒██▀▀██░▓██ ░▄█ ▒▒▓█    ▄ 
#      ▄▀▒   ░  ▒   ██▒░▓█ ░██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
#    ▒███████▒▒██████▒▒░▓█▒░██▓░██▓ ▒██▒▒ ▓███▀ ░
#    ░▒▒ ▓░▒░▒▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░ ▒▓ ░▒▓░░ ░▒ ▒  ░
#    ░░▒ ▒ ░ ▒░ ░▒  ░ ░ ▒ ░▒░ ░  ░▒ ░ ▒░  ░  ▒   
#    ░ ░ ░ ░ ░░  ░  ░   ░  ░░ ░  ░░   ░ ░        
#      ░ ░          ░   ░  ░  ░   ░     ░ ░      
#    ░                                  ░        
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/home/lanaya/.config/composer/vendor/bin:/home/lanaya/.vim/bundle/fzf/bin:/home/lanaya/node_modules/.bin/:/home/lanaya/Documents/Script:/usr/local/bin:$PATH
# Stored in .zprofile

# Path to your oh-my-zsh installation.
  export ZSH="/home/lanaya/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="steeef"

#(funky,strug,candy,pygmalion,gnzh)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 # ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    themes
    zsh-syntax-highlighting
    colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias p="ping sgp-1.valve.net"
alias f="fzf"
alias op="vblank_mode=0 optirun /home/lanaya/Documents/Script/winefps"
alias nvd="optirun -b none nvidia-settings -c :8"
alias ls="ls --color=auto"
# alias grep='grep --color=auto'
alias ec="/usr/lib/eclipse/plugins/org.eclim_2.7.1/bin/eclimd"
alias con="vim ~/.config/i3/config" 
alias conran="vim ~/.config/ranger/rc.conf"
alias conter="vim ~/.config/terminator/config"
alias conncm="vim ~/.ncmpcpp/bindings"
alias conx="vim ~/.Xresources"
alias conblock="vim ~/.config/i3/i3blocks.conf"
alias conman="vim ~/Desktop/ManjFoo"
alias concom="vim ~/.config/compton.conf"
alias r="ranger"
alias t="vim /home/lanaya/Desktop/ToDo"
#Processing java Cli--->Foldername and filename should be same. Filename extension(.pde)
alias pj="processing-java --sketch=`pwd` --run"
alias yt="mpsyt"
alias ym="youtube-dl-mp3"
alias nx="nvidia-xrun"
alias logo="neofetch" #screenfetch

#Ranger alias
alias gM='cd /DriveE/Movies'
alias gr='cd /run/media/lanaya'
alias gm='cd /DriveE/Music'
alias gd='cd /home/lanaya/Documents'
alias gw='cd /DriveE/Pictures/Wallpapers'
alias gP='cd /DriveE/Projects'
alias g\[='cd /DriveE/Xampp/htdocs/bakeryNew/bakery'
alias gH='cd /DriveE/Xampp/htdocs/'
alias gh='cd'
alias gi3='cd /DriveE/Projects/Git/i3wm'
alias gp='cd /DriveE/Pictures'
alias gD='cd /DriveE/Backup/Downloads'
alias gE='cd /DriveE/Backup/Program Files'
alias ge='cd /DriveE'
alias gk='cd /DriveKhelkud'
alias gs='cd ~/Documents/Script'
alias gN='cd /DriveE/Projects/Notes/Sem\ VII'
alias gn='cd /DriveE/Projects/Notes/'

export WINEDEBUG=fps
~/Documents/Script/checkMouse.sh
 
#For CTRL+S disable that freeze termial 
stty -ixon

#For Fuzzy Finder
export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --follow --glob "!.git/*"'
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

#for steam
export DBUS_SESSION_BUS_ADDRESS="$(dbus-daemon --session --print-address --fork)"

# export NID=0

EDITOR=vim
