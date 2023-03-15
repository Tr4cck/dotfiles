export FZF_DEFAULT_OPTS="--height 50% --layout reverse --info inline \
 --preview '(bat --color=always {} || cat {}) 2> /dev/null | head -100' \
 --bind 'ctrl-/:change-preview-window(50%|hidden|)'"
