alias c='clear'
alias sudo='sudo -E'
alias lg='lazygit'
alias i='ipython'
alias vim='nvim'
alias grep='grep --color -i'
alias l='ls -alh'
alias diary='vim $(date +"%Y-%m-%d").md'

alias syscall32='bat /usr/include/asm/unistd_32.h'
alias syscall64='bat /usr/include/asm/unistd_64.h'
alias ctype='bat /usr/include/ctype.h'
alias noaslr='echo 0 | sudo tee /proc/sys/kernel/randomize_va_space'
alias cppvscode="cp -r $HOME/Templates/Vscode-Cpp ./ && mv Vscode-Cpp .vscode"
alias urlvscode="printf '\e]8;;https://code.visualstudio.com\e\\VS Code\e]8;;\e\\'"

# virtual camera
alias vcam='sudo modprobe --remove v4l2loopback && sudo modprobe v4l2loopback devices=2'
