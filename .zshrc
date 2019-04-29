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
alias sall="subliminal download -l en *"
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
alias conxres="vim ~/.Xresources"
alias conzsh="vim ~/.zshrc"
alias conblock="vim ~/.config/i3/i3blocks.conf"
alias conman="vim /DriveE/Projects/Git/notes/ManjFoo.sh"
alias concom="vim ~/.config/compton.conf"
alias conrif="sudo vim /usr/lib/python3.7/site-packages/ranger/config/rifle.conf"
alias conpac="sudo vim /etc/pacman.conf"
alias r="ranger"
alias t="vim /DriveE/Projects/Git/notes/ToDo"
alias m="vim /DriveE/Projects/Git/notes/Music"
#Processing java Cli--->Foldername and filename should be same. Filename extension(.pde)
#Created a executable in script folder
# alias pj="processing-java --sketch=`pwd` --run"
alias yt="mpsyt"
alias ym="youtube-dl-mp3"
alias gom="git push origin master"
alias nx="nvidia-xrun"
alias logo="neofetch" #screenfetch
alias va="vim -p *"

#Ranger alias
alias gib='/usr/lib/i3blocks/'
alias gbb='/DriveE/Projects/Git/'
alias gbi='/DriveE/Projects/Git/i3wm'
alias gbn='/DriveE/Projects/Git/notes'
alias gP='/DriveE/Projects'
alias gE='/DriveE/Backup/Program Files'
alias gD='/DriveE/Backup/Downloads'
alias gO='/DriveE/Projects/RSA_algorithm'
alias gN='/DriveE/Projects/Notes/SemVII'
alias gM='/DriveE/Movies'
alias gH='/DriveE/Xampp/htdocs/'
alias gw='/DriveE/Pictures/Wallpapers'
alias gv='/DriveE/Videos'
alias gs='~/Documents/Script'
alias gr='/run/media/lanaya'
alias gp='/DriveE/Pictures'
alias ge='/DriveE'
alias gd='/home/lanaya/Documents'
alias gc='~/.config'
alias gn='/DriveE/Projects/Notes/'
alias gm='/DriveE/Music'
alias gk='/DriveKhelkud'
alias gh='~'
#end

export WINEDEBUG=fps
~/Documents/Script/checkMouse.sh
~/Documents/Script/i3block_refresh.sh
 
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

# Vi mode
# bindkey -v

