PROMPT='%F{green}%n@%m %F{blue}%1~%f %# '
export EDITOR="nvim"
export VISUAL="nvim"

eval "$(starship init zsh)"

export PATH="$PATH:/home/arnoziek/.local/bin"

autoload -Uz compinit
compinit

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Your updated 3D fetch alias
echo "\n\n"
alias fetch="command fetch | alacritty msg config font.size=13 && command fetch | grep -Ev 'Wi-Fi|Virtual|Local|Packages|Display'"
fetch


alacritty msg config font.size=13
alias kali='podman exec -it -u rn0zyk -w /home/rn0zyk kali zsh'
alias kali='podman exec -it -u rn0zyk -w /home/rn0zyk kali zsh'
alias ctf='podman exec -it -u rn0zyk ctf /bin/bash -c "cd ~; exec bash"'


## FOR NIRI
# Quickshell
alias qson='quickshell >/tmp/quickshell.log 2>&1 &'
alias qsoff='pkill quickshell'
alias qsrestart='pkill quickshell; sleep 0.3; quickshell >/tmp/quickshell.log 2>&1 &'
alias qslog='tail -f /tmp/quickshell.log'
alias qscfg='nano ~/.config/quickshell/shell.qml'

# Quickshell theme
alias qstheme='~/.config/quickshell/scripts/qs-theme.sh'
alias qscyan='~/.config/quickshell/scripts/qs-theme.sh cyan'
alias qsgaming='~/.config/quickshell/scripts/qs-theme.sh gaming'
alias qstoggle='~/.config/quickshell/scripts/qs-theme.sh toggle'
