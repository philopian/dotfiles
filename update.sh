#!/bin/zsh

export $(grep -v '^#' ./configs/.colors | xargs)


printf "\n${YELLOW}==============================================================================
UPDATING Homeebrew & shell scripts
==============================================================================${NORMAL}\n"


zsh ./scripts/vscode.sh
zsh ./scripts/brew.sh
zsh ./scripts/shell.sh

source ~/.zshrc