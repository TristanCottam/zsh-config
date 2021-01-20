source $ANTIGEN

antigen bundle clvv/fasd

antigen apply

eval "$($ANTIGEN_BUNDLES/clvv/fasd/fasd --init auto)"

autoload -Uz compinit promptinit
compinit -d $ANTIGEN_COMPDUMP
promptinit

bindkey -v
