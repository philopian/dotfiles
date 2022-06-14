#!/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)


printf "\n${WHITE}==============================================================================
SETTING UP YOUR COMPUTER!
==============================================================================${NORMAL}\n"

# Run scripts
zsh ./scripts/xcode-clt.sh
zsh ./scripts/brew.sh
zsh ./scripts/shell.sh
zsh ./scripts/nodejs.sh
zsh ./scripts/vscode-settings.sh
zsh ./scripts/vscode.sh
zsh ./scripts/golang.sh
zsh ./scripts/open-dl-links.sh

printf "\n${BLUE}All DONE!${NORMAL}\n"