# get the f.. out of my home folder moment

alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
alias adb='HOME="$XDG_DATA_HOME"/android adb'
alias mvn="mvn -gs $XDG_CONFIG_HOME/maven/settings.xml"
alias sbt="sbt -ivy $XDG_DATA_HOME/ivy2 -sbt-dir $XDG_DATA_HOME/sbt"

