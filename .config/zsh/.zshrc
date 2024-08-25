HISTFILE=$XDG_STATE_HOME/zsh/history
HISTSIZE=100000
SAVEHIST=100000
bindkey -e

export PATH=$HOME/.local/bin:/usr/local/bin:$HOME/.ghcup/bin:$PATH

autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="awesomepanda"


plugins=(git)

ZSH_CACHE_DIR=$XDG_CACHE_HOME/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
