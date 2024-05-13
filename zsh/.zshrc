# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Plugins
plugins=(git node npm github 1password autojump macos zsh-syntax-highlighting zsh-autosuggestions web-search tmux tmuxinator zsh-ask)

# Autostart Tmux
# ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

# zsh-ask configuration
export ZSH_ASK_API_KEY=$(cat ~/.api_keys/chatgpt)

# Deepl API key
export DEEPL_API_KEY=$(cat ~/.api_keys/deepl)

# pfetch configuration
export PF_ASCII="Catppuccin"
export PF_INFO="ascii title os uptime pkgs memory"
export PF_COLOR=1
export PF_COL1=9
export PF_COL2=9
export PF_COL3=5
export 'USER=mb' pfetch
export 'HOSTNAME=mb' pfetch

# Aliases
alias ls="exa --long"
alias j="autojump"
alias 1p="opswd"
alias vim="nvim"
alias am="$HOME/.dotfiles/scripts/am-cli-player/am.sh"
alias pfetch="$HOME/.dotfiles/scripts/pfetch/pfetch.sh"
alias en_de="java -jar $HOME/.dotfiles/scripts/dictcc/dictcc.jar en de"
alias de_en="java -jar $HOME/.dotfiles/scripts/dictcc/dictcc.jar de en"
alias "rsyabai"="yabai --stop-service && yabai --start-service"
export NVM_DIR="$HOME/.nvm"

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load Angular CLI autocompletion.
source <(ng completion script)

# Load Starship
eval "$(starship init zsh)"
