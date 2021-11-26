# reatach to existing session by default
alias tmux="tmux -2 attach"

# reboot and poweroff
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"

# use nvim instead of vim
alias vim=nvim

# enable ls colors
alias ls="ls --color=auto"
alias ll="ls -lah"

# enable color grep
alias grep="grep --color=auto"

# enable colordiff
alias diff=colordiff

# http serve this directory
alias serve="python3 -m http.server"

# date formater
alias DATE='date +"%Y-%m-%d"'
alias NOW='date +"%Y-%m-%d-%H%M%S"'

# set compatible TERM before ssh
alias ssh='TERM=xterm-color ssh'