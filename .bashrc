#####################################################
# 				SHORTCUTS 					   #
#####################################################

alias po='cd ; cd Dropbox\/Códigos\/PO\/'
alias so='cd ; cd Dropbox\/Códigos\/SO\/Parte\ 5\/'
alias wp='cd ; cd Pictures\/Wallpapers\/'
alias dw='cd ; cd Downloads\/'

######################################################
#				ALIAS 						      #
######################################################

alias ls="ls -a --color=auto"
alias updt="yaourt -Syua --color always"
alias inst="sudo pacman -S --color always"
alias rmve="sudo pacman -R --color always"

######################################################
#				SCRIPTS 					      #
######################################################

alias colors='cd ; ./scripts/colors.sh'
alias spaceinvaders='cd ; ./scripts/spaceinvaders.sh'
alias pipes='cd ; ./scripts/pipes.sh'
alias line='cd ; ./scripts/line.sh'
alias fetch='cd ; ./scripts/fetch.sh'

######################################################
#				PROMPT 					      #
######################################################

PS1="\u : \h [\w]\n> \[$(tput sgr0)\] "

######################################################
#				MISC					                    #
######################################################

# completion
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# auto-complete for pacman when using sudo:
complete -cf sudo

# Add bin to path
PATH=$PATH:~/bin

function extr()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

trap echo DEBUG
