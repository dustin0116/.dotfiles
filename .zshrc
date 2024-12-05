source $HOME/.aliases
export PATH=/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export EDITOR=nvim
export VISUAL="$EDITOR"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# Keybinds
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey '\e[Z' reverse-menu-complete
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
# End of lines added by compinstall

# Themes
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
source $HOME/.dotfiles/.pure.zsh
prompt pure

# Autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
export FZF_DEFAULT_OPTS_FILE=$HOME/.dotfiles/fzf/.fzfrc

# Syntax Highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
