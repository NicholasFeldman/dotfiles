# Path to your oh-my-zsh installation.
export ZSH="/usr/share/oh-my-zsh"

# Enable oh-my-zsh plugins if we have it installed
if [ -d "$ZSH" ]; then
  # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
  ZSH_THEME="robbyrussell"


  plugins=(
    dnf 
    git
  )

  source $ZSH/oh-my-zsh.sh
fi

# Enable starship if we have it installed
if command -v starship &> /dev/null; then
  eval "$(starship init zsh)"
fi
