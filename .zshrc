source $ANTIGEN

antigen apply

autoload -Uz compinit promptinit
compinit -d $ANTIGEN_COMPDUMP
promptinit
