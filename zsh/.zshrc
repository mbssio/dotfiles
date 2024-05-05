# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Plugins
plugins=(git node npm github 1password autojump macos zsh-syntax-highlighting zsh-autosuggestions web-search tmux tmuxinator zsh-ask)

# Autostart Tmux
# ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

# zsh-ask configuration
export ZSH_ASK_API_KEY=$(cat ~/.api_keys/chatgpt)

# Aliases
alias ls="exa --long"
alias j="autojump"
alias 1p="opswd"
alias am="$HOME/.dotfiles/scripts/am-cli-player/am.sh"
alias en_de="java -jar $HOME/.dotfiles/scripts/dictcc/dictcc.jar en de"
alias de_en="java -jar $HOME/.dotfiles/scripts/dictcc/dictcc.jar de en"
export NVM_DIR="$HOME/.nvm"

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load Angular CLI autocompletion.
source <(ng completion script)

# Load Starship
eval "$(starship init zsh)"
