# History options
setopt append_history
setopt hist_verify
setopt share_history
setopt histignorealldups


SHARE_HISTORY=1
HISTFILE=/home/nils/.zsh_history
SAVEHIST=10000
HISTSIZE=99999
HIST_IGNORE_DUPS=1

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# enable reverse search
# https://unix.stackexchange.com/a/30169
bindkey -v
bindkey "^R" history-incremental-pattern-search-backward