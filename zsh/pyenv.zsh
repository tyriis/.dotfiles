# enable pyenv
export PYENV_ROOT="$HOME/.pyenv"
# add to path
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# enable pyenvvirtualenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv virtualenv-init -)"
