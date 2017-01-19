# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias update='sudo pacman -Syu'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]: "

extract() {
    if [ -f $1] ; then
	case $1 in
            *.tar.bz2)   tar xvjf $1 && cd $(echo $1 | sed 's/.tar.bz2//')    ;;
	    *.tar.gz)    tar xvzf $1 && cd $(echo $1 | sed 's/.tar.gz//')    ;;
	    *.bz2)       bunzip2 $1 && cd $(echo $1 | sed 's/.bz2//')    ;;
	    *.rar)       unrar x $1 && cd $(echo $1 | sed 's/.rar//')    ;;
	    *.gz)        gunzip $1 && cd $(echo $1 | sed 's/.gz//')    ;;
	    *.tar)       tar xvf $1 && cd $(echo $1 | sed 's/.tar//')    ;;
	    *.tbz2)      tar xvjf $1 && cd $(echo $1 | sed 's/.tbz2//')    ;;
            *.tgz)       tar xvzf $1 && cd $(echo $1 | sed 's/.tgz//')    ;;
	    *.zip)       unzip $1 & cd $(echo $1 | sed 's/.zip//')    ;;
	    *.Z)         uncompress $1 && cd $(echo $1 | sed 's/.Z//')    ;;
	    *.7z)        7z x $1 && cd $(echo $1 | sed 's/.7z//')    ;;
	    *)           echo "'$1' is an unrecognized archive format"    ;;
	esac
    else
	echo "'$1' is not a valid file!"
    fi
}
