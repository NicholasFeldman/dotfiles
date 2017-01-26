# dotfiles
My dotfiles for Arch Linux

# Setup
WM: i3-gaps  
Bar: Polybar  
Terminal: Termite  
Shell: Bash 
Launcher: dmenu  
Compositor: Compton

# Scripts
Within the scripts directory are a number of scripts.
If used, .bashrc will add the folder to the path, allowing them to be used like normal commands.

# Using
The easiest way to install these dotfiles is by using GNU Stow.

1. Clone this repository
  - `git clone https://github.com/AngrySoundTech/dotfiles`
2. Change directory to the newly cloned repo
  - `cd dotfiles`
3. Install the dotfiles you want using `stow`
  - `stow i3`, `stow polybar`, etc.
4. To uninstall, use `stow -D`
  - `stow -D i3`, `stow -D polybar`, etc.
