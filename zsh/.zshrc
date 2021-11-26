# Directory options
setopt auto_cd
setopt pushd_to_home

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi


# start XServer if login on tty1
if [[ "$(tty)" == "/dev/tty1" ]]; then
    startx
# else
#   export TERM="xterm-color"
fi

# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search


source $ZDOTDIR/history.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/exports.zsh
source $ZDOTDIR/keybindings.zsh
[[ -f /usr/bin/pyenv ]] && source $ZDOTDIR/pyenv.zsh
source $ZDOTDIR/path.zsh
source $ZDOTDIR/npm.zsh
source $ZDOTDIR/gcloud.zsh
source $ZDOTDIR/completions.zsh
source $ZDOTDIR/prompt.zsh
[[ -f /usr/bin/vault ]] && source $ZDOTDIR/vault.zsh
[[ -f /usr/bin/kubectl ]] && source $ZDOTDIR/kubernetes.zsh

# Load machine-specific configuration if present
[[ -f $HOME/.zsh_profile ]] && source $HOME/.zsh_profile
