# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/fefefo/.zshrc'

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin
# End of lines added by compinstall
alias v="nvim" vim="nvim"
alias ls="lsd"
alias l="lsd -a"
alias c="clear"
alias yay="paru" aur="paru"
alias pacup="sudo pacman -Syu"
alias lolcat="dotacat"

alias icat="kitty +kitten icat --place 32x32@0x0"

export PATH=${PATH}:~/Documents/go/tau

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
