[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -d ~/scripts ]; then
  PATH=$PATH:~/scripts
fi

export GPG_TTY=$(tty)
