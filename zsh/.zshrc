# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vetle/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Alias city
alias src="source ~/.zshrc"
alias nv="nvim"
alias c="clear"
alias h="cd $HOME"
alias ..="cd .."

# Compile and run 
runc() {
	gcc -Wall $1.c -o $1.out
	./$1.out ${@: 2}
}

# Suffix aliases
alias -s {md,js,json,html}=code

## LSD-stuff
alias ls='lsd'
alias l='ls -l'
alias la='ls -A'
alias lla='ls -lA'
alias lt='ls --tree'

# Autosuggestions
source ~/zsh-autosuggestions/zsh-autosuggestions.zsh

#thefuck
export PATH="$HOME/.local/bin:$PATH"
eval $(thefuck --alias)

#ranger
alias rng=". ranger"
