# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias update='sudo pacman -Syu'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

ssh_disp() {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
     echo "$USER@$HOSTNAME "
  fi
}

PS1="$(ssh_disp)\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]: "
