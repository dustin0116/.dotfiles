#TMUX
if [ "$TMUX" = "" ]; then tmux; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH=/usr/local/bin:$PATH

# Tab menu.
#autoload -Uz compinit
#compinit
#zstyle ':completion:*' menu select
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
autoload -Uz compinit
compinit
zstyle ':completion:*' menu yes select

# ZSH THEME.
autoload -U promptinit; promptinit
prompt spaceship
fpath=($fpath "/home/dustinhsiang/.zfunctions")

# Welcome Screen.
curl -s "https://sv443.net/jokeapi/v2/joke/Programming?blacklistFlags=religious,racist,sexist&type=single" |\
 jq --raw-output '.joke' | cowsay -f elephant
#cowsay -f elephant Welcome, Dustin Hsiang!

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
source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# ZSH Autosuggestion
source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=0"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath=($fpath "/home/dustinhsiang/.zfunctions")
fpath=($fpath "/home/dustinhsiang/.zfunctions")
