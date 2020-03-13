export PATH="$HOME/.nodenv/bin:$PATH"

# ZSH Theme
fpath=($fpath "/home/dustinhsiang/.zfunctions")
autoload -U promptinit; promptinit
prompt spaceship

# TMUX
if [ "$TMUX" = "" ]; then tmux; fi


# History
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
setopt appendhistory     #Append history to the history file (no overwriting)

# Tab menu
#autoload -Uz compinit
#compinit
#zstyle ':completion:*' menu select
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#autoload -Uz compinit
#compinit
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C
zstyle ':completion:*' menu yes select

# Welcome Screen
curl -s "https://sv443.net/jokeapi/v2/joke/Programming?blacklistFlags=religious,racist,sexist&type=single" |\
	jq --raw-output '.joke' | cowsay -f elephant
#cowsay -f elephant Welcome, Dustin Hsiang!
#neofetch

# Alias
alias ls="ls -N --color"
alias remotevm="ssh dustin-vm -L 2222:localhost:22 'echo Tunnel ready! Press Ctrl + C to end.; cat'"
alias zshconfig='vim ~/.zshrc'
alias vimconfig='vim ~/.vimrc'
alias tmuxconfig='vim ~/.tmux.conf'
alias tmuxreload='tmux source-file ~/.tmux.conf'
alias reload='source ~/.zshrc'

# Others
eval "$(nodenv init -)"

# ZSH Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# ZSH Autosuggestion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=0,bold"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

declare -a NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)

NODE_GLOBALS+=("node")
NODE_GLOBALS+=("nvm")

load_nvm () {
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
}

for cmd in "${NODE_GLOBALS[@]}"; do
    eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
done
