export ZSH="$HOME/.oh-my-zsh"
export PATH=/home/bannaa/.local/bin:$PATH
export PATH=/home/bannaa/.cargo/bin:$PATH

export XDG_RUNTIME_DIR="/run/user/$UID"
export DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"

export EDITOR=nvim
export MANPAGER='nvim +Man!'

ZSH_THEME="bureau"

plugins=(
	aliases
)

source $ZSH/oh-my-zsh.sh

# git
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gd="git diff"

alias reflector='sudo reflector --country Romania --latest 7 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias n='nvim'
alias camera="sudo modprobe v4l2loopback && gphoto2 --stdout autofocusdrive=1 --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video2"

alias mo="hyprctl keyword monitor "eDP-1", disable" # turn off laptop display
# Set-up icons for files/folders in terminal
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

#PATH


# Added by ProtonUp-Qt on 03-01-2025 00:58:53
if [ -d "/home/bannaa/stl/prefix" ]; then export PATH="$PATH:/home/bannaa/stl/prefix"; fi

eval "$(zoxide init zsh)"
