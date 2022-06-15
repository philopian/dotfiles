#!/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)


printf "\n${WHITE}==============================================================================
SETTING UP YOUR COMPUTER!
==============================================================================${NORMAL}\n"

# Create this file so it doesn't get tracked by git
touch shell/.zsh_work_aliases

# Run scripts
zsh ./scripts/xcode-clt.sh
zsh ./scripts/brew.sh
zsh ./scripts/shell.sh
zsh ./scripts/nodejs.sh
zsh ./scripts/vscode-settings.sh
zsh ./scripts/vscode.sh
zsh ./scripts/golang.sh
zsh ./scripts/open-dl-links.sh
zsh ./scripts/macos.sh
zsh ./scripts/cloud.sh

source ~/.zshrc

printf "\n${BLUE}All DONE!${NORMAL}\n"