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

#coursier
export PATH="$PATH:/home/vetle/.local/share/coursier/bin"

#denoexport 
DENO_INSTALL="/home/vetle/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#ranger
alias rng=". ranger"

# View images with icat
alias icat="kitty +kitten icat"

# Open named kitty session
ks() {
	kitty --detach --session ~/Programming/kittyseshs/$1
	exit
}

# Maven
M2_HOME='/opt/apache-maven-3.9.0'
PATH="$M2_HOME/bin:$PATH"
export PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/vetle/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/vetle/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/vetle/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/vetle/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# pnpm
export PNPM_HOME="/home/vetle/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Flutter
export PATH="$PATH:/home/vetle/android-studio/bin"

source /home/vetle/Programming/carrot-stats/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f "/home/vetle/.ghcup/env" ] && source "/home/vetle/.ghcup/env" # ghcup-env
export PATH="/home/vetle/.ghcup/bin:$PATH"
