# Path to your oh-my-zsh installation.
export ZSH=/home/julien/.oh-my-zsh

#shopt -s
#ZSH_THEME="amuse"
#ZSH_THEME="darkblood"
#ZSH_THEME="risto"
#ZSH_THEME="ys"
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(common-aliases compleat git npm pip python sudo tmux)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='emacs'
 else
   export EDITOR='vim'
 fi



EDITOR="emacs"
export VISUAL="emacs"
export EDITOR="$VISUAL"

# ALIASES
alias zshconfig="emacs ~/.zshrc;. ~/.zshrc"
alias bshconfig="emacs ~/.bashrc;. ~/.bashrc"
alias sshatlas="ssh jeanp012@Atlas.cselabs.umn.edu"
alias cdlin="cd /home/julien/Desktop/Learning_Linux/"
alias ..="cd .."
alias ...="cd ../.."
alias mkdir="mkdir -p"
alias rm="rm -ri"
alias diff="diff --color=auto"
alias cdd="cd ~/Desktop"
alias du="du -kh"
alias df="df -kTh"
alias ls="ls -h --color=auto --group-directories-first"
alias lsa="ls -a"
alias la="ls -alh"
alias pip="sudo pip"
alias e='emacs'
alias egrep="egrep --color=auto"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ssh1='ssh jeanp012@csel-kh1250-05.cselabs.umn.edu'
alias cpfile="xclip -sel c"
alias mouseloc="xdotool getmouselocation --shell"
alias calc="gnome-calculator"
alias i3config="emacs ~/.config/i3/config"
alias mc="mc -b"
alias wadd="wunderline add"
alias n="nano"
alias kids="ls ~/"
alias paclog="cat /var/log/pacman.log"

#FUNCTIONS
function mkcd(){
    mkdir -p "$1"
    cd "$1"
}

function cpcd(){
    cp "$1" "$2"
    mv "$2" "$3"
    cd "$3"
}

function mvcd(){
    mv "$1" "$2"
    cd "$2"
}

function mkcp(){
    mkdir -p "$3"
    cp "$1" "$2"
    mv "$2" "$3"
}

function mkmv(){
    mkdir -p "$2"
    mv "$1" "$2"
}

function mkcpcd(){
    mkdir -p "$3"
    cp "$1" "$2"
    mv "$2" "$3"
    cd "$3"
}

function mkmvcd(){
    mkdir -p "$2"
    mv "$1" "$2"
    cd "$2"
}

function emacsrm(){
	    rm -fr *.*~ 2> /dev/null|| :;
	    rm -fr *.*# 2> /dev/null|| :;
}

function gitpushall(){
	git add -A;
	git commit -m 'Random push...';
	git push origin master;
}

function hs(){
    history | grep "${*}"
}

function pss(){
    ps aux| grep "${*}"
}

eval $(thefuck --alias)

# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

# Use colors for less, man, etc.
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP
alias gs="git status"
alias idown="sudo ip link set wlp3s0 down"
alias iup="sudo ip link set wlp3s0 up"

#HISTORY FILE
export HISTFILE=~/.histfile
export HISTSIZE=100000
export SAVEHIST=100000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
