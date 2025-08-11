# Starship
eval "$(starship init zsh)"

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

## LazyGit
alias lg="lazygit"

# Autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#thefuck
#export PATH="$HOME/.local/bin:$PATH"
#eval $(thefuck --alias)

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

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/vetle/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/vetle/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/vetle/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/vetle/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<


# pnpm
export PNPM_HOME="/home/vetle/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Flutter
export PATH="$PATH:/home/vetle/android-studio/bin"


[ -f "/home/vetle/.ghcup/env" ] && source "/home/vetle/.ghcup/env" # ghcup-env
export PATH="/home/vetle/.ghcup/bin:$PATH"

# CUDA
export CUDA_HOME="/usr/local/cuda-12.6/"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Syntax highligthing
source /home/vetle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
