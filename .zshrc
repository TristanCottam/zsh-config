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

eval "$($ANTIGEN_BUNDLES/clvv/fasd/fasd --init auto)"

autoload -Uz compinit promptinit
compinit -d $ANTIGEN_COMPDUMP
promptinit

bindkey -v

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
