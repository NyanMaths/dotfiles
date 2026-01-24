autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

ZSH_CACHE_DIR=$XDG_CACHE_HOME/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

export PATH=$HOME/.local/bin:/usr/local/bin:$PATH


HISTFILE=$XDG_STATE_HOME/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

ZSH_CUSTOM=$XDG_DATA_HOME/zsh
ZSH=$XDG_DATA_HOME/zsh/oh-my-zsh

export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

plugins=(git zsh-autosuggestions)

ZSH_THEME="awesomepanda"


bindkey -e

source $ZSH/oh-my-zsh.sh

alias peg=ffmpeg


# "get the f..k out of my home directory" section

alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
alias adb='HOME="$XDG_DATA_HOME"/android adb'
alias mvn=mvn -gs $XDG_CONFIG_HOME/maven/settings.xml
alias sbt=sbt -ivy $XDG_DATA_HOME/ivy2 -sbt-dir $XDG_DATA_HOME/sbt
alias yay=paru



# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/nyanmaths/.local/share/opam/opam-init/init.zsh' ]] || source '/home/nyanmaths/.local/share/opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
