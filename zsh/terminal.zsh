autoload -Uz add-zsh-hookfunction xterm_title_precmd () {
  print -Pn -- '\\e\]2;%n@%m %\~\\a'
  \[\[ "$TERM" == 'screen'\* \]\] && print -Pn -- '\\e\_\\005{g}%n\\005{-}@\\005{m}%m\\005{-} \\005{B}%\~\\005{-}\\e\\\\'
}
function xterm_title_preexec () {
  print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
  \[\[ "$TERM" == 'screen'\* \]\] && { print -Pn -- '\\e\_\\005{g}%n\\005{-}@\\005{m}%m\\005{-} \\005{B}%\~\\005{-} %# ' && print -n -- "${(q)1}\\e\\\\"; }
}

if [[ "$TERM" == (alacritty*|gnome*|konsole*|putty*|rxvt*|screen*|tmux*|xterm*) ]]; then
  add-zsh-hook -Uz precmd xterm\_title\_precmd
  add-zsh-hook -Uz preexec xterm\_title\_preexec
fi