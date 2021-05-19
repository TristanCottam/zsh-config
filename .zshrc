# Enable Powerlevel10k instant prompt. Should stay close to the top of
# ~/.config/zsh/.zshrc.
#
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

source $ANTIGEN

antigen theme romkatv/powerlevel10k

antigen bundle clvv/fasd

antigen apply

eval "$($ANTIGEN_BUNDLES/clvv/fasd/fasd --init zsh-wcomp zsh-wcomp-install)"

autoload -Uz compinit promptinit
compinit -d $ANTIGEN_COMPDUMP
promptinit

DIRSTACKSIZE=10

setopt autocd autopushd pushdignoredups pushdsilent

alias d='dirs -v'
alias 1='cd +1'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'

bindkey -v

alias l='exa'
alias la='exa -labG'

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
