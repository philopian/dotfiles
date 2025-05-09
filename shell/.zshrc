# Add deno completions to search path
if [[ ":$FPATH:" != *":~/completions:"* ]]; then export FPATH="~/completions:$FPATH"; fi
# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases
if [[ -a ~/.zsh_aliases ]]; then source ~/.zsh_aliases; fi
if [[ -a ~/.zsh_functions ]]; then source ~/.zsh_functions; fi
if [[ -a ~/.zsh_work_aliases ]]; then source ~/.zsh_work_aliases; fi

# vscode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export EDITOR='code'

# Golang
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

[[ -s "~/.gvm/scripts/gvm" ]] && source "~/.gvm/scripts/gvm"
[[ -s "~/.gvm/scripts/gvm" ]] && source "~/.gvm/scripts/gvm"export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH=$PATH:$HOME/.terraform.versions
. "~/.deno/env"

# Node via NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$NVM_DIR/versions/node/$(nvm version)/bin:$PATH" # Ensure Homebrew-installed Node is ignored
export PATH="$NVM_DIR/versions/node/$(nvm version)/bin:$PATH"

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
