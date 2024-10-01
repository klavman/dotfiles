#### General ####

if [[ -d "$HOME/.local/bin/" ]]; then
	export PATH="$PATH:$HOME/.local/bin/"
fi

if [[ -d "$HOME/bin/" ]]; then
	export PATH="$PATH:$HOME/bin/"
fi

#### PLUGINS ####

# zsh prompt
# ZSH_GIT_PROMPT_SHOW_STASH=1
# source $HOME/.zsh/prompt.zsh

# Go path
# export GOPATH=$HOME/workspace/go
# export PATH="$GOPATH/bin:$PATH"

# Symfony
# export PATH="$HOME/.symfony/bin:$PATH"

# venv
export ENV_DIR="$HOME/.local/share/venvs"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH=/snap/bin:$PATH
# export PATH=$HOME/flutter/bin:$PATH
