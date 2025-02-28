# Setup fzf
# ---------
if [[ ! "$PATH" == */home/track/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/track/.fzf/bin"
fi

source <(fzf --zsh)

export FZF_DEFAULT_OPTS="--height=50% --layout=reverse --info=inline --style=minimal \
 --preview '(bat --color=always {} || cat {}) 2> /dev/null | head -100' \
 --bind 'ctrl-/:change-preview-window(50%|hidden|)'"

# Print tree structure in the preview window
export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'tree -C {}'"
