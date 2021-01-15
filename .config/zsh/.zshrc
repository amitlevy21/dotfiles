# Path to your oh-my-zsh installation.
export ZSH="/usr/share/oh-my-zsh"

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf docker docker-compose)

export ZSH_CACHE_DIR=$HOME/.cache
source $ZSH/oh-my-zsh.sh

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
[ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

export GPG_TTY=$(tty)

SSH_ENV="$HOME/.ssh/environment"
function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add -t 21600 ;
}

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
    start_agent;
}
else
    start_agent;
fi

eval "$(starship init zsh)"

