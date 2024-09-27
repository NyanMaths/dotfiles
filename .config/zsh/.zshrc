autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

ZSH_CACHE_DIR=$XDG_CACHE_HOME/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

export PATH=$HOME/.local/bin:/usr/local/bin:$PATH


HISTFILE=$XDG_STATE_HOME/zsh/history
HISTSIZE=100000
SAVEHIST=100000

ZSH_CUSTOM=$XDG_DATA_HOME/zsh
ZSH=$XDG_DATA_HOME/zsh/oh-my-zsh

export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

plugins=(git zsh-autosuggestions)

ZSH_THEME="awesomepanda"


bindkey -e

source $ZSH/oh-my-zsh.sh


alias micro="nvim"

