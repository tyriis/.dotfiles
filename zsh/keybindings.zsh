key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[ShiftTab]="${terminfo[kcbt]}"


# setup key accordingly
[[ -n "$key[Home]" ]] && bindkey - "$key[Home]" beginning-of-line
[[ -n "$key[End]" ]] && bindkey - "$key[End]" end-of-line
[[ -n "$key[Insert]" ]] && bindkey - "$key[Insert]" overwrite-mode
[[ -n "$key[Backspace]" ]] && bindkey - "$key[Backspace]" backward-delete-char
[[ -n "$key[Delete]" ]] && bindkey - "$key[Delete]" delete-char
[[ -n "$key[Up]" ]] && bindkey - "$key[Up]" up-line-or-history
[[ -n "$key[Down]" ]] && bindkey - "$key[Down]" down-line-or-history
[[ -n "$key[Left]" ]] && bindkey - "$key[Left]" backward-char
[[ -n "$key[Right]" ]] && bindkey - "$key[Right]" forward-char

#[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
#[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

# overwrite keybinding for xps13
# bindkey  "^[[1~"   beginning-of-line
# bindkey  "^[[4~"   end-of-line
# bindkey  "^[[3~"  delete-char

# overwrite keybindings for red
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char