# set default editors
export EDITOR="nvim"
export VISUAL="nvim"

# set flags for package installations
export CFLAGS="-Os"
export CXXFLAGS="$CFLAGS"

# set compilation flags
export ARCHFLAGS="-arch x86_64"

# set xterm
# export TERM="xterm-256color"
export TERM="xterm-color"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# https://wiki.archlinux.org/index.php/Java_Runtime_Environment_Fonts
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'

# XDG https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_DATA_HOME=$HOME/.local/share
[[ ! -d $XDG_DATA_HOME ]] && command mkdir -p "$XDG_DATA_HOME"

export XDG_CONFIG_HOME=$HOME/.config
[[ ! -d $XDG_CONFIG_HOME ]] && command mkdir -p "$XDG_CONFIG_HOME"
# export XDG_DATA_DIRS=
# export XDG_CONFIG_DIRS=
export XDG_CACHE_HOME=$HOME/.cache
[[ ! -d $XDG_CACHE_HOME ]] && command mkdir -p "$XDG_CACHE_HOME"
# export XDG_RUNTIME_DIR

ZSH_CACHE_DIR=$XDG_CACHE_HOME/zsh
[[ ! -d $XDG_CACHE_HOME/zsh ]] && mkdir -p "$XDG_CACHE_HOME/zsh"

# make less more productive based on http://serebrov.github.io/html/2014-01-04-git-log-and-less-keep-output.html
# -i - ignore case when searching (but respect case if search term contains uppercase letters)
# -X - do not clear screen on exit
# -F - exit if text is less then one screen long
# -R - was on by default on my system, something related to colors<Paste>
export LESS=-iXFR