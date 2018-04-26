# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ $(uname) == "Linux" ]; then
  alias ls='ls --color=auto'
elif [ $(uname) == "Darwin" ]; then
  alias ls='ls -G'
fi

if [ -f "/etc/arch-release" ]; then
  alias update='sudo pacman -Syu'
fi

alias git-root='cd `git rev-parse --show-toplevel`'

# Requires https://github.com/b-ryan/powerline-shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
