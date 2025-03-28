export ZSH="$HOME/.oh-my-zsh"
export PATH=/home/bannaa/.local/bin:$PATH
export PATH=/home/bannaa/.cargo/bin:$PATH
ZSH_THEME="xiong-chiamiov-plus"

plugins=(
	git

# {% if SYSTEM.hostname == "brent-beterson" %}
	archlinux
# {% if SYSTEM.hostname == "gregoryhouse" %}
	ubuntu
# {% end %}
)

source $ZSH/oh-my-zsh.sh

alias mo='hyprctl dispatch dpms off'
alias reflector='sudo reflector --country Romania --latest 7 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'
alias n='nvim'

export MANPAGER='nvim +Man!'

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
