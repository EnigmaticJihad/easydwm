. ~/.cache/wal/colors.sh
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/zed/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install

autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

################# StarShip ####################

eval "$(starship init zsh)"

################# Nord DirColors ###############
#test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

################################################
################### Aliases ####################

alias c='clear'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias lsa='ls -a'
alias v='nvim'
alias vim='nvim'
alias sv='sudo nvim'
alias pac='sudo pacman -S'
alias pacr='sudo pacman -Rnsc'
alias update='sudo pacman -Suuy'
alias dwmconf='cd && cd ~/.local/src/dwm/ && nvim config.h'
alias src='cd && cd ~/.local/src/ && ls'
alias ro='sudo pacman -Rs $(pacman -Qqtd)'
alias lsg='ls | grep'
alias pacl='pacman -Qe | awk '{print $1}' > packages'
alias dotx='/usr/bin/git --git-dir=/home/zed/dotfiles --work-tree=/home/zed'

################################################

################################################
########### PyWal Color Section ################

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

##################################################

##################################################
##################### Path #######################

export PATH="/home/zed/.local/bin:$PATH"
export PATH="/home/zed/.local/bin/statusbar:$PATH"
export LESS='-R --use-color -Dd+r$Du+b'

##################################################

################### FFF ##########################
export FFF_LS_COLORS=1
export EDITOR="nvim"
export FFF_OPENER="xdg-open"
export FFF_STAT_CMD="stat"

###################### IBus #######################
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

################### Fetch & Decore #################

#neofetch
neofetch --ascii ~/.config/neofetch/ascii-art/astronaut2
