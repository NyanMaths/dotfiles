# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nyanmaths/.zshrc'

export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

autoload -Uz compinit
compinit

ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="awesomepanda"


plugins=(git)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
