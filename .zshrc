source $HOME/.aliases

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/dustinhsiang/.zshrc'

# Keybinds
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey '\e[Z' reverse-menu-complete

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
# End of lines added by compinstall
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"
