# enable pyenv
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"

# enable pyenvvirtualenv
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# add to path
PATH="$PATH:$HOME/.phpenv/bin"