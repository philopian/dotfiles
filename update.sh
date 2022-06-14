#!/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)


printf "\n${YELLOW}==============================================================================
UPDATING Homebrew & shell scripts
==============================================================================${NORMAL}\n"


zsh ./scripts/vscode.sh
zsh ./scripts/brew.sh
zsh ./scripts/macos.sh
source ~/.zshrc